/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servletsModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kgmt4
 */
public class NetUser {

    public NetUser() {
    }

    public String checkUserJson(String carnet) {

        int check = checkUserBool(carnet);
        String respuesta = "";

        if (check == 0) {
            respuesta = "{ \"resultado\": false,\"mensaje\": \"<p style='text-align:center;'>El usuario no esta registrado.</p>\"}";
        } else if (check > 0) {
            respuesta = "{ \"resultado\": true,\"mensaje\": \"<p style='text-align:center;'>Bienvenido: " + carnet + "!!</p>\"}";
        }

        return respuesta;

    }

    public int checkUserBool(String carnet) {
        try {

            String query = "select count(*) from radcheck where username = '" + carnet + "' and value = '" + carnet + "';";

            JDBC_PostgreSQL conector = new JDBC_PostgreSQL();
            Connection post_con = conector.get_connection_freeradius();
            PreparedStatement pstate = post_con.prepareStatement(query);
            ResultSet rs = pstate.executeQuery();

            while (rs.next()) {
                String valor = rs.getString(1);
                int num = Integer.valueOf(valor);
                return num;
            }

            post_con.close();
            return 0;

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(NetUser.class.getName()).log(Level.SEVERE, null, ex);
            return -1;
        } catch (SQLException ex) {
            Logger.getLogger(NetUser.class.getName()).log(Level.SEVERE, null, ex);
            return -2;
        }
    }

    public String saveNetUser(String carnet, String nombre, String apellido, String fecha, String carrera, String correo) {

        int check = checkUserBool(carnet);
        String respuesta = "";

        if (check == 0) {

            try {
                String query = "INSERT INTO public.radcheck( username, attribute, op, value) VALUES ('" + carnet + "', 'User-Password', '=', '" + carnet + "');";

                JDBC_PostgreSQL conector = new JDBC_PostgreSQL();
                Connection post_con = conector.get_connection_freeradius();
                PreparedStatement pstate = post_con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
                int elementosInsertados = pstate.executeUpdate();

                if (elementosInsertados > 0) {

                    ResultSet rs = pstate.getGeneratedKeys();
                    String resultado_relacional = "false_nada";
                    while (rs.next()) {
                        int id_generado = rs.getInt(1);
                        resultado_relacional = registro_usuario_relacional(String.valueOf(id_generado), carnet, nombre, apellido, fecha, carrera, correo);
                        break;
                    }

                    respuesta = "{\"resultado\": true, \"mensaje\": \"Usuario registrado.\" , \"registro\":\"" + elementosInsertados + " : " + resultado_relacional + "\" }";
                } else {
                    respuesta = "{\"resultado\": false, \"mensaje\": \"Usuario no registrado.\" , \"registro\":\"" + elementosInsertados + "\" }";
                }

                post_con.close();

            } catch (ClassNotFoundException ex) {
                Logger.getLogger(NetUser.class.getName()).log(Level.SEVERE, null, ex);
                respuesta = "{\"resultado\": false, \"mensaje\": \"Error en registro de usuario. Tipo: 2.\" , \"registro\":\"" + check + "\" }";
            } catch (SQLException ex) {
                Logger.getLogger(NetUser.class.getName()).log(Level.SEVERE, null, ex);
                respuesta = "{\"resultado\": false, \"mensaje\": \"Error en registro de usuario. Tipo: 3.\" , \"registro\":\"" + check + "\" }";
            }

        } else {
            respuesta = "{\"resultado\": false, \"mensaje\": \"El usuario ya existe.\", \"registro\":\"" + check + "\"  }";
        }

        return respuesta;
    }

    public String registro_usuario_relacional(String id_radius, String carnet, String nombre, String apellido, String fecha, String carrera, String correo) {

        try {
            String query = "INSERT INTO public.captive_usuario(\n"
                    + "	id_freeradius, carnet, nombre, apellido, fecha_nac, id_carrera, correo_electronico)\n"
                    + "	VALUES (" + id_radius + ", '" + carnet + "', '" + nombre + "', '" + apellido + "', '" + fecha + "', " + carrera + ", '" + correo + "');";

            JDBC_PostgreSQL conector = new JDBC_PostgreSQL();
            Connection post_con = conector.get_connection();
            PreparedStatement pstate = post_con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            int elementosInsertados = pstate.executeUpdate();

            if (elementosInsertados > 0) {
                post_con.close();
                return "true";
            } else {
                post_con.close();
                return "false";
            }

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(NetUser.class.getName()).log(Level.SEVERE, null, ex);
            return "false";
        } catch (SQLException ex) {
            Logger.getLogger(NetUser.class.getName()).log(Level.SEVERE, null, ex);
            return "false";
        }
    }

    public String get_Carreras() {

        try {

            String query = "SELECT * FROM captive_carrera;";

            JDBC_PostgreSQL con = new JDBC_PostgreSQL();
            Connection post_con = con.get_connection();
            PreparedStatement pstate = post_con.prepareStatement(query);
            ResultSet rs = pstate.executeQuery();

            String respuesta = "[\n";

            int contador = 0;
            while (rs.next()) {
                if (contador == 0) {
                    contador++;
                } else {
                    respuesta += ",";
                }
                respuesta += "{\n\"id_carrera\":\"" + rs.getString(1) + "\",\n"
                        + "\"descripcion\":\"" + rs.getString(2) + "\"\n}";
            }

            respuesta += "\n]";
            post_con.close();
            return respuesta;

        } catch (Exception ex) {
            Logger.getLogger(ex.getMessage());
            return "";
        }

    }

    public String getNetUsers() {

        try {
            String query = "SELECT CU.*, CC.descripcion\n"
                    + "FROM  public.captive_usuario CU\n"
                    + "join public.captive_carrera CC on CU.id_carrera = CC.id_carrera\n"
                    + "order by CU.id_usuario;";
            JDBC_PostgreSQL con = new JDBC_PostgreSQL();
            Connection post_con = con.get_connection();
            PreparedStatement pstate = post_con.prepareStatement(query);
            ResultSet rs = pstate.executeQuery();

            String respuesta = "[\n";

            int contador = 0;
            while (rs.next()) {
                if (contador == 0) {
                    contador++;
                } else {
                    respuesta += ",";
                }
                respuesta += "{\n\"id_usuario\":\"" + rs.getString(1) + "\",\n"
                        + "\"id_usuario_freeradius\":\"" + rs.getString(2) + "\",\n"
                        + "\"carnet\":\"" + rs.getString(3) + "\",\n"
                        + "\"nombre\":\"" + rs.getString(4) + "\",\n"
                        + "\"apellido\":\"" + rs.getString(5) + "\",\n"
                        + "\"fecha_nac\":\"" + rs.getString(6) + "\",\n"
                        + "\"id_carrera\":\"" + rs.getString(7) + "\",\n"
                        + "\"correo\":\"" + rs.getString(8) + "\",\n"
                        + "\"nombre_carrera\":\"" + rs.getString(9) + "\"\n}";
            }

            respuesta += "\n]";
            post_con.close();
            return respuesta;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(NetUser.class.getName()).log(Level.SEVERE, null, ex);
            return "[]";
        } catch (SQLException ex) {
            Logger.getLogger(NetUser.class.getName()).log(Level.SEVERE, null, ex);
            return "[]";
        }

    }

    public String getConnectionHistory() {
        try {
            String respuesta = "";

            String query = "SELECT id, username, pass, reply, calledstationid, callingstationid, authdate FROM public.radpostauth;";

            JDBC_PostgreSQL con = new JDBC_PostgreSQL();
            Connection post_con = con.get_connection();
            PreparedStatement pstate = post_con.prepareStatement(query);
            ResultSet rs = pstate.executeQuery();

            respuesta = "[\n";
            int contador = 0;

            while (rs.next()) {
                if (contador == 0) {
                    contador++;
                } else {
                    respuesta += ",";
                }
                
                respuesta += "{";
                respuesta += "\"no_conexion\":\"" + rs.getString(1) + "\",";
                respuesta += "\"no_usuario\":\"" + rs.getString(2) + "\",";
                respuesta += "\"no_tipo_respuesta\":\"" + rs.getString(4) + "\",";
                respuesta += "\"fecha_conexion\":\"" + rs.getString(7) + "\"";
                respuesta += "}";

            }

            respuesta += "\n]";
            post_con.close();
            return respuesta;

        } catch (SQLException ex) {
            Logger.getLogger(NetUser.class.getName()).log(Level.SEVERE, null, ex);
            return "[]";
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(NetUser.class.getName()).log(Level.SEVERE, null, ex);
            return "[]";
        }
    }

}

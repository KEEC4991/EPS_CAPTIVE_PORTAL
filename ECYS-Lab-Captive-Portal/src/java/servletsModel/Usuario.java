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

/**
 *
 * @author kgmt4
 */
public class Usuario {

    public Usuario() {

    }
    
    
    /**
     * USUARIOS ADMINISTRATIVOS
     */
    

    public String verificar_credenciales(String id_usuario, String id_contraseña) {
        try {
            String query = "SELECT * FROM captive_administrador where id_usuario = " + id_usuario + " and passwd_usuario = md5('" + id_contraseña + "');";
            JDBC_PostgreSQL con = new JDBC_PostgreSQL();
            Connection post_con = con.get_connection();
            PreparedStatement pstate = post_con.prepareStatement(query);
            ResultSet rs = pstate.executeQuery();
            String respuesta = "[\n";
            while (rs.next()) {
                respuesta += "{\n\"id_usuario\":\"" + rs.getString(1) + "\",\n";
                respuesta += "\"nombre_usuario\":\"" + rs.getString(2) + "\",\n";
                respuesta += "\"correo\":\"" + rs.getString(3) + "\",\n";
                respuesta += "\"tipo\":\"" + rs.getString(4) + "\",\n";
                respuesta += "\"estado\":\"" + rs.getString(5) + "\",\n";
                respuesta += "\"fecha_con\":\"" + rs.getString(6) + "\",\n";
                respuesta += "\"fecha_reg\":\"" + rs.getString(7) + "\",\n";
                respuesta += "\"descripcion\":\"" + rs.getString(8) + "\"\n}";
            }
            respuesta += "\n]";
            return respuesta;
        } catch (SQLException ex) {
            return "{ \"resultado\": false, \"mensaje\": \"Error al cambiar de estado, problemas en la base de datos. - " + ex.getMessage() + "\" }";
        } catch (ClassNotFoundException ex) {
            return "{ \"resultado\": false, \"mensaje\": \"Error al cambiar de estado.\" }";
        }
    }

    public String cambiar_tipo_usuario_admin(String id_usuario, String id_tipo_usuario) {

        try {
            String query = "UPDATE public.captive_administrador\n"
                    + "	SET tipo_usuario=" + id_tipo_usuario + "\n"
                    + "	WHERE id_usuario = " + id_usuario + ";";

            JDBC_PostgreSQL con = new JDBC_PostgreSQL();
            Connection post_con = con.get_connection();
            PreparedStatement pstate = post_con.prepareStatement(query);
            int valor_retorno = pstate.executeUpdate();

            return "{ \"resultado\": \"" + valor_retorno + "\", \"mensaje\": \"Cambio de estado realizado con exito.\" }";

        } catch (SQLException ex) {
            return "{ \"resultado\": false, \"mensaje\": \"Error al cambiar de estado, problemas en la base de datos. - " + ex.getMessage() + "\" }";
        } catch (ClassNotFoundException ex) {
            return "{ \"resultado\": false, \"mensaje\": \"Error al cambiar de estado.\" }";
        }
    }

    public String cambiar_estado_usuario_admin(String id_usuario, String id_estado) {
        try {
            String query = "UPDATE public.captive_administrador\n"
                    + "	SET id_estado=" + id_estado + "\n"
                    + "	WHERE id_usuario = " + id_usuario + ";";

            JDBC_PostgreSQL con = new JDBC_PostgreSQL();
            Connection post_con = con.get_connection();
            PreparedStatement pstate = post_con.prepareStatement(query);
            int valor_retorno = pstate.executeUpdate();

            return "{ \"resultado\": \"" + valor_retorno + "\", \"mensaje\": \"Cambio de estado realizado con exito.\" }";

        } catch (SQLException ex) {
            return "{ \"resultado\": false, \"mensaje\": \"Error al cambiar de estado, problemas en la base de datos. - " + ex.getMessage() + "\" }";
        } catch (ClassNotFoundException ex) {
            return "{ \"resultado\": false, \"mensaje\": \"Error al cambiar de estado.\" }";
        }
    }

    public String eliminar_usuario_admin(String id_usuario) {
        try {
            String query = "DELETE FROM public.captive_administrador\n"
                    + "	WHERE id_usuario = " + id_usuario + ";";

            JDBC_PostgreSQL con = new JDBC_PostgreSQL();
            Connection post_con = con.get_connection();
            PreparedStatement pstate = post_con.prepareStatement(query);
            int valor_retorno = pstate.executeUpdate();

            return "{ \"resultado\": \"" + valor_retorno + "\", \"mensaje\": \"Eliminacion realizado con exito.\" }";

        } catch (SQLException ex) {
            return "{ \"resultado\": false, \"mensaje\": \"Error al realizar la eliminacion, problemas en la base de datos. - " + ex.getMessage() + "\" }";
        } catch (ClassNotFoundException ex) {
            return "{ \"resultado\": false, \"mensaje\": \"Error al realizar la eliminacion.\" }";
        }
    }

    public String registrar_usuario_admin(String nombre, String correo, String tipo_usuario, String estado, String descripcion, String passwd) {
        try {
            String query = "INSERT INTO public.captive_administrador(\n"
                    + "	 nombre_usuario, correo_electronico, tipo_usuario, id_estado, usuario_descripcion, passwd_usuario)\n"
                    + "	VALUES ( '" + nombre + "', '" + correo + "', " + tipo_usuario + ", " + estado + ", '" + descripcion + "', md5('" + passwd + "'));";

            JDBC_PostgreSQL con = new JDBC_PostgreSQL();
            Connection post_con = con.get_connection();
            PreparedStatement pstate = post_con.prepareStatement(query);
            int valor_retorno = pstate.executeUpdate();

            return "{ \"resultado\": \"" + valor_retorno + "\", \"mensaje\": \"Registro realizado con exito.\" }";

        } catch (SQLException ex) {
            return "{ \"resultado\": false, \"mensaje\": \"Error al realizar el registro, problemas en la base de datos. - " + ex.getMessage() + "\" }";
        } catch (ClassNotFoundException ex) {
            return "{ \"resultado\": false, \"mensaje\": \"Error al realizar el registro.\" }";
        }
    }

    public String get_tipos_estado_usuarios_admin() {

        try {

            String query = "select * from captive_estado where id_tipo_estado = 1;";

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
                respuesta += "{\n\"id_estado\":\"" + rs.getString(1) + "\",\n"
                        + "\"descripcion\":\"" + rs.getString(2) + "\"\n}";
            }

            respuesta += "\n]";
            return respuesta;

        } catch (SQLException ex) {
            return "";
        } catch (ClassNotFoundException ex) {
            return "";
        }
    }

    public String get_tipos_usuarios_admin() {

        try {

            String query = "select * from captive_tipo_usuario_admin;";

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
                respuesta += "{\n\"id_tipo\":\"" + rs.getString(1) + "\",\n"
                        + "\"descripcion\":\"" + rs.getString(2) + "\"\n}";
            }

            respuesta += "\n]";
            return respuesta;

        } catch (SQLException ex) {
            return "";
        } catch (ClassNotFoundException ex) {
            return "";
        }
    }

    public String get_usuarios_admin() {

        try {
            String query = "select CP.id_usuario, CP.nombre_usuario, CP.correo_electronico, CAD.descripcion tipo_usuario, CES.descripcion estado_usuario, CP.fecha_ultima_conexion, CP.fecha_registro, CP.usuario_descripcion\n"
                    + "from captive_administrador CP \n"
                    + "join captive_estado CES on CP.id_estado = CES.id_estado\n"
                    + "join captive_tipo_usuario_admin CAD on CP.tipo_usuario = CAD.id_tipo\n"
                    + "order by CP.id_usuario asc;";

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
                        + "\"nombre_usuario\":\" " + rs.getString(2) + "\",\n"
                        + "\"correo_electronico\":\"" + rs.getString(3) + "\",\n"
                        + "\"tipo_usuario\":\"" + rs.getString(4) + "\",\n"
                        + "\"estado_usuario\":\"" + rs.getString(5) + "\",\n"
                        + "\"fecha_ultima_conexion\":\"" + rs.getString(6) + "\",\n"
                        + "\"fecha_registro\":\"" + rs.getString(7) + "\",\n"
                        + "\"usuario_descripcion\":\"" + rs.getString(8) + "\"\n}";
            }

            respuesta += "\n]";
            return respuesta;

        } catch (SQLException ex) {
            return "";
        } catch (ClassNotFoundException ex) {
            return "";
        }

    }

}

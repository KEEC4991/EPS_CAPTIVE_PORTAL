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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kgmt4
 */
public class Politica {

    public Politica() {
    }

    public String registroPolitica(String nombre, String valor, String descripcion, String id_estado, String id_administrador) {
        try {
            String query = "";
            String respuesta = "";
            if (id_administrador.equals("")) {
                id_administrador = "1";
            }

            query = "INSERT INTO public.captive_politicas(\n"
                    + "	 nombre_politica, valor_descriptivo, descripcion, id_estado, id_administrador)\n"
                    + "	VALUES ( '" + nombre + "', '" + valor + "', '" + descripcion + "', " + id_estado + ", " + id_administrador + ");";

            JDBC_PostgreSQL con = new JDBC_PostgreSQL();
            Connection post_con = con.get_connection();
            PreparedStatement pstate = post_con.prepareStatement(query);
            int valor_retorno = pstate.executeUpdate();

            post_con.close();
            return "{ \"resultado\": \"" + valor_retorno + "\", \"mensaje\": \"Registro realizado con exito.\" }";

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Politica.class.getName()).log(Level.SEVERE, null, ex);
            return "{ \"resultado\": \"false\", \"mensaje\": \"Error de conexión.\" }";
        } catch (SQLException ex) {
            Logger.getLogger(Politica.class.getName()).log(Level.SEVERE, null, ex);
            return "{ \"resultado\": \"false\", \"mensaje\": \"Error en Postgresql.\" }";
        }
    }

    public String listadoPoliticas() {
        try {
            String query = "select id_politica, nombre_politica, valor_descriptivo, public.captive_politicas.descripcion, public.captive_estado.descripcion, id_administrador, fecha_registro from public.captive_politicas\n"
                    + "join public.captive_estado on captive_estado.id_estado = captive_politicas.id_estado;";
            String respuesta = "";

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
                respuesta += "{"
                        + "\n\"id_politica\":\"" + rs.getString(1) + "\",\n"
                        + "\n\"nombre_politica\":\"" + rs.getString(2) + "\",\n"
                        + "\n\"valor_descriptivo\":\"" + rs.getString(3) + "\",\n"
                        + "\n\"descripcion\":\"" + rs.getString(4) + "\",\n"
                        + "\n\"id_estado\":\"" + rs.getString(5) + "\",\n"
                        + "\n\"id_administrador\":\"" + rs.getString(6) + "\",\n"
                        + "\"fecha_registro\":\"" + rs.getString(7) + "\"\n"
                        + "}";
            }
            respuesta += "\n]";
            post_con.close();
            return respuesta;

        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(ex.getMessage());
            System.out.println(ex.getMessage());
            return "[]";
        }
    }
    
    public String deletePolitica(String id_politica){
        
        String query = "delete from public.captive_politicas where id_politica = " + id_politica;
        
        
        
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servletsModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Logger;

/**
 *
 * @author kgmt4
 */
public class Carrera {

    public Carrera() {
    }

    public String getCarreras() {
        return "";
    }

    public String getEstudiantesCarrera() {

        try {
            String query = "select CAPC.descripcion, count(CAPU.id_usuario) from public.captive_carrera CAPC\n"
                    + "join public.captive_usuario CAPU ON CAPU.id_carrera = CAPC.id_carrera\n"
                    + "GROUP BY CAPC.id_carrera;";

            JDBC_PostgreSQL con = new JDBC_PostgreSQL();
            Connection post_con = con.get_connection();
            PreparedStatement pstate = post_con.prepareStatement(query);
            ResultSet rs = pstate.executeQuery();

            String respuesta = "{\n";
            String carreras = "[\n";
            String cantidades = "[\n";

            int contador = 0;
            while (rs.next()) {
                if (contador == 0) {
                    contador++;
                } else {
                    carreras += ",";
                    cantidades += ",";
                }

                carreras += "\" " + rs.getString(1) + "\"";
                cantidades += "\" " + rs.getString(2) + "\"";

                /*
                 respuesta += "{\n\"txt_carrera\":\"" + rs.getString(1) + "\",\n"
                 + "\"cantidad_carrera\":\"" + rs.getString(2) + "\"\n}";
                 */
            }

            carreras += "]";
            cantidades += "]";

            respuesta += "\"carreras\":" + carreras + ",";
            respuesta += "\"cantidades\":" + cantidades;

            respuesta += "\n}";
            post_con.close();
            return respuesta;

        } catch (Exception ex) {
            Logger.getLogger(ex.getMessage());
            return "";
        }

    }

}

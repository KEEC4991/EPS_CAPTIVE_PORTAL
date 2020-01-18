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
import java.time.OffsetDateTime;
import java.util.concurrent.locks.StampedLock;
import java.util.logging.Level;
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
                    + "left join public.captive_usuario CAPU ON CAPU.id_carrera = CAPC.id_carrera\n"
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

    public String getEdadEstudiantesPorSegmento() {

        try {

            String query = "with mat_age as (\n"
                    + "	SELECT EXTRACT( year from  age(CURRENT_DATE, TO_DATE(fecha_nac,'MM/DD/YYYY'))) as mage\n"
                    + "	from public.captive_usuario\n"
                    + ")\n"
                    + "select \n"
                    + "	count (*) filter (where mage < 10) as \"age<10\",\n"
                    + "	count (*) filter (where mage >= 10 and mage < 15) as \"10<=age<15\",\n"
                    + "	count (*) filter (where mage >= 15 and mage < 20) as \"15<=age<20\",\n"
                    + "	count (*) filter (where mage >= 20 and mage < 25) as \"20<=age<25\",\n"
                    + "	count (*) filter (where mage >= 25 and mage < 30) as \"25<=age<30\",\n"
                    + "	count (*) filter (where mage >= 30 and mage < 35) as \"30<=age<35\",\n"
                    + "	count (*) filter (where mage >= 35 and mage < 40) as \"35<=age<40\",\n"
                    + "	count (*) filter (where mage >= 40 and mage < 45) as \"40<=age<45\",\n"
                    + "	count (*) filter (where mage >= 45 and mage < 50) as \"45<=age<50\",\n"
                    + "	count (*) filter (where mage >= 50 and mage < 55) as \"50<=age<55\",\n"
                    + "	count (*) filter (where mage >= 55 and mage < 60) as \"55<=age<60\",\n"
                    + "	count (*) filter (where mage >= 60) as \"60<age\"\n"
                    + "from mat_age;";

            JDBC_PostgreSQL con = new JDBC_PostgreSQL();
            Connection post_con = con.get_connection();
            PreparedStatement pstate = post_con.prepareStatement(query);
            ResultSet rs = pstate.executeQuery();

            //int contador = 0;
            String respuesta = "[";

            while (rs.next()) {
                /*
                 if (contador == 0) {
                 contador++;
                 } else {
                 respuesta += ",";
                 }
                 */

                respuesta += rs.getString(1) + ",";
                respuesta += rs.getString(2) + ",";
                respuesta += rs.getString(3) + ",";
                respuesta += rs.getString(4) + ",";
                respuesta += rs.getString(5) + ",";
                respuesta += rs.getString(6) + ",";
                respuesta += rs.getString(7) + ",";
                respuesta += rs.getString(8) + ",";
                respuesta += rs.getString(9) + ",";
                respuesta += rs.getString(10) + ",";
                respuesta += rs.getString(11) + ",";
                respuesta += rs.getString(12);
            }

            respuesta += "]";
            post_con.close();
            return respuesta;

        } catch (Exception ex) {
            return "";
        }

    }

    public String getCantidadEstudiantesPorCarnet() {

        try {
            String query = "SELECT SUBSTRING(carnet,1,4) as amo, count(carnet)\n"
                    + "FROM public.captive_usuario\n"
                    + "group by amo;";

            JDBC_PostgreSQL con = new JDBC_PostgreSQL();
            Connection post_con = con.get_connection();
            PreparedStatement pstate = post_con.prepareStatement(query);
            ResultSet rs = pstate.executeQuery();

            int contador = 0;
            String respuesta = "{";

            String anio_carnets = "[";
            String cantidad_carnets = "[";

            while (rs.next()) {

                if (contador == 0) {
                    contador++;
                } else {
                    anio_carnets += ",";
                    cantidad_carnets += ",";
                }

                anio_carnets += "\"" + rs.getString(1) + "\"";
                cantidad_carnets += rs.getString(2);

            }

            anio_carnets += "]";
            cantidad_carnets += "]";
            respuesta += "\"periodos\":" + anio_carnets + ", \"cantidades\":" + cantidad_carnets + "}";
            post_con.close();
            return respuesta;

        } catch (Exception ex) {
            return "";
        }

    }

    public String getConsultaConexionesFecha(String query, int rango_fechas) {

        try {

            query = "with fecha_conexion as (\n"
                    + "	select cast(acctstarttime as date) as fecha\n"
                    + "	from public.radacct \n"
                    + ")\n"
                    + "select "
                    + query
                    + "from fecha_conexion;";

            JDBC_PostgreSQL con = new JDBC_PostgreSQL();
            Connection post_con = con.get_connection();
            PreparedStatement pstate = post_con.prepareStatement(query);
            ResultSet rs = pstate.executeQuery();

            String respuesta = "[";

            while (rs.next()) {

                int numeroColumnas = rs.getMetaData().getColumnCount();
                for (int i = 0; i < numeroColumnas; i++) {

                    if (i != 0) {
                        respuesta += ",";
                    }
                    respuesta += rs.getString(i + 1);
                }

                break;

            }

            respuesta += "]";
            post_con.close();
            return respuesta;

        } catch (Exception ex) {
            return "";
        }

    }

    public String getConsultaConexionesTotales(String fecha_inicio, String fecha_final) {

        try {
            String query = "with registros_fecha as (\n"
                    + "	select TO_CHAR(public.radacct.acctstarttime,'DD/MM/YYYY') as fecha\n"
                    + "	from public.radacct\n"
                    + " where TO_CHAR(public.radacct.acctstarttime,'DD/MM/YYYY') >= '" + fecha_inicio + "' \n"
                    + "	and TO_CHAR(public.radacct.acctstarttime,'DD/MM/YYYY') <= '" + fecha_final + "'\n"
                    + ")\n"
                    + "select fecha, count(fecha)\n"
                    + "from registros_fecha\n"
                    + "group by fecha\n"
                    + "order by fecha asc;";

            JDBC_PostgreSQL con = new JDBC_PostgreSQL();
            Connection post_con = con.get_connection();
            PreparedStatement pstate = post_con.prepareStatement(query);
            ResultSet rs = pstate.executeQuery();

            String respuesta = "[";
            int contador = 0;

            while (rs.next()) {

                if (contador != 0) {
                    respuesta += "," + "\n";
                } else {
                    contador++;
                }

                respuesta += "{ \"fecha\":\"" + rs.getString(1) + "\", \"cantidad\" : \"" + rs.getString(2) + "\"}";

            }
            post_con.close();
            respuesta += "]";

            return respuesta;

        } catch (Exception e) {
            return e.getMessage();
        }

    }

    public String getDetalleConexiones(String fecha_consulta) {

        try {

            String query = "select * \n"
                    + "from public.radacct\n"
                    + "where TO_CHAR(public.radacct.acctstarttime,'DD/MM/YYYY') = '" + fecha_consulta + "'\n"
                    + "order by radacctid asc";

            JDBC_PostgreSQL con = new JDBC_PostgreSQL();
            Connection post_con = con.get_connection();
            PreparedStatement pstate = post_con.prepareStatement(query);
            ResultSet rs = pstate.executeQuery();

            String respuesta = "[";
            int contador = 0;

            while (rs.next()) {

                if (contador != 0) {
                    respuesta += "," + "\n";
                } else {
                    contador++;
                }

                respuesta += "{";
                respuesta += "\"id\":" + rs.getString(1).trim() + ",\n";
                respuesta += "\"usuario\":\"" + rs.getString(4).trim() + "\",\n";
                respuesta += "\"origen\":\"" + rs.getString(6).trim() + "\",\n";
                respuesta += "\"tipo\":\"" + rs.getString(8).trim() + "\",\n";
                respuesta += "\"fecha_inicio\":\"" + rs.getString(9).trim() + "\",\n";
                if (rs.getString(11) != null) {
                    respuesta += "\"fecha_final\":\"" + rs.getString(11).trim() + "\",\n";
                } else {
                    respuesta += "\"fecha_final\":\" Con conexión \",\n";
                }
                if (rs.getString(20) != null) {
                    respuesta += "\"dispositivo\":\"" + rs.getString(20).trim() + "\",\n";
                }else{
                    respuesta += "\"dispositivo\":\"Dispositivo desconocido\",\n";
                }
                if (rs.getString(21) != null) {
                    respuesta += "\"causa\":\"" + rs.getString(21).trim() + "\"";
                } else {
                    respuesta += "\"causa\":\"Conectado\"";
                }
                respuesta += "}";

            }

            respuesta += "]";
            post_con.close();
            return respuesta;

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Carrera.class.getName()).log(Level.SEVERE, null, ex);
            return "falla 1 - " + ex.getMessage();
        } catch (SQLException ex) {
            Logger.getLogger(Carrera.class.getName()).log(Level.SEVERE, null, ex);
            return "falla 2 - " + ex.getMessage();
        }

    }

    public String getDashboardConcurrenciaCarreras() {
        try {

            String query = "select count(radacct.radacctid),\n"
                    + "captive_carrera.descripcion\n"
                    + "from radacct, captive_usuario\n"
                    + "join captive_carrera ON captive_carrera.id_carrera = captive_usuario.id_carrera\n"
                    + "where radacct.username = captive_usuario.carnet\n"
                    + "and  to_date(to_char(public.radacct.acctstarttime, 'YYYY/MM/DD'), 'YYYY-MM-DD')  = current_date\n"
                    + "group by captive_carrera.id_carrera; ";

            JDBC_PostgreSQL con = new JDBC_PostgreSQL();
            Connection post_con = con.get_connection();
            Statement pstate = post_con.createStatement();
            pstate.setQueryTimeout(500);
            ResultSet rs = pstate.executeQuery(query);

            String respuesta = "";
            String contadores = "[";
            String carrera = "[";

            //return query;
            int contador = 0;

            while (rs.next()) {
                if (contador != 0) {
                    carrera += "," + "\n";
                    contadores += "," + "\n";
                } else {
                    contador++;
                }
                carrera += "\"" + rs.getString(2) + "\"";
                contadores += "" + rs.getString(1) + "";
            }

            carrera += "]";
            contadores += "]";

            respuesta += "{";
            respuesta += "\"contadores\":" + contadores + ",";
            respuesta += "\"carreras\":" + carrera;
            respuesta += "}";
            post_con.close();

            return respuesta;

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Carrera.class.getName()).log(Level.SEVERE, null, ex);
            return "falla 1";
        } catch (SQLException ex) {
            Logger.getLogger(Carrera.class.getName()).log(Level.SEVERE, null, ex);
            return "falla 2";
        }
    }

}

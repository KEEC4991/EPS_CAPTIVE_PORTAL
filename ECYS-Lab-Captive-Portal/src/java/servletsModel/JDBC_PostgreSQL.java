/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servletsModel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.TimeZone;

/**
 *
 * @author kgmt4
 */
public class JDBC_PostgreSQL {

    String ip = "172.10.1.200";

    public Connection get_connection() throws ClassNotFoundException, SQLException {

        Class.forName("org.postgresql.Driver");
        setIPConexion();
        TimeZone.setDefault(TimeZone.getTimeZone("America/Guatemala"));
        Connection conn = DriverManager.getConnection("jdbc:postgresql://" + ip + ":5432/radius?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=America/Guatemala", "postgres", "admin");

        return conn;
    }

    public Connection get_connection_freeradius() throws ClassNotFoundException, SQLException {

        Class.forName("org.postgresql.Driver");
        setIPConexion();
        TimeZone.setDefault(TimeZone.getTimeZone("America/Guatemala"));
        Connection conn = DriverManager.getConnection("jdbc:postgresql://" + ip + ":5432/radius?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=America/Guatemala", "postgres", "admin");
        return conn;
    }

    public void setIPConexion() {
        this.ip = "172.10.1.250";
        //this.ip = "127.0.0.1";
    }

}

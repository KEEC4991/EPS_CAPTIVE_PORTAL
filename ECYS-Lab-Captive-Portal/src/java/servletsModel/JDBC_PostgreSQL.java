/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servletsModel;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author kgmt4
 */
public class JDBC_PostgreSQL {

    public Connection get_connection() throws ClassNotFoundException, SQLException {

        Class.forName("org.postgresql.Driver");
        //Connection conn = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/captiveportal_ecyslab", "postgres", "admin");
        Connection conn = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/radius", "postgres", "admin");


        return conn;
    }
    
    public Connection get_connection_freeradius() throws ClassNotFoundException, SQLException {
        
        Class.forName("org.postgresql.Driver");
        Connection conn = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/radius", "postgres", "admin");

        return conn;
    }

}

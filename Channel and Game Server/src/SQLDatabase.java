/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ChannelServer;


import java.io.*;
import java.util.*;
import java.sql.*;
/**
 *
 * @author Secured
 */
public class SQLDatabase {

    protected String owner;
    protected Properties sqldata = new Properties();
    protected Connection con;
    protected Statement st;


    public SQLDatabase(String createdby) {
        this.owner = createdby;
    }


    protected void debug(String msg) {
        Main.debug("["+owner+"]", msg);
    }

    public void start()
    {
        try {
            // Load the JDBC driver
            try {
                Class.forName("org.mariadb.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                    debug("Missing MariaDB JDBC Driver:" + e.getMessage());
                    return;
            }
            debug("Loaded MariaDB JDBC Driver!");

            Connection con = null;

            try {
                    con = DriverManager.getConnection("jdbc:mariadb://"+Main.ip+"/"+Main.database,Main.user,Main.pass);

            } catch (SQLException e) {
                    debug("Error Connecting to MariaDB Server: "+e.getMessage());
                    e.printStackTrace();
                    return;
            }

            if (con != null) {
                    debug("Successfully connected to MariaDB server on "+ Main.ip +":"+ Main.port);
            } else {
                    debug("Failed to make connection!");
            }

        } catch(Exception ex) {
            debug("Exception: " + ex.getMessage());
        }
    }

    /*public ResultSet doquery(String query)
    {
        ResultSet rs = null;
        try
        {
            rs = st.executeQuery(query);
        }
        catch (Exception ex)
        {
            debug("Error (query): " + ex.getMessage());
        }
        return rs;
    }
    
      */  
    public ResultSet doquery(String query) {
        ResultSet rs = null;
        try {
            Statement st = con.createStatement();
            rs = st.executeQuery(query);
        } catch (java.sql.SQLException e) {
            debug("[LoginServer] (Sqlquery): " + e.getMessage());
        }
        return rs;
    }

    public int doupdatenors(String query)
    {
        try
        {
            st.executeUpdate(query);
            return 2;
        }
        catch (java.sql.SQLException ex)
        {
            debug("[LoginServer] (Sqlupdate): " + ex.getMessage());
            return 1;
        }
    }

    
    public ResultSet doupdate(String query) {
        ResultSet rs = null;
        try {
            Statement st = con.createStatement();
            st.executeUpdate(query);
        } catch (java.sql.SQLException ex) {
            debug("[LoginServer] (Sqlupdate): " + ex.getMessage());
        }
        return rs;
    }
}

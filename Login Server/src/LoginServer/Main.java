/*
 * Main.java
 * This file executes the main server events.
 */

package LoginServer;


import java.net.*;
import java.io.*;

/**
 * Start the server.
 */
public class Main {
    public static final boolean DEBUG = true;
    public static Config config;
    public static LoginServer loginServer;
    public static LoginServerGUI gui;
    public static String ip, port, user, pass, database;



    private static final int loginPort = 11000;


     /**
      * Create SQLDatabase Object
      */
    public static SQLDatabase sql = new SQLDatabase("Server");
    
    /**
     *  Write the message to the GUI.
     */
    public static void debug(String label, String msg) {
        if (DEBUG && Main.gui != null) {
            Main.gui.write(label + ": " + msg);
        }
    }

   public static String getip(Socket sock)
    {
       String s = sock.getInetAddress().toString();
        return s.substring(0,0)+s.substring(1);
    }
    
    /**
     * Starts server and the GUI for messages.
     */
    public static void main(String[] args) {
        try {
            gui = new LoginServerGUI();
            gui.setTitle("Bots Login Server");
            gui.setLocationRelativeTo(null);
            gui.setVisible(true);
            //Dont Remove or you'll auto die.
            Main.debug("[Credits]", "Server Files Edited by Secured");
            debug("[Server]", "Server Starting...!");
            debug("[Server]", "Loading Configuration File(s)..");
            config = new Config();
            config.loadconfigs();
            sql.start();

            loginServer = new LoginServer(loginPort);
            loginServer.start();

            gui.startUpdateTimer();
            
            RoomUDPServer roomserver = new RoomUDPServer();
            roomserver.start();

            ChannelServer.main();
            
            debug("[Server]", "Server Started!");


        }
        catch (Exception e) {
            //debug("Main", "Exception (main)" + e.getMessage());
        }
    }
}

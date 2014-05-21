/*
 * Main.java
 * This file executes the main server events.
 */

package ChannelServer;

import java.io.*;
import java.net.*;
/**
 * Start the server.
 */

public class Main {
    public static final boolean DEBUG = true;
    public static Config config;
    public static ChannelServer channelServer;
    public static ChannelGameServerGUI gui;
    public static String str = new String();
    public static String ip, port, user, pass, database;

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
            int ChannelPort = 11002;

            channelServer = new ChannelServer(ChannelPort);
            channelServer.start();

            gui = new ChannelGameServerGUI(channelServer);
            gui.setTitle    ("Bots Channel Server!");
            gui.setLocationRelativeTo(null);
            gui.setVisible(true);
            String nullbyte = new String(ChannelServer.NULLBYTE,"ISO8859-1");
            for (int i = 0; i < 1372; i++)
                ChannelServer.longnullbyte += nullbyte;
            
            //if you remove, you will instantly die by a flying pig.
            debug("[Credits]", "Server Files Edited by Secured!");
            
            debug("[Server]", "Server Starting...!");
            debug("[Server]", "Loading Configuration File(s)..");
            config = new Config();
            config.loadconfigs();
            sql.start();
            
            debug("[Server]", "Jumped on port " + ChannelPort + "");
            debug("[Server]", "Server Started!");

        }
        catch (Exception e) {
            debug("Main", "Exception (main)" + e.getMessage());
        }
    }
}

package ChannelServer;

import static ChannelServer.Main.debug;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

/**
 *
 * @author Secured
 */
public class Config {
    protected Properties sqldata = new Properties();
    
    public void loadconfigs()
    {
       loaddatabase();
    }
    
    private void loaddatabase()
    {
        File file = new File("./conf/database.conf");
        FileInputStream fis = null;

        try {
            fis = new FileInputStream(file);

            sqldata.load(fis);
            Main.ip = sqldata.getProperty("ip");
            Main.port = sqldata.getProperty("port");
            Main.user = sqldata.getProperty("user");
            Main.pass = sqldata.getProperty("pass");
            Main.database = sqldata.getProperty("database");

        } catch (IOException e) {
           debug("Main", "Exception: " + e.getMessage());
        } finally {
            try {
                if (fis != null)
                    fis.close();
            } catch (IOException ex) {
                debug("Main", "Exception: " + ex.getMessage());
            }
        }
    }
    
    
}

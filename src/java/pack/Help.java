/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Random;

/**
 *
 * @author hp pc
 */
public class Help {
    
              public static  String vId()
            {
            String vid=(char)(new Random().nextInt(26)+65)+""+(char)(new Random().nextInt(26)+65)+""+(char)(new Random().nextInt(26)+65)+""+new Random().nextInt(9+1)+new Random().nextInt(9+1)+new Random().nextInt(9+1)+new Random().nextInt(9+1)+new Random().nextInt(9+1)+new Random().nextInt(9+1)+new Random().nextInt(9+1)+"";
            try
            {
                Connection c=null;
                try
                {
                    Class.forName("com.jdbc.mysql.Driver");
                    c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project1","root","");
                    PreparedStatement ps=c.prepareStatement("Select * from Voters where V_Id=?;");
                    ps.setString(1,vid);
                    ResultSet rs=ps.executeQuery();
                    if(rs.next())
                    {
                        vId();
                    }
                }
                finally
                {
                    c.close();
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            return vid;
        }
                
}

package com.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.dbcon.DBconnection;
import org.mindrot.jbcrypt.BCrypt;

public class LoginDao {

    public boolean checkLogin(LoginData ld) {

        boolean status = false;

        try (Connection con= DBconnection.getConnection();
        	PreparedStatement ps = con.prepareStatement("SELECT password FROM admin_login WHERE username=?");)
        {
            ps.setString(1, ld.getUsername());
            

        ResultSet  rs = ps.executeQuery();

            if (rs.next()) {
                String dbPassword=rs.getString("password");
                status = BCrypt.checkpw(ld.getPassword(),dbPassword );
                
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }
   
    
    
    
    public boolean changePassword(String username,String oldPassword,String newPassword)             
            {

boolean status = false;

try (Connection con = DBconnection.getConnection()) {

PreparedStatement ps =
con.prepareStatement("SELECT password FROM admin_login WHERE username=?");

ps.setString(1, username);


ResultSet rs = ps.executeQuery();

if (rs.next()) {
String DBpassword=rs.getString("password");
if (BCrypt.checkpw(oldPassword, DBpassword)) {	
String HashedPass=BCrypt.hashpw(newPassword, BCrypt.gensalt(10));
	
PreparedStatement ps2 =con.prepareStatement( "UPDATE admin_login SET password=? WHERE username=?");

ps2.setString(1, HashedPass);
ps2.setString(2, username);

status = ps2.executeUpdate() > 0;
}}
} catch (Exception e) {
e.printStackTrace();
}
return status;
}
}
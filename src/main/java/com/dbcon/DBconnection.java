package com.dbcon;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnection {
  public static Connection getConnection() {
	  Connection con=null;
	  try {
		    
		  if (con == null || con.isClosed()) {

              Class.forName("com.mysql.cj.jdbc.Driver");

              String url = System.getenv("DB_URL");
              String user = System.getenv("DB_USER");
              String password = System.getenv("DB_PASSWORD");

              con = DriverManager.getConnection(url, user, password);
          }
		  
	} catch (Exception e) {
		// TODO: handle 
		System.out.println("Not Connected");
        e.printStackTrace();
	}
	return con;  
  }
}

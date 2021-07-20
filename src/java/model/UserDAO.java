/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.*;
import model.*;

import com.sun.org.apache.xerces.internal.util.Status;

public class UserDAO {
	
private String url = "jdbc:mysql://localhost:3306/obstore?useSSL=false";
private String uname ="root";
private String pass ="St@rs21873";
private String dbdriver = "com.mysql.cj.jdbc.Driver";

public Connection getConnection() {
	
	Connection conn = null;
	try {
		conn = DriverManager.getConnection(url,uname,pass);
		
	}catch (SQLException e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	return conn;
	
}

public void loadDriver(String dbdriver) throws ClassNotFoundException {
	
	 Class.forName(dbdriver); 
}



public boolean validate(User user) throws SQLException, ClassNotFoundException  {
	boolean status = false;
	loadDriver(dbdriver);
	Connection conn = getConnection();
	PreparedStatement ps = conn.prepareStatement("select * from Users where uname = ? and pwd = ? ");
	ps.setString(1, user.getUname());
	ps.setString(2, user.getPwd());
	
	System.out.println(ps);
	ResultSet rs = ps.executeQuery();
	status = rs.next();
	return status;
	
}

}

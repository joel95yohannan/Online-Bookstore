/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import java.util.*;
import java.sql.*;

/**
 *
 * @author joel yohannan
 */
public class SignUpSql {
   
       
    String result1="";      
    String result2="";
    String result="";
   public String getTotal(String fame, String lame, String uame, String pd){
       
      String url = "jdbc:mysql://localhost:3306/obstore?useSSL=false";
       String user = "root";
       String pw = "St@rs21873";
       
       String fName2 = fame;
        String lName2 = lame;
        String uname2 = uame;
        String pwd2 = pd;
        
        result=fName2+" "+lName2+" : Signup Successful!!! \n"+"Login to shop your favorite books!";
        
        
       
       try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, pw);            
            
            PreparedStatement ps = conn.prepareStatement("INSERT INTO Users (fName, lName, uname, pwd) VALUES('"+fName2+"','"+lName2+"','"+uname2+"','"+pwd2+"')");
            
        ps.executeUpdate();                      
        
        
        }catch (ClassNotFoundException ex) {
            System.out.println("Class not found");
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }//try..catch
       
       return result;
       
       
   }//method
    
    
}//class

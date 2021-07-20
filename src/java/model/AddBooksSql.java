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
public class AddBooksSql {
    
    String result1="";      
    String result2="";
    String result="";
    String resultrem="";
   public String getTotal(String isb, String nam, String auth, String pric){
       
      String url = "jdbc:mysql://localhost:3306/obstore?useSSL=false";
       String user = "root";
       String pw = "St@rs21873";
       
       String fName2 = isb;
        String lName2 = nam;
        String uname2 = auth;
        String pwd2 = pric;
        
        result="Book : "+fName2+" - "+lName2+" : Added Successfully!!! \n";
        
        
       
       try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, pw);            
            
            PreparedStatement ps = conn.prepareStatement("INSERT INTO Booklist (isbn, bookName, Author, price) VALUES('"+fName2+"','"+lName2+"','"+uname2+"','"+pwd2+"')");
            //PreparedStatement ps = conn.prepareStatement("insert into Users values (?)");  
            
            //ps.setString(2, fName);
            //ps.setString(3, lName);
            //ps.setString(4, uname);
            //ps.setString(5, pwd);
            //ps.setInt(1, price);
        ps.executeUpdate();                      
        
        
        }catch (ClassNotFoundException ex) {
            System.out.println("Class not found");
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }//try..catch
       
       return result;
       
       
   }//method
   
    public String removeBook(String risb){
       
      String url = "jdbc:mysql://localhost:3306/obstore?useSSL=false";
       String user = "root";
       String pw = "St@rs21873";
       
       String risbn2 = risb;
        
        String sql="DELETE FROM Booklist WHERE isbn=?";
        resultrem="Book : "+risbn2+" : Removed from inventory Successfully!!! \n";
        
        
       
       try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, pw);            
            
            //PreparedStatement ps = conn.prepareStatement("DELETE FROM Booklist WHERE isbn="+risbn2+"");
            //PreparedStatement ps = conn.prepareStatement("insert into Users values (?)");  
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, risbn2);
            //ps.setString(3, lName);
            //ps.setString(4, uname);
            //ps.setString(5, pwd);
            //ps.setInt(1, price);
        ps.executeUpdate();                      
        
        
        }catch (ClassNotFoundException ex) {
            System.out.println("Class not found");
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }//try..catch
       
       return resultrem;
       
       
   }//method
    
    
    
}

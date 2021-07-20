/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.sql.*;
/**
 *
 * @author joel yohannan
 */
public class Cart1Sql {
    
    int result;
    int price2;
    String name2;
    String isbn2;
    int price3;
    String name3;
    String isbn3;
    String output;
    String clear;
      
   public String getTotal(String isb, String n, String str){
       
      String url = "jdbc:mysql://localhost:3306/obstore?useSSL=false";
       String user = "root";
       String pw = "St@rs21873";
       isbn2=isb;
       name2 = n;       
       price2 = Integer.parseInt(str);
       output = isbn2+" "+name2+" "+price2;
       
       try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, pw);            
           PreparedStatement ps = conn.prepareStatement("INSERT INTO Cart (isbn, name, price) VALUES('"+isbn2+"','"+name2+"','"+price2+"')");
           //PreparedStatement ps = conn.prepareStatement("insert into mtb1 values (?)");            
            
           //ps.setString(1, isbn2);
           //ps.setString(2, name2);
           //ps.setInt(3, price2);
            ps.executeUpdate();                      
            
        }catch(Exception e){
            System.err.println(e);
        }//try..catch
       
       return output;
       //return price;
       
   }//user cart method
   
   
   
   public String adminCart(String isb, String n, String str){
       
      String url = "jdbc:mysql://localhost:3306/obstore?useSSL=false";
       String user = "root";
       String pw = "St@rs21873";
       isbn3=isb;
       name3 = n;       
       price3 = Integer.parseInt(str);
       output = isbn3+" "+name3+" "+price3;
       
       try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, pw);            
           PreparedStatement ps = conn.prepareStatement("INSERT INTO adminCart (isbn, name, price) VALUES('"+isbn3+"','"+name3+"','"+price3+"')");
           //PreparedStatement ps = conn.prepareStatement("insert into mtb1 values (?)");            
            
           //ps.setString(1, isbn2);
           //ps.setString(2, name2);
           //ps.setInt(3, price2);
            ps.executeUpdate();                      
            
        }catch(Exception e){
            System.err.println(e);
        }//try..catch
       
       return output;
       //return price;
       
   }//method
   
   
   
   
   public String clearCart(){
       Cart1Sql ss=new Cart1Sql();
      
       
      String url = "jdbc:mysql://localhost:3306/obstore?useSSL=false";
       String user = "root";
       String pw = "St@rs21873";
       clear = "Cart has been cleared";
       
       
       try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, pw);            
           PreparedStatement ps = conn.prepareStatement("DELETE FROM Cart");
           
            ps.executeUpdate();                      
            
        }catch(Exception e){
            System.err.println(e);
        }//try..catch
             return clear; 
   }//DeleteMethod
   
   public String clearAdminCart(){
       Cart1Sql ss=new Cart1Sql();
      
       
      String url = "jdbc:mysql://localhost:3306/obstore?useSSL=false";
       String user = "root";
       String pw = "St@rs21873";
       clear = "Cart has been cleared";
       
       
       try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, pw);            
           PreparedStatement ps = conn.prepareStatement("DELETE FROM adminCart");
           
            ps.executeUpdate();                      
            
        }catch(Exception e){
            System.err.println(e);
        }//try..catch
             return clear; 
   }//DeleteMethod
   
   
}//class

    
    


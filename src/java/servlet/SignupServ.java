/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.SignUpSql;

/**
 *
 * @author joel yohannan
 */
@WebServlet(name = "SignupServ", urlPatterns = {"/SignupServ"})
public class SignupServ extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SignupServ</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SignupServ at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
                String fName1=request.getParameter("fName");
                String lName1=request.getParameter("lName");
                String uname1=request.getParameter("uname");
                String pwd1=request.getParameter("pwd");
       
        
                
        SignUpSql susql = new SignUpSql();
        String parasignup = susql.getTotal(fName1,lName1,uname1,pwd1);        
        String success = String.valueOf(parasignup);
        
        request.setAttribute("success", success);
        RequestDispatcher rd = request.getRequestDispatcher("/signup.jsp");
        rd.forward(request, response);     
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

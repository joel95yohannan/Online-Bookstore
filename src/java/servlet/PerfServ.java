/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import model.Cart1Sql;

/**
 *
 * @author joel yohannan
 */
@WebServlet(name = "PerfServ", urlPatterns = {"/PerfServ"})
public class PerfServ extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PerfServ</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PerfServ at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
        //processRequest(request, response);
        String perfisbn = (String)request.getSession().getAttribute("perfisbn");
        String perfname = (String)request.getSession().getAttribute("perfname");
       String perfprice = (String)request.getSession().getAttribute("perfprice");
       
       String perfisbn3 = (String)request.getSession().getAttribute("perfisbn");
        String perfname3 = (String)request.getSession().getAttribute("perfname");
       String perfprice3 = (String)request.getSession().getAttribute("perfprice");
       
                
        Cart1Sql st = new Cart1Sql();
        String para = st.getTotal(perfisbn,perfname,perfprice);             
        String adminpara = st.adminCart(perfisbn3,perfname3,perfprice3); 
        String total = String.valueOf(para);      
        
        request.setAttribute("total", total);
        RequestDispatcher rd = request.getRequestDispatcher("/ubasic.jsp");
        rd.forward(request, response);     
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

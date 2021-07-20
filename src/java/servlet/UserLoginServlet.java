/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.*;

/**
 * Servlet implementation class LoginCheck
 */
@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public UserDAO userDAO;
       
	public void init() {
		userDAO  = new UserDAO() ;
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname1 = request.getParameter("uname");
		String pwd1 = request.getParameter("pwd");
		User user = new User();
		user.setUname(uname1);
		user.setPwd(pwd1);
		
		try {
			if(userDAO.validate(user)) {
				response.sendRedirect("ufrontpage.jsp");
                                
			}else {
                                
                                        
                                String fail = ("Login failed! Enter the correct username and password");
        
                                request.setAttribute("fail", fail);
                                RequestDispatcher rd = request.getRequestDispatcher("/userloginpage.jsp");
                                rd.forward(request, response); 
                            
                            
                            
				//response.sendRedirect("userloginpage.jsp");	
			}
				
			
		} catch(ClassNotFoundException e) {
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
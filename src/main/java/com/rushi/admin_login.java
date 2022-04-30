package com.rushi;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
@WebServlet("/adminlogin")
public class admin_login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/fueldelivery","root","");
			Statement statement = con.createStatement();
			String a = request.getParameter("name");
			String b = request.getParameter("pass");
			String email= "";
			String pass="";
                ResultSet rs = statement.executeQuery("select * from admin");
                PrintWriter out=response.getWriter();
           	 	int count = 0; 
           	 	while(rs.next()) {
                	 count++;
                	 email = rs.getString(2);
                	 pass = rs.getString(3);
                	if(a.equals(email) && b.equals(pass)){
                		response.setContentType("text/HTML");
        				out.println("<script type=\"text/javascript\">");
        				out.println("alert(\"Welcome Admin\")");
        				out.println("window.location.href = 'admin/index1.html';");
        				out.println("</script>");
        				break;
                	}
                	else {
                		response.setContentType("text/HTML");
        				out.println("<script type=\"text/javascript\">");
        				out.println("alert(\"Email or Password is Wrong\")");
        				out.println("window.location.href = \"admin/index.html\";");
        				out.println("</script>");
        				break;
                	}
                }
			
		}catch (SQLException e) {
			e.printStackTrace();
			}catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		
	}

}

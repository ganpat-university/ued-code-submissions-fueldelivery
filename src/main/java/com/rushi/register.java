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
 * Servlet implementation class practicalexam
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/fueldelivery","root","");
			Statement statement = con.createStatement();
			String a = request.getParameter("name");
			String b = request.getParameter("email");
			long c = Long.parseLong(request.getParameter("num"));
			String d = request.getParameter("pass");
			int result = statement.executeUpdate("insert into register (`name`, `mobile`, `email`, `password`) values('"+a+"','"+c+"','"+b+"','"+d+"')");
            PrintWriter out=response.getWriter();

			if (result == 1) {
			response.setContentType("text/HTML");
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Register Successfully')");
			out.println("window.location.href = \"login.html\";");
			out.println("</script>");
			
			}
		}catch (SQLException e) {
			e.printStackTrace();
			}catch (ClassNotFoundException e) {
				e.printStackTrace();
			}catch(NumberFormatException e) {
				PrintWriter out=response.getWriter();
				response.setContentType("text/HTML");
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Input is Null')");
				out.println("window.location.href = \"register.html\";");
				out.println("</script>");
			}
		
}

}

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
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/fueldelivery","root","");
			Statement statement = con.createStatement();
			String a = request.getParameter("email");
			String b = request.getParameter("pass");
			int id = 0;
			String email= "";
			String pass="";
                ResultSet rs = statement.executeQuery("select * from register");
                PrintWriter out=response.getWriter();
           	 	int count = 0; 
           	 	int el =0;
           	 	while(rs.next()) {
                	 count++;
                	 id = rs.getInt(1);
                	 email = rs.getString(4);
                	 pass = rs.getString(5);
                	if(a.equals(email) && b.equals(pass)){
                		response.setContentType("text/HTML");
        				out.println("<script type=\"text/javascript\">");
        				out.println("alert(\"Welcome To website\")");
        				out.println("window.location.href = \"index.jsp?id="+id+"\";");
        				out.println("</script>");
        				el++;
        				break;
                	}
           
                }
			if(el == 0) {
				response.setContentType("text/HTML");
				out.println("<script type=\"text/javascript\">");
				out.println("alert(\"Email or Password is Wrong\")");
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
				out.println("window.location.href = \"login.html\";");
				out.println("</script>");
			}
		
	}

}



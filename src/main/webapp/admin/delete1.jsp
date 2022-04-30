<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
try{
int a=Integer.parseInt(request.getParameter("id"));
out.println(a);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fueldelivery","root","");
Statement st = con.createStatement();
int rs = st.executeUpdate("Delete FROM orders where id = '"+a+"'");
if(rs==1){
	response.setContentType("text/HTML");
	out.println("<script type=\"text/javascript\">");
	out.println("alert('Delete Order Successful')");
	out.println("window.location.href = \"order.jsp\";");
	out.println("</script>");
	
}
}
catch(ClassNotFoundException | SQLException e)
{
	out.print(e);
}
%>

</body>
</html>
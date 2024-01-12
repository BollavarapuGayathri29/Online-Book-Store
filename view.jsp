<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String bn=request.getParameter("name");
String no=request.getParameter("book number");
String an=request.getParameter("author");
String ed=request.getParameter("edition");


try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/homejsp","root","");
	String sql="SELECT FROM bookdata WHERE bn=?";
	PreparedStatement ps=con.prepareStatement(sql);
	
	
	ps.setString(1,bn);
	
	ResultSet rs=ps.executeQuery();
	String bookname="";
	while(rs.next()){
		bookname=rs.getString("name");
	}
	if(bn.equals(bookname)){
		response.sendRedirect("NewFile.jsp");
	}else{
		response.sendRedirect("");
	}
}
catch(Exception e){
	e.printStackTrace();
}



%>


</body>
</html>

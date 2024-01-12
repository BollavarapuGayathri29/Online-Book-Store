<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
String bn=request.getParameter("bookname");
String no=request.getParameter("booknumber");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/homejsp","root","");
	String sql="DELETE FROM bookdata WHERE no=?";
	PreparedStatement ps=con.prepareStatement(sql);
	
	ps.setString(2,no);

	int i=ps.executeUpdateQuery(sql);
	String bookname "";
	
	
	int i=ps.executeUpdateQuery(sql);
	
	if(bn.equals(bookname)){
		response.sendRedirect("NewFile.jsp");
	}else{
		response.sendRedirect("failur1.jsp");
	}
}
catch(Exception e){
	e.printStackTrace();
}



%>

</body>
</html>
</body>
</html>

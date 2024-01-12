<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.container
{
position:absolute;
top:25%;
left:40%;
transform:translate:(-50%,-50%);
width:350px;
}
.container p{
font-size:20px;
margin:15px 0;

}
.container input{
font-size:16px;
padding:15px 10px;
width:100%;
border:0;
border-radius:5px;
outline:none;
}

input[type=submit] {
  background-color:red;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
.container submit{
font-size:18px;
font-weight:bold;
margin:20px 0;
padding:10px 15px;
width:50%;
border:0;
border-radius:5px;
}


input[type=submit]:hover {
  background-color: green;
}</style>
</head>
<body>
<body background="back4.jpg">
<div class="container">

<form action="viewbook.jsp">
<p>NAME:</p><input type="text" placeholder="enter name" name="name"/><br>
<p>BOOKNUMBER:</p><input type="text" placeholder="enter booknumber" name="book number"/><br>
<p>AUTHOR:</p><input type="text" placeholder="enter author" name="authorname"/><br>
<p>EDITION:</p><input type="text" placeholder="enter edition" name="edition"/><br>
<button><input type="submit" value="view"/><br></button>


</form>
</div>
</body>
</html>

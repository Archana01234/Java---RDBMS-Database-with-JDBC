<%@page import="com.bean.Emp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
  Emp e=(Emp)request.getAttribute("e");
  if(request.getAttribute("msg")!=null)
  {
	  out.println("<b style=color:blue;>"+request.getAttribute("msg")+"</style></b>");
  }
%>
<form name="inser" method="post" action=" EmpController">
<table>
<tr>
<td><input type="hidden" name="id" value="<%=e.getId() %>">
</tr>
<tr>
<td>First name</td>
<td><input type="text" name="fname" value="<%=e.getFname() %>"></td>
</tr>
<tr>
<td>last name</td>
<td><input type="text" name="lname" value="<%=e.getLname() %>"></td>
</tr>  
<tr>
<td>email</td>
<td><input type="text" name="email" value="<%=e.getEmail() %>"></td>
</tr>
<tr>
<td>mobile</td>
<td><input type="text" name="mobile" value="<%=e.getMobile() %>"></td>
</tr>
<tr>
<td>gender</td>
<td> 
   <%
       if (e.getgender().equals("male"))
       {
   %>
    	   <input type="radio" name="gender" value="male" checked="checked">male
    	   <input type="radio" name="gender" value="female">female
    	   
   <% 
       }
       else
       {
   %>
    <input type="radio" name="gender" value="male">male
    <input type="radio" name="gender" value="female" checked="checked">female
    	   	 
    	 
   <%   
       }
   %>
<td><input type="radio" name="gender" value="male">male</td>
<td><input type="radio" name="gender" value="female">female</td>
</tr>
<tr>
<td>address</td>
<td><textarea rows="5"  cols="22" name="address"value="<%=e.getAddress() %>"></td>></textarea></td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" name="action" value="UPDATE" class="btn-btn primary">
</td>
</tr>
</table>
</form>
</body>
</html>
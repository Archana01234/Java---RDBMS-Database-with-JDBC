<%@page import="com.dao.EmpDao"%>
<%@page import="com.bean.Emp"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<table border="5" width="100px" cellpadding="10px" sellspacing="100px">
<tr>
<th>ID</th>
<th>FIRST NAME</th>
<Th>LAST NAME</Th>
<th>EMAIL</th>
<th>MOBILE</th>
<th>ADDRESS</th>
<th>GENDER</th>
<th>EDIT</th>
<th>DELETE</th>
</tr>
<%
     List<Emp> list=EmpDao.getallemps();
        for(Emp e:list)
        {
   %>
        <tr>
        <td><%=e.getId() %></td>
        <td><%=e.getFname() %></td>
        <td><%=e.getLname() %></td> 
        <td><%=e.getEmail() %></td>
        <td><%=e.getMobile() %></td>
        <td><%=e.getAddress() %></td>
        <td><%=e.getgender() %></td> 
        <td>
        <form name="edit" method="post" action="Empcontroller">
        <input type="hidden" name="id" value="<%=e.getId() %>">
        <input type="submit" name="action" value="EDIT" class="btn btn-primary">
        </form>
        </td>
        <td>
         <form name="delete" method="post" action="Empcontroller">
        <input type="hidden" name="id" value="<%=e.getId() %>">
        <input type="submit" name="action" value="DELETE" class="btn btn-Danger">
        </form>
        </td>
           
   <%
        }
%>
</table>
</body>
</html>
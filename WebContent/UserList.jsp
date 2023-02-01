<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList"%>
    <%@ page import="com.um.model.User"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="a"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Management System</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

</head>
<body>
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" >USERMANAGEMENT SYSTEM</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/list">User</a>
        </li>
        </ul>
        </div>
        </div>
        </nav>
         <h1 style=color:blue" allign="center">USER MANAGEMENT SYSTEM</h1>
        <hr></hr>
        <br>
        <div class="container">
        <a href="<%=request.getContextPath()%>/add" class="btn btn-success"/>ADD USER</a>
        <br><br>
        <table class="table table-striped">
        <thead>
        <th>ID</th>
        <th>NAME</th>
        <th>EMAIL</th>
        <th>CITY</th>
        <th>ACTIONS</th>
        </thead>
        <tbody>
      <a:forEach items="${display}" var="u">
      <tr>
            <td><a:out value="${u.id}"></a:out></td>
            <td><a:out value="${u.name}"></a:out></td>
            <td><a:out value="${u.email}"></a:out></td>
            <td><a:out value="${u.city}"></a:out></td>
            <td><a href="edit?id=<a:out value="${u.id}"></a:out>">EDIT</a>&nbsp;&nbsp;<a href="delete?id=<a:out value="${u.id }"></a:out>">DELETE</a></td>
      </tr>
      
      </a:forEach>
    	   
        
        
        </tbody>
        </table>
         </div>
        
</body>
</html>
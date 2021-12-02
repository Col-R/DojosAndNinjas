<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Dojo Page</title>
</head>
<body>

<div class="container">
<h1>${dojoDetails.dojoName} Ninjas!</h1>
<hr>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Age</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items = "${dojoDetails.ninjas}" var = "ninja">
    <tr>
      <td>${ninja.firstName }</td>
      <td>${ninja.lastName }</td>
      <td>${ninja.age}</td>
    </tr>
    </c:forEach>
  </tbody>
</table>
<h5><a href = "/">Add a new Dojo</a></h5>
<h5><a href = "/ninjas/new">Add a new Ninja</a></h5>
</div>
</body>
</html>
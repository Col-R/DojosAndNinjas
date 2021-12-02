<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>New Dojo</title>
</head>
<body>



<div class = "container">
<div class = "row m-4 offset-6">
<h1>Create a new Dojo</h1>

<form:form method = "POST" action = "/dojos/new" modelAttribute="dojo">
<!-- Dojo Name -->
	<form:label path="dojoName">Dojo Name</form:label>
	<form:errors path = "dojoName"></form:errors>
	<form:input type = "text" path="dojoName"/>
	<button type="submit" class="btn btn-primary">Submit</button>
</form:form>

<h5><a href = "/ninjas/new">Add a new Ninja</a></h5>
</div>
</div>
</body>
</html>
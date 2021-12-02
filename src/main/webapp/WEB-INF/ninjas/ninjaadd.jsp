<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Add New Ninja</title>
</head>
<body>
<div class = "container">
<h2>New Ninja</h2>

<form:form method = "POST" action = "/ninjas/newNinja" modelAttribute = "ninja">
	<form:select path="dojoLocation">
	<form:label path="dojoLocation">Dojo</form:label>
		<c:forEach items = "${dojos}" var = "dojo">
			<option value = "${dojo.id}">${dojo.dojoName}</option>
		</c:forEach>
	</form:select>
	<div class = "form-control">
		<form:label path = "firstName">First Name:</form:label>
		<form:errors path = "firstName"/>
		<form:input type = "text" path="firstName"/>
	</div>
	<div class = "form-control">
		<form:label path = "lastName">Last Name:</form:label>
		<form:errors path = "lastName"/>
		<form:input type = "text" path = "lastName"/>
	</div>
	<div class = "form-control">
		<form:label path = "age">Age:</form:label>
		<form:errors path = "age"/>
		<form:input type = "text" path = "age"/>
	</div>
	

	<button type="submit" class="btn btn-primary">Submit</button>
</form:form>
<h5><a href = "/">Add a new Dojo</a></h5>

</div>
</body>
</html>
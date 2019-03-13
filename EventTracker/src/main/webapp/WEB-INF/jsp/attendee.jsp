<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attendee page</title>
<style type="text/css">
	.error {
		color: #ff0000;
	}
	
	.errorblock {
		color: #000;
		background-color: #ffEEEE;
		border: 3px solid #ff0000;
		padding: 8px;
		margin: 16px;
	}
</style>
</head>
<body>

    <a href="?language=en">English</a>&nbsp
    <a href="?language=fr">French</a>
    <br/><br>
	<form:form modelAttribute="attendee">
		<form:errors path="*" cssClass="errorblock" element="div" />
		<label for="textinput1"><spring:message code="attendee.name"/>:</label>
		<form:input path="name" cssErrorClass="error" />
		<form:errors path="name" cssClass="error" />
		<br>
		<label for="textinput2"><spring:message code="attendee.email.address"/>:</label>
		<form:input path="emailAddress" cssErrorClass="error" />
		<form:errors path="emailAddress" cssClass="error" />
		<br>
		<input type="submit" class="btn" value="<spring:message code="attendee.btn"/>" />
	</form:form>

</body>
</html>
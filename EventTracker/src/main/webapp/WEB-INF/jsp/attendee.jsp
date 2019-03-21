<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
<div align="center">
	<a href="?language=en">English</a>&nbsp
	<a href="?language=fr">French</a>
	<br />
	<br>
	<form:form modelAttribute="attendee">
		<form:errors path="*" cssClass="errorblock" element="div" />
		<table>
			<tr>
				<td><label for="textinput1"><spring:message
							code="attendee.name" />:</label></td>
				<td><form:input path="name" cssErrorClass="error" /> <form:errors
						path="name" cssClass="error" /></td>
			</tr>
			<tr>
				<td><label for="textinput2"><spring:message
							code="attendee.email.address" />:</label></td>
				<td><form:input path="emailAddress" cssErrorClass="error" /> <form:errors
						path="emailAddress" cssClass="error" /></td>
			</tr>
			<tr>
				<td><label for="textinput3"><spring:message
							code="attendee.phonenumber" />:</label></td>
				<td><form:input path="phoneNumber" cssErrorClass="error" /> <form:errors
						path="phoneNumber" cssClass="error" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" class="btn"
					value="<spring:message code="attendee.btn"/>" /></td>
			</tr>
		</table>
	</form:form>
</div>
</body>
</html>
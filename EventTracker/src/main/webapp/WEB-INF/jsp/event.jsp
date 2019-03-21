<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event page</title>
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
		<form:form modelAttribute="event">
			<form:errors path="*" cssClass="errorblock" element="div" />
			<table>
				<tr>
					<td><label for="textinput1">Enter Minutes:</label></td>
					<td><form:input path="name" cssErrorClass="error" /> <form:errors
							path="name" cssClass="error" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						class="btn" value="Enter Event" /></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>
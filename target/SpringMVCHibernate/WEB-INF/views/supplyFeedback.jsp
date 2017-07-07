<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>

<html>
<head>
	<title>Feedback Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<h1>
	Feedback
</h1>
<c:url var="feedbackAction" value="/feedback/${supply.id}" ></c:url>
<form:form action="${feedbackAction}" commandName="supply">
<table>

<form:textarea path="feedback"  rows="10" cols="70" />
	<tr>
		<td colspan="2">
			<c:if test="${!empty supply.feedback}">
				<input type="submit"
					value="<spring:message text="Update Feedback"/>" />
			</c:if>
			<c:if test="${empty supply.feedback}">
				<input type="submit"
					value="<spring:message text="Submit Feedback"/>" />
			</c:if>
		</td>
	</tr>
 </table>
 <input type="hidden" name="supply" value='${supply}'>
 </form:form>
</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>AppUser Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<h1>
	Add a AppUser
</h1>

<c:url var="addAction" value="/appUser/add" ></c:url>

<form:form action="${addAction}" commandName="appUser">
<table>
	<c:if test="${!empty appUser.enterpriseid}">
	<tr>
		<td>
			<form:label path="password">
				<spring:message text="password"/>
			</form:label>
		</td>
		<td>
			<form:input path="password" readonly="true" size="8"  disabled="true" />
			<form:hidden path="password" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="enterpriseid">
				<spring:message text="enterpriseid"/>
			</form:label>
		</td>
		<td>
			<form:input path="enterpriseid" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="teamname">
				<spring:message text="teamname"/>
			</form:label>
		</td>
		<td>
			<form:input path="teamname" />
		</td>
	</tr>
		<tr>
		<td>
			<form:label path="dulead">
				<spring:message text="dulead"/>
			</form:label>
		</td>
		<td>
			<form:input path="dulead" />
		</td>
	</tr>
		<tr>
		<td>
			<form:label path="pmoapproval">
				<spring:message text="pmoapproval"/>
			</form:label>
		</td>
		<td>
			<form:input path="pmoapproval" />
		</td>
	</tr>
	
			<tr>
		<td>
			<form:label path="enabled">
				<spring:message text="enabled"/>
			</form:label>
		</td>
		<td>
			<form:input path="enabled" />
		</td>
	</tr>
	
			<tr>
		<td>
			<form:label path="role">
				<spring:message text="role"/>
			</form:label>
		</td>
		<td>
			<form:input path="role" />
		</td>
	</tr>
	
	<tr>
		<td colspan="2">
			<c:if test="${!empty appUser.enterpriseid}">
				<input type="submit"
					value="<spring:message text="Edit AppUser"/>" />
			</c:if>
			<c:if test="${empty appUser.enterpriseid}">
				<input type="submit"
					value="<spring:message text="Add AppUser"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>
<h3>AppUsers List</h3>
<c:if test="${!empty listAppUsers}">
	<table class="tg">
	<tr>
		<th width="80">enterpriseid</th>
		<th width="120">teamname</th>
		<th width="120">dulead</th>
		<th width="60">pmoapproval</th>
		<th width="60">enabled</th>
		<th width="60">role</th>
	</tr>
	<c:forEach items="${listAppUsers}" var="appUser">
		<tr>
			<td>${appUser.enterpriseid}</td>
			<td>${appUser.teamname}</td>
			<td>${appUser.dulead}</td>
			<td>${appUser.pmoapproval}</td>
			<td>${appUser.enabled}</td>
			<td>${appUser.role}</td>
			
			<td><a href="<c:url value='/editAppUser/${appUser.enterpriseid}' />" >Edit</a></td>
			<td><a href="<c:url value='/removeAppUser/${appUser.enterpriseid}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>

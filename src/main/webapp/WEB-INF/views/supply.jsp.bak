<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Supply Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<h1>
	Add a Supply
</h1>

<c:url var="addAction" value="/supply/add" ></c:url>

<form:form action="${addAction}" commandName="supply">
<table>
	<c:if test="${!empty supply.resourceName}">
	<tr>
		<td>
			<form:label path="id">
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="id" readonly="true" size="8"  disabled="true" />
			<form:hidden path="id" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="resourceName">
				<spring:message text="Resource Name*"/>
			</form:label>
		</td>
		<td>
			<form:input path="resourceName" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="sourcingType">
				<spring:message text="Sourcing Type*"/>
			</form:label>
		</td>
		<td>
			<form:input path="sourcingType" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="sourcingStage">
				<spring:message text="Sourcing Stage"/>
			</form:label>
		</td>
		<td>
			<form:input path="sourcingStage" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="profileSourced">
				<spring:message text="Profile Sourced"/>
			</form:label>
		</td>
		<td>
			<form:input path="profileSourced" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="profileShortlisted">
				<spring:message text="Profile Shortlisted"/>
			</form:label>
		</td>
		<td>
			<form:input path="profileShortlisted" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="profileRejected">
				<spring:message text="Profile Rejected"/>
			</form:label>
		</td>
		<td>
			<form:input path="profileRejected" />
		</td> 
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty supply.resourceName}">
				<input type="submit"
					value="<spring:message text="Edit Supply"/>" />
			</c:if>
			<c:if test="${empty supply.resourceName}">
				<input type="submit"
					value="<spring:message text="Add Supply"/>" />
			</c:if>
		</td>
	</tr>
	
</table>
</form:form>
<br>
<h3>Supply List</h3>
<c:if test="${!empty listSupply}">
	<table class="tg">
	<tr>
		<th width="60">Supply ID</th>
		<th width="120">Resource Name</th>
		<th width="120">Sourcing Type</th>
		<th width="60">Sourcing Stage</th>
		<th width="60">Profile Sourced</th>
		<th width="60">Profile Shortlisted</th>
		<th width="60">Profile Rejected</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listSupply}" var="supply">
		<tr>
			<td>${supply.id}</td>
			<td>${supply.resourceName}</td>
			<td>${supply.sourcingType}</td>
			<td>${supply.sourcingStage}</td>
			<td>${supply.profileSourced}</td>
			<td>${supply.profileShortlisted}</td>
			<td>${supply.profileRejected}</td>
			<td><a href="<c:url value='/editSupply/${supply.id}' />" >Edit</a></td>
			<td><a href="<c:url value='/removeSupply/${supply.id}' />" >Delete</a></td>
			<td><a href="<c:url value='/supplyFeedback/${supply.id}' />" >Feedback</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>
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
	<style>
		ul {
		    list-style-type: none;
		    margin: 0;
		    padding: 0;
		    width: 1500px;
		    background-color: black;
		}
		li {
		    float: left;
		}
		li a {
		    display: block;
		    color: white;
		    padding: 14px 16px;
		    text-decoration: none;
		}
		li a:hover {
		    background-color: gray;
		}
	</style>
</head>
<body bgcolor=ECF3F3>
<h1>
	Add a Supply
</h1>
<ul>
  <li><a class="active" href="<c:url value='/demands' />">Demand</a></li>
  <li><a  href="<c:url value='/supplyList' />">Supply List</a></li>
  <li><a  href="<c:url value='/demandList' />">Demand List</a></li>
  </ul>
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
			<form:select path="profileSourced" >
				<option value="false">No</option>
   				<option value="true">Yes</option>
			</form:select>
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="profileShortlisted">
				<spring:message text="Profile Shortlisted"/>
			</form:label>
		</td>
		<td>
			<form:select path="profileShortlisted" >
				<option value="false">No</option>
   				<option value="true">Yes</option>
			</form:select>
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="profileRejected">
				<spring:message text="Profile Rejected"/>
			</form:label>
		</td>
		<td>
			<form:select path="profileRejected" >
				<option value="false">No</option>
   				<option value="true">Yes</option>
			</form:select>
		</td> 
	</tr>
	<tr>
		<td colspan="2">
		<form:hidden path="supply.demand.id" />
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

</body>
</html>
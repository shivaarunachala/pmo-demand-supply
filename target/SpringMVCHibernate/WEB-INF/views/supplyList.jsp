<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
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
<h3>Supply List</h3>
<ul>
  <li><a class="active" href="<c:url value='/demands' />">Demand</a></li>
  <li><a  href="<c:url value='/supply' />">Supply</a></li>
  <li><a  href="<c:url value='/demandList' />">Demand List</a></li>
  </ul>
  <br>
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
		<th width="60">Feedback</th>
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
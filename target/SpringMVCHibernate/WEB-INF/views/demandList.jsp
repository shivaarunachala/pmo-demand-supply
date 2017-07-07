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

<h3>Demands List</h3>
<ul>
  <li><a class="active" href="<c:url value='/demands' />">Demand</a></li>
  <li><a  href="<c:url value='/supply' />">Supply</a></li>
  <li><a  href="<c:url value='/supplyList' />">Supply List</a></li>
  </ul>
  <br>
<c:if test="${!empty listDemands}">
	<table class="tg">
	<tr>
		<th width="60">Demand ID</th>
		<th width="120">Project Name</th>
		<th width="120">Location</th>
		<th width="60">RRD No</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
		<th width="60">View</th>
		<th width="60">Supply</th>
	</tr>
	<c:forEach items="${listDemands}" var="demand">
		<tr>
			<td>${demand.id}</td>
			<td>${demand.projectName}</td>
			<td>${demand.location}</td>
			<td>${demand.rrdNo}</td>
			<td><a href="<c:url value='/editDemand/${demand.id}' />" >Edit</a></td>
			<td><a href="<c:url value='/removeDemand/${demand.id}' />" >Delete</a></td>
			<td><a href="<c:url value='/viewDemand/${demand.id}' />">View</a></td>
			<td><a href="<c:url value='/supply' />">Supply</a></td>
		</tr>
	</c:forEach>
	</table>	
</c:if>
</body>
</html>
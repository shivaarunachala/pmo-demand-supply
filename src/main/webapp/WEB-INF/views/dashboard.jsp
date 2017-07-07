<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page session="false" %>
<html>
<head>
	<title>Dashboard</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

.mySlides {display: none}
</style>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body bgcolor=ECF3F3>
<jsp:include page="header.jsp"/>
<h1>
	<center>Dashboard</center>
</h1>

<h4> 	
 	<sec:authorize access="hasRole('ROLE_PMO')">
 		<a href="<c:url value='/supply' />" class="w3-bar-item w3-button w3-padding-large">Add Supply</a>
 	</sec:authorize>
    <a href="<c:url value='/demandList' />" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Demand List</a>
    <a href="<c:url value='/supplyList' />" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Supply List</a>
    <sec:authorize access="hasAnyRole('ROLE_PMO')">
		<a href="<c:url value='/appUsers' />" class="w3-bar-item w3-button w3-padding-large">Manage Users</a>
	</sec:authorize>    
	<sec:authorize access="hasAnyRole('ROLE_PMO','ROLE_MGR')">
		<a href="<c:url value='/report' />" class="w3-bar-item w3-button w3-padding-large">Reports</a>
	</sec:authorize>    
</h4> 






</body>
</html>

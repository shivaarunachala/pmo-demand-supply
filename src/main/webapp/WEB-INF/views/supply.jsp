<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ page session="false" %>
<html>
<head>
	<title>Supply Page</title>
	<style type="text/css">
		@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100);
		html{
    background-color: #f3f3f3;
}

/*
	Theme Name: CSS3 Contact Form
	Date: April 2013
	Description: Basic HTML5/CSS3 contact form
	Version: 1.0
	Author: Christian Vasile
	Author URL: http://christianvasile.com
*/

/* ===========================
   ======= Body style ======== 
   =========================== */

body {
	padding: 50px 100px;
	font-size: 13px;
	font-style: Verdana, Tahoma, sans-serif;
}

h2 {
	margin-bottom: 20px;
	color: #474E69;
}

/* ===========================
   ====== Contact Form ======= 
   =========================== */

.text input, textarea {
	padding: 10px;
	border: 1px solid #E5E5E5;
	width: 200px;
	color: #999999;
	box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 8px;
	-moz-box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 8px;
	-webkit-box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 8px;		
}

textarea {
	width: 400px;
	height: 150px;
	max-width: 400px;
	line-height: 18px;
}

input:hover, textarea:hover,
input:focus, textarea:focus {
	border-color: 1px solid #C9C9C9;
	box-shadow: rgba(0, 0, 0, 0.2) 0px 0px 8px;
	-moz-box-shadow: rgba(0, 0, 0, 0.2) 0px 0px 8px;
	-webkit-box-shadow: rgba(0, 0, 0, 0.2) 0px 0px 8px;	
}

.form label {
	margin-left: 10px;
	color: #999999;
}

/* ===========================
   ====== Submit Button ====== 
   =========================== */

.submit input {
	width: 100px; 
	height: 40px;
	background-color: #974E69; 
	color: #FFF;
	border-radius: 3px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;		
}



ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111;
}
body {
  background-color: #3e94ec;
  font-family: "Roboto", helvetica, arial, sans-serif;
  font-size: 16px;
  font-weight: 400;
  text-rendering: optimizeLegibility;
}

div.table-title {
   display: block;
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
}

.table-title h4 {
   color: #fafafa;
   font-size: 30px;
   font-weight: 400;
   font-style:normal;
   font-family: "Roboto", helvetica, arial, sans-serif;
   text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
   text-transform:uppercase;
}


/*** Table Styles **/

.table-fill {
  background: white;
  border-radius:3px;
  border-collapse: collapse;
  height: 320px;
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  animation: float 5s infinite;
}
 
th {
  color:#D5DDE5;;
  background:#1b1e24;
  border-bottom:4px solid #9ea7af;
  border-right: 1px solid #343a45;
  font-size:23px;
  font-weight: 100;
  padding:12px;
  text-align:left;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  vertical-align:middle;
}

th:first-child {
  border-top-left-radius:3px;
}
 
th:last-child {
  border-top-right-radius:3px;
  border-right:none;
}
  
tr {
  border-top: 1px solid #C1C3D1;
  border-bottom-: 1px solid #C1C3D1;
  color:#666B85;
  font-size:16px;
  font-weight:normal;
  text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}
 
tr:hover td {
  background:#4E5066;
  color:#FFFFFF;
  border-top: 1px solid #22262e;
  border-bottom: 1px solid #22262e;
}
 
tr:first-child {
  border-top:none;
}

tr:last-child {
  border-bottom:none;
}
 
tr:nth-child(odd) td {
  background:#EBEBEB;
}
 
tr:nth-child(odd):hover td {
  background:#4E5066;
}

tr:last-child td:first-child {
  border-bottom-left-radius:3px;
}
 
tr:last-child td:last-child {
  border-bottom-right-radius:3px;
}
 
td {
  background:#FFFFFF;
  padding:10px;
  text-align:left;
  vertical-align:middle;
  font-weight:300;
  font-size:18px;
  text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
  border-right: 1px solid #C1C3D1;
}

td:last-child {
  border-right: 0px;
}

th.text-left {
  text-align: left;
}

th.text-center {
  text-align: center;
}

th.text-right {
  text-align: right;
}

td.text-left {
  text-align: left;
}

td.text-center {
  text-align: center;
}

td.text-right {
  text-align: right;
}

	</style>
	
</head>
<body bgcolor=ECF3F3>
<jsp:include page="header.jsp"/>
<h1>
<center>	Add a Supply</center>
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
			<form:label path="resourceName" class="form-control">>
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
		<td>
			<form:label path="demand.id">
				<spring:message text="Demand Id"/>
			</form:label>
		</td>
		<td>
			<form:input path="demand.id" /> 
		</td> 
	</tr>
	
	<tr>
		<td colspan="2">
		<c:if test="${!empty supply.demand}"> 
				<form:hidden path="demand.id" />
		</c:if>
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
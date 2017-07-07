<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Demand Page</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  	<script>
	  $( function() {
	    $( "#datepicker" ).datepicker();
	    $( "#datepicker1" ).datepicker();
	    $( "#datepicker2" ).datepicker();
	    $( "#datepicker3" ).datepicker();
	  } );
	  
   </script>
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
	<center>View Demand</center>
</h1>
<ul>
  <li><a class="active" href="<c:url value='/supply' />">Supply</a></li>
  <li><a  href="<c:url value='/demandList' />">Demands</a></li>
  </ul>
<c:url var="addAction" value="/demand/add" ></c:url>

<form:form action="${addAction}" commandName="demand">
<table>
	<c:if test="${!empty demand.projectName}">
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
			<form:label path="projectName">
				<spring:message text="Project Name*"/>
			</form:label>
		</td>
		<td>
			<form:input path="projectName" readonly="true"  disabled="true" />
		</td> 
		<td>
			<form:label path="team">
				<spring:message text="Team"/>
			</form:label>
		</td>
		<td>
			<form:input path="team" readonly="true"  disabled="true"/>
		</td>
		<td>
			<form:label path="deliveryCentre">
				<spring:message text="Delivery Centre"/>
			</form:label>
		</td>
		<td>
			<form:input path="deliveryCentre" readonly="true"  disabled="true"/>
		</td>
		
	</tr>
	<tr>
		<td>
			<form:label path="location">
				<spring:message text="Location*"/>
			</form:label>
		</td>
		<td>
			<form:input path="location" readonly="true"  disabled="true"/>
		</td>
		<td>
			<form:label path="rrdNo">
				<spring:message text="RRD No*"/>
			</form:label>
		</td>
		<td>
			<form:input path="rrdNo" readonly="true"  disabled="true"/>
		</td>
		<td>
			<form:label path="mysID">
				<spring:message text="MYs ID" />
			</form:label>
		</td>
		<td>
			<form:input path="mysID" readonly="true"  disabled="true" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="chargeable">
				<spring:message text="Chargeable"/>
			</form:label>
		</td>
		<td>
			<form:select disabled="true" path="chargeable" >
				<form:option value="false" label ="No"/>
	   			<form:option value="true" label ="Yes" />
			</form:select>				
			
		</td>
		<td>
			<form:label path="sold">
				<spring:message text="Sold"/>
			</form:label>
		</td>
		<td>
			<form:input path="sold" readonly="true"  disabled="true"/>
		</td>
		<td>
			<form:label path="readyToLook">
				<spring:message text="Ready To Look"/>
			</form:label>
		</td>
		<td>
			<form:input path="readyToLook" readonly="true"  disabled="true"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="careerLevel">
				<spring:message text="Career Level" />
			</form:label>
		</td>
		<td>
			<form:input path="careerLevel" readonly="true"  disabled="true"/>
		</td>
		<td>
			<form:label path="flexCareerLevel">
				<spring:message text="FLEX on Career Level"/>
			</form:label>
		</td>
		<td>
			<form:select disabled="true" path="flexCareerLevel" >
				<form:option value="false" label ="No"/>
	   			<form:option value="true" label ="Yes" />
			</form:select>
		</td>
		<td>
			<form:label path="roleTitle">
				<spring:message text="Role Title"/>
			</form:label>
		</td>
		<td>
			<form:input path="roleTitle" readonly="true"  disabled="true"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="primarySkill">
				<spring:message text="Primary Skill*"/>
			</form:label>
		</td>
		<td>
			<form:input path="primarySkill" readonly="true"  disabled="true"/>
		</td>
		<td>
			<form:label path="addSkill">
				<spring:message text="Additional Skill"/>
			</form:label>
		</td>
		<td>
			<form:input path="addSkill" readonly="true"  disabled="true" />
		</td>
		<td>
			<form:label path="jobDescription">
				<spring:message text="Job Description"/>
			</form:label>
		</td>
		<td>
			<form:input path="jobDescription" readonly="true"  disabled="true"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="demandStatus">
				<spring:message text="Demand Status*"/>
			</form:label>
		</td>
		<td>
			<form:input path="demandStatus" readonly="true"  disabled="true"/>
		</td>
		<td>
			<form:label path="priority">
				<spring:message text="Priority"/>
			</form:label>
		</td>
		<td>
			<form:input path="priority" readonly="true"  disabled="true"/>
		</td>
		<td>
			<form:label path="demandType">
				<spring:message text="Demand Type"/>
			</form:label>
		</td>
		<td>
			<form:input path="demandType" readonly="true"  disabled="true"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="reasonForReplacement">
				<spring:message text="Reason For Replacement"/>
			</form:label>
		</td>
		<td>
			<form:input path="reasonForReplacement" readonly="true"  disabled="true"/>
		</td>
		<td>
			<form:label path="replacement">
				<spring:message text="Replacement For"/>
			</form:label>
		</td>
		<td>
			<form:input path="replacement" readonly="true"  disabled="true"/>
		</td>
		<td>
			<form:label path="clientManager">
				<spring:message text="Client Manager"/>
			</form:label>
		</td>
		<td>
			<form:input path="clientManager" readonly="true"  disabled="true"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="demandCreatedDate">
				<spring:message text="Demand Created Date"/>
			</form:label>
		</td>
		<td>
			<form:input path="demandCreatedDate" id="datepicker" readonly="true"  disabled="true"/>
		</td>
		<td>
			<form:label path="roleStartDate">
				<spring:message text="Role Start Date"/>
			</form:label>
		</td>
		<td>
			<form:input path="roleStartDate" id="datepicker1" readonly="true"  disabled="true"/>
						
		</td>
		<td>
			<form:label path="roleEndDate">
				<spring:message text="Role End Date"/>
			</form:label>
		</td>
		<td>
			<form:input path="roleEndDate" id="datepicker2" readonly="true"  disabled="true"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="demandClosedDate">
				<spring:message text="Demand Closed Date"/>
			</form:label>
		</td>
		<td>
			<form:input path="demandClosedDate" id="datepicker3" readonly="true"  disabled="true"/>
		</td>
		<td>
			<form:label path="clientInterview">
				<spring:message text="Client Interview"/>
			</form:label>
		</td>
		<td>
			<form:select disabled="true" path="clientInterview" >
				<form:option value="false" label="Pending"/>
   				<form:option value="true" label="Completed"/>
			</form:select>
		</td>
		<td>
			<form:label path="profileSharedClient">
				<spring:message text="Profiles Shared With Client"/>
			</form:label>
		</td>
		<td>
			<form:select disabled="true" path="profileSharedClient" >
				<form:option value="false" label ="Not Yet"/>
	   			<form:option value="true" label ="Yes" />
			</form:select>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="resourceLocked">
				<spring:message text="Resource Locked"/>
			</form:label>
		</td>
		<td>
			<form:select disabled="true" path="resourceLocked" >
				<form:option value="false" label ="No"/>
	   			<form:option value="true" label ="Yes" />
			</form:select>
		</td>
		<td>
			<form:label path="comments">
				<spring:message text="Comments"/>
			</form:label>
		</td>
		<td>
			<form:input path="comments" readonly="true"  disabled="true"/>
		</td>
		<td>
			<form:label path="roleID">
				<spring:message text="Role ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="roleID" readonly="true"  disabled="true"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="billingRate">
				<spring:message text="Billing Rate"/>
			</form:label>
		</td>
		<td>
			<form:input path="billingRate" readonly="true"  disabled="true"/>
		</td>
		<td>
			<form:label path="billCode">
				<spring:message text="Bill Code"/>
			</form:label>
		</td>
		<td>
			<form:input path="billCode" readonly="true"  disabled="true"/>
		</td>		
	</tr>
	<tr>
	</tr>
</table>	

<c:if test="${!empty supply}">
	<table class="tg">
	<tr>
		<th width="60">Supply ID</th>
		<th width="120">Resource Name</th>
		<th width="120">Sourcing Type</th>
		<th width="60">Sourcing Stage</th>
		<th width="60">Profile Sourced</th>
		<th width="60">Profile Shortlisted</th>
		<th width="60">Profile Rejected</th>
		<th width="60">Demand id</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
		<th width="60">Feedback</th>
	</tr>
	<c:forEach items="${supply}" var="s">
		<tr>
			<td>${s.id}</td>
			<td>${s.resourceName}</td>
			<td>${s.sourcingType}</td>
			<td>${s.sourcingStage}</td>
			<td>${s.profileSourced}</td>
			<td>${s.profileShortlisted}</td>
			<td>${s.profileRejected}</td>
			<td>${s.demand.id}</td>
			<td><a href="<c:url value='/editSupply/${s.id}' />" >Edit</a></td>
			<td><a href="<c:url value='/removeSupply/${s.id}' />" >Delete</a></td>
			<td><a href="<c:url value='/supplyFeedback/${s.id}' />" >Feedback</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>

</form:form>


</body>
</html>

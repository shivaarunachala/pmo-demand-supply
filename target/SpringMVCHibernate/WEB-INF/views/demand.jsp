<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
	<title>Demand Page</title>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>
</head>
<body>
<h1>
	Add a Demand
</h1>

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
			<form:input path="projectName" />
		</td> 
		<td>
			<form:label path="team">
				<spring:message text="Team"/>
			</form:label>
		</td>
		<td>
			<form:input path="team" />
		</td>
		<td>
			<form:label path="deliveryCentre">
				<spring:message text="Delivery Centre"/>
			</form:label>
		</td>
		<td>
			<form:input path="deliveryCentre" />
		</td>
		
	</tr>
	<tr>
		<td>
			<form:label path="location">
				<spring:message text="Location*"/>
			</form:label>
		</td>
		<td>
			<form:input path="location" />
		</td>
		<td>
			<form:label path="rrdNo">
				<spring:message text="RRD No*"/>
			</form:label>
		</td>
		<td>
			<form:input path="rrdNo" />
		</td>
		<td>
			<form:label path="mysID">
				<spring:message text="MYs ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="mysID" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="chargeable">
				<spring:message text="Chargeable"/>
			</form:label>
		</td>
		<td>
			<form:input path="chargeable" />
		</td>
		<td>
			<form:label path="sold">
				<spring:message text="Sold"/>
			</form:label>
		</td>
		<td>
			<form:input path="sold" />
		</td>
		<td>
			<form:label path="readyToLook">
				<spring:message text="Ready To Look"/>
			</form:label>
		</td>
		<td>
			<form:input path="readyToLook" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="careerLevel">
				<spring:message text="Career Level"/>
			</form:label>
		</td>
		<td>
			<form:input path="careerLevel" />
		</td>
		<td>
			<form:label path="flexCareerLevel">
				<spring:message text="FLEX on Career Level"/>
			</form:label>
		</td>
		<td>
			<form:input path="flexCareerLevel" />
		</td>
		<td>
			<form:label path="roleTitle">
				<spring:message text="Role Title"/>
			</form:label>
		</td>
		<td>
			<form:input path="roleTitle" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="primarySkill">
				<spring:message text="Primary Skill*"/>
			</form:label>
		</td>
		<td>
			<form:input path="primarySkill" />
		</td>
		<td>
			<form:label path="addSkill">
				<spring:message text="Additional Skill"/>
			</form:label>
		</td>
		<td>
			<form:input path="addSkill" />
		</td>
		<td>
			<form:label path="jobDescription">
				<spring:message text="Job Description"/>
			</form:label>
		</td>
		<td>
			<form:input path="jobDescription" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="demandStatus">
				<spring:message text="Demand Status*"/>
			</form:label>
		</td>
		<td>
			<form:input path="demandStatus" />
		</td>
		<td>
			<form:label path="priority">
				<spring:message text="Priority"/>
			</form:label>
		</td>
		<td>
			<form:input path="priority" />
		</td>
		<td>
			<form:label path="demandType">
				<spring:message text="Demand Type"/>
			</form:label>
		</td>
		<td>
			<form:input path="demandType" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="reasonForReplacement">
				<spring:message text="Reason For Replacement"/>
			</form:label>
		</td>
		<td>
			<form:input path="reasonForReplacement" />
		</td>
		<td>
			<form:label path="replacement">
				<spring:message text="Replacement For"/>
			</form:label>
		</td>
		<td>
			<form:input path="replacement" />
		</td>
		<td>
			<form:label path="clientManager">
				<spring:message text="Client Manager"/>
			</form:label>
		</td>
		<td>
			<form:input path="clientManager" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="demandCreatedDate">
				<spring:message text="Demand Created Date"/>
			</form:label>
		</td>
		<td>
			<form:input path="demandCreatedDate" />
		</td>
		<td>
			<form:label path="roleStartDate">
				<spring:message text="Role Start Date"/>
			</form:label>
		</td>
		<td>
			<form:input path="roleStartDate" />
		</td>
		<td>
			<form:label path="roleEndDate">
				<spring:message text="Role End Date"/>
			</form:label>
		</td>
		<td>
			<form:input path="roleEndDate" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="demandClosedDate">
				<spring:message text="Demand Closed Date"/>
			</form:label>
		</td>
		<td>
			<form:input path="demandClosedDate" />
		</td>
		<td>
			<form:label path="clientInterview">
				<spring:message text="Client Interview"/>
			</form:label>
		</td>
		<td>
			<form:input path="clientInterview" />
		</td>
		<td>
			<form:label path="profileSharedClient">
				<spring:message text="Profiles Shared With Client"/>
			</form:label>
		</td>
		<td>
			<form:input path="profileSharedClient" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="resourceLocked">
				<spring:message text="Resource Locked"/>
			</form:label>
		</td>
		<td>
			<form:input path="resourceLocked" />
		</td>
		<td>
			<form:label path="comments">
				<spring:message text="Comments"/>
			</form:label>
		</td>
		<td>
			<form:input path="comments" />
		</td>
		<td>
			<form:label path="roleID">
				<spring:message text="Role ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="roleID" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="billingRate">
				<spring:message text="Billing Rate"/>
			</form:label>
		</td>
		<td>
			<form:input path="billingRate" />
		</td>
		<td>
			<form:label path="billCode">
				<spring:message text="Bill Code"/>
			</form:label>
		</td>
		<td>
			<form:input path="billCode" />
		</td>		
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty demand.projectName}">
				<input type="submit"
					value="<spring:message text="Edit Demand"/>" />
			</c:if>
			<c:if test="${empty demand.projectName}">
				<input type="submit"
					value="<spring:message text="Add Demand"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>
<h3>Demands List</h3>
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
	</tr>
	<c:forEach items="${listDemands}" var="demand">
		<tr>
			<td>${demand.id}</td>
			<td>${demand.projectName}</td>
			<td>${demand.location}</td>
			<td>${demand.rrdNo}</td>
			<td><a href="<c:url value='/editDemand/${demand.id}' />" >Edit</a></td>
			<td><a href="<c:url value='/removeDemand/${demand.id}' />" >Delete</a></td>
			<td><a href="<c:url value='/viewDemand/${demand.id}' />" >View</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>

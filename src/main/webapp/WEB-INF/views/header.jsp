<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/j_spring_security_logout" var="logoutUrl" />
<form action="${logoutUrl}" method="post" id="logoutForm">
	<input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}" />
</form>
<script>
	function formSubmit() {
		document.getElementById("logoutForm").submit();
	}
</script>

	<div align="right"  style="padding-right: 50px;">
<sec:authorize access="hasRole('ROLE_MGR')">
 Role: Manager
</sec:authorize>
<sec:authorize access="hasRole('ROLE_PMO')">
 Role: PMO
</sec:authorize>
<sec:authorize access="hasRole('ROLE_LEAD')">
Role: LEAD
</sec:authorize>

<h6>
	<a href="javascript:formSubmit()" align="right" > Logout</a>
</h6>
</div>
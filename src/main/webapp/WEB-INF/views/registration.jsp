<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create an account</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="container">
	
	<c:url var="addAction" value="/appUser/add" ></c:url>

    <form:form method="POST" modelAttribute="userForm" action="${addAction}"  class="form-signin">
        <h2 class="form-signin-heading">Create your account</h2>
        <spring:bind path="enterpriseid">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="enterpriseid" class="form-control" placeholder="Enterprise id"
                            autofocus="true"></form:input>
                <form:errors path="enterpriseid"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="password">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                <form:errors path="password"></form:errors>
            </div>
        </spring:bind>

      <%--   <spring:bind path="passwordConfirm">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="passwordConfirm" class="form-control"
                            placeholder="Confirm your password"></form:input>
                <form:errors path="passwordConfirm"></form:errors>
            </div>
        </spring:bind> --%>


        <spring:bind path="teamname">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="teamname" class="form-control" placeholder="Team name"></form:input>
                <form:errors path="teamname"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="dulead">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="dulead" class="form-control" placeholder="Du Lead"></form:input>
                <form:errors path="dulead"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="role">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="role" class="form-control" placeholder="Role"></form:input>
                <form:errors path="role"></form:errors>
            </div>
        </spring:bind>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form:form>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>

	<c:if test="${not empty errCode}">
		<h1>${errCode} : Some exception occured!!!</h1>
	</c:if>

	<c:if test="${empty errCode}"> 
		<h1>Errors</h1>
	</c:if>

	<c:if test="${not empty errMsg}">
		<h2>${errMsg}</h2>
	</c:if>

</body>
</html>
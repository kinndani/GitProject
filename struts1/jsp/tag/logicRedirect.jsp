<%@ page contentType="text/html; charset=Shift_JIS"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<% request.setAttribute("key", "techscore"); %>
	<logic:redirect href="http://www.google.com/search" paramId="q" paramName="key"/>
	<hr>
	<html:link action="index">back to index</html:link>
</body>
</html>
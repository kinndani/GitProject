<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<html>
<head>
<title>ログイン画面</title>
</head>
<body>
	<html:form action="/login">
		ID:<html:text property="name"/><br>
		password:<html:text property="password"/><br>
		<html:submit value="ログイン"/>
	</html:form>
</body>
</html>
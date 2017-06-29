<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ログイン失敗</title>
</head>
<body>
	<p>ログインに失敗しました。ログイン名とパスワードを確認の上、再度ログインしてください。</p>
	<html:link action="/adminIndex">ログイン</html:link>
</body>
</html>
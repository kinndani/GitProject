<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TOP画面</title>
</head>
<body>
	<html:html>
		<h3 align="center">書籍販売サイト</h3>
		<center>
			<html:link action="/showInputKeywordForm">書籍の検索</html:link>
		</center>
	</html:html>
	<hr>
	<html:html>
		<h3 align="center">配列テスト</h3>
		<center>
			<html:form action="/test2">
				<html:text property="nums"></html:text>
				<html:submit>配列てすと</html:submit>
			</html:form>
		</center>
	</html:html>
</body>
</html>
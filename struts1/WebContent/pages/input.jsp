<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ログインページ</title>
</head>
<body>
	<form action="/struts1/login.do"  method="post">
		ID:<input type="text" name="id">
		<html:errors property="id" /><br>
		PASS:<input type="text" name="password"><br>
		<input type="submit" value="送信">
	</form>

	ダイナ送信
	<html:form action="/dyna">
		id:<html:text property="id"/><br>
		post:<html:text property="post" value=""/>
		-<html:text property="post" value=""/>
		<html:errors property="post" />
		<html:submit value="ダイナ送信"/>
	</html:form>

	BeanWrite
	<html:form action="/beanWrite">
		<html:text property="id"/>
		<html:text property="name"/>
		<html:submit value="beanWriteに送信"/>
	</html:form>
	<br>
	Logicタグ<br>
	<html:form action="/beanLogic">
		<html:submit value="beanLogicに送信"/>
	</html:form>
</body>
</html>
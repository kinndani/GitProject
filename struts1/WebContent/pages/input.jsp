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
	<hr>
	<html:form action="/nested">
		<html:submit value="Nestedに送信"/>
	</html:form>
	<hr>
	<html:form action="/forward">
		<html:submit value="ForwardActionで送信"/>
	</html:form>
	<hr>
	<html:form action="/operateUser" method="POST">
		<html:text property="id"/><br>
		<html:text property="name"/><br>
		<html:submit value="create" property="method"/>
		<html:submit value="update" property="method"/>
		<html:submit value="delete" property="method"/>
		<html:cancel/>
	</html:form>
	<hr>
	<html:form action="/operateUser2" method="POST">
		<html:text property="id"/><br>
		<html:text property="name"/><br>
		<html:submit property="method">
			<bean:message key="button.create"/>
		</html:submit>
		<html:submit property="method">
			<bean:message key="button.update"/>
		</html:submit>
		<html:submit property="method">
			<bean:message key="button.delete"/>
		</html:submit>
		<html:cancel value="キャンセル"/>
	</html:form>
	<hr>
	<html:form action="/createUser" method="POST">
		<html:submit property="method">
			<bean:message key="button.create"/>
		</html:submit>
	</html:form>
	<html:form action="/updateUser" method="POST">
		<html:submit property="method">
			<bean:message key="button.update"/>
		</html:submit>
	</html:form>
	<html:form action="/deleteUser" method="POST">
		<html:submit property="method">
			<bean:message key="button.delete"/>
		</html:submit>
	</html:form>


</body>
</html>
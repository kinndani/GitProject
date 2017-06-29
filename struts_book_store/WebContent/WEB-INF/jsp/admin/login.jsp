<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ログイン画面</title>
</head>
<body>
	<html:form action="/adminLogin">
	  <center>
	  <table border="1">
	    <tr>
	      <td>ログイン名</td>
	      <td>
	        <html:text property="loginName" size="20" maxlength="15"/>
	      </td>
	    </tr>
	    <tr>
	      <td>パスワード</td>
	      <td>
	        <html:password property="password" size="20" maxlength="15"/>
	      </td>
	    </tr>
	  </table>
	  <p><html:errors/>
	    <html:submit value="ログイン"/>
	    <html:reset value="リセット"/>
	  </p>
	</center>
	</html:form>
</body>
</html>
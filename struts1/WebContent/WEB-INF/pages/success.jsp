<%@page import="org.apache.struts.tiles.taglib.GetAttributeTag"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>成功画面</title>
</head>
<body>
ID:<%=request.getAttribute("id") %><br>
<html:messages id="message" message="true" property="mes1">
<%=message %>
</html:messages>
<br>
<br>
Beanタグ<br>
id:<bean:write name="id"/><br>
メッセージ：<bean:write name="message"/>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ダイナログインページ</title>
</head>
<body>
	ID:<%=request.getAttribute("id") %><br>
	POST1:<%=request.getAttribute("post1") %><br>
	POST2:<%=request.getAttribute("post2") %><br>
	<%
	String[] post =(String[])request.getAttribute("post");
	%>
	ダイナPOST1:<%=post[0] %><br>
	ダイナPOST2:<%=post[1] %>
</body>
</html>
<%@ page contentType="text/html; charset=Shift_JIS"%>
<html>
<head>
<title>ƒƒOƒCƒ“¬Œ÷</title>
</head>
<body>
	id:<%=(Integer) request.getAttribute("id")%><br>
	password:<%=(String) request.getAttribute("password")%>
	<html:errors property="password" /><br>
	list1:<%=(String) request.getAttribute("list1")%><br>
	list2:<%=(String) request.getAttribute("list2")%><br>

</body>
</html>
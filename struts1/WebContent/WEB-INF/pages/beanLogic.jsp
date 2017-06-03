<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BeanLogicタグ</title>
</head>
<body>
	<% int[] nums={1,2,3,4,5};
	request.setAttribute("nums", nums);
	%>
	<logic:iterate id="num" name="nums">
		num=<bean:write name="num"/><br>
	</logic:iterate>
</body>
</html>
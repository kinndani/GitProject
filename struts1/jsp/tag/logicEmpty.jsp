<%@ page contentType="text/html; charset=Shift_JIS"%>
<%@ page import="java.util.Map, java.util.HashMap" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%
Map map = new HashMap();
String str1 = null;
String str2 = new String("");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<logic:empty name="map">
	  map has no elements.
	</logic:empty>
	<logic:empty name="str1">
	  str1 is null or empty string.
	</logic:empty>
	<logic:notEmpty name="str2">
	  str2 is not null or empty.
	</logic:notEmpty>
	<hr>
	<html:link action="index">back to index</html:link>
</body>
</html>
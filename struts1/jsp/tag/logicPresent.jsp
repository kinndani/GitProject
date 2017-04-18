<%@ page contentType="text/html; charset=Shift_JIS"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<logic:present parameter="foo">
	  <bean:parameter id="foo" name="foo"/>
	  foo=<%= foo %>
	</logic:present>
	<hr>
	<logic:notPresent user="tomcat">
	  invalid access.
	</logic:notPresent>
	<hr>
	<html:link action="index">back to index</html:link>
</body>
</html>
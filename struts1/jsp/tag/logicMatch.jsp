<%@ page contentType="text/html; charset=Shift_JIS"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<logic:match parameter="foo" value="bar" location="start">
	  parameter foo starts with 'bar'.
	</logic:match>

	<logic:match parameter="foo" value="bar" location="end">
	  parameter foo ends with 'bar'.
	</logic:match>

	<logic:match parameter="foo" value="bar">
	  parameter bar includes 'bar'.
	</logic:match>

	<hr>

	<logic:notMatch parameter="foo" value="bar" location="start">
	  parameter foo does not start with 'bar'.
	</logic:notMatch>

	<logic:notMatch parameter="foo" value="bar" location="end">
	  parameter foo does not end with 'bar'.
	</logic:notMatch>
	<hr>
	<html:link action="index">back to index</html:link>
</body>
</html>
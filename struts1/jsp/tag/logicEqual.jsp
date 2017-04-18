<%@ page contentType="text/html; charset=Shift_JIS"%>
<%@ page import="javax.servlet.http.Cookie" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%
Cookie cookie = new Cookie("sessionId", "1000");
response.addCookie(cookie);
%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<logic:equal cookie="sessionId" value="1000">
	  sessionId は 1000 です。
	</logic:equal>

	<logic:equal header="Host" value="localhost:8080">
	  HTTP ヘッダ Host の値は、localhost:8080 です。
	</logic:equal>

	<% String bar = "bar"; %>
	<logic:equal parameter="foo" value="<%= bar %>">
	  リクエストパラメータ foo の値は <%= bar %> です。
	</logic:equal>
	<hr>
	<%
	  request.setAttribute("foo", new Integer(1));
	%>
	<logic:equal name="foo" value="1" scope="request">
	  foo's value is 1.
	</logic:equal>
	<logic:notEqual name="foo" value="0" scope="request">
	  foo's value is not 0.
	</logic:notEqual>
	<hr>
	<% request.setAttribute("foo_string", "bbb"); %>
	<logic:greaterThan name="foo_string" value="aaa" scope="request">
	  foo_string bbb is greater than aaa.
	</logic:greaterThan>
	<logic:lessThan name="foo_string" value="aaa" scope="request">
	  foo_string bbb is less than aaa.
	</logic:lessThan>
	<logic:greaterThan name="foo_string" value="ccc" scope="request">
	  foo_string bbb is greater than ccc.
	</logic:greaterThan>
	<logic:lessThan name="foo_string" value="ccc" scope="request">
	  foo_string bbb is less than ccc.
	</logic:lessThan>
	<hr>
	<% request.setAttribute("foo_integer", new Integer(100)); %>
	<logic:greaterThan name="foo_integer" value="100">
	  foo_integer 100 is greater than 100.
	</logic:greaterThan>
	<logic:greaterEqual name="foo_integer" value="100">
	  foo_integer 100 is greater than or equal to 100.
	</logic:greaterEqual>
	<logic:lessEqual name="foo_integer" value="100">
	  foo_integer 100 is less than or equal to 100.
	</logic:lessEqual>
	<logic:lessThan name="foo_integer" value="100">
	  foo_integer 100 is less than 100.
	</logic:lessThan>
	<hr>
	<html:link action="index">back to index</html:link>
</body>
</html>
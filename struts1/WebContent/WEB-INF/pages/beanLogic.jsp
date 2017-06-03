<%@page import="java.util.List"%>
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
	logic:iterate1<br>
	<% int[] nums={1,2,3,4,5};
	request.setAttribute("nums", nums);
	%>
	<logic:iterate id="num" name="nums">
		num=<bean:write name="num"/><br>
	</logic:iterate>
	<br>
	logic:iterate(List)<br>
	<%java.util.List list = new java.util.ArrayList();
	list.add("zero");
	list.add("one");
	list.add("two");
	list.add("three");
	list.add("four");
	request.setAttribute("list", list);
	request.setAttribute("offset", new Integer(2));
	%>
	<logic:iterate id="num" name="list" indexId="id" offset="offset">
		<bean:write name="id"/>:<bean:write name="num"/><br>
	</logic:iterate>
	<br>
	logic:iterate(Map)<br>
	<% java.util.Map map = new java.util.HashMap();
	   map.put("zero", "No.0");
	   map.put("one", "No.1");
	   map.put("two", "No.2");
	   map.put("three", "No.3");
	   map.put("four", "No.4");
	   request.setAttribute("map", map);
	%>
	<logic:iterate id="element" name="map">
	  <bean:write name="element" property="key"/> :
	  <bean:write name="element" property="value"/><br>
	</logic:iterate>
	<br>
	logic:equal<br>
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
<%@page import="java.util.List,java.util.ArrayList,java.util.Map,java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
<!DOCTYPE>
	<%
	Map<String,String> map2 = new HashMap<>();
	String str1 = null;
	String str2 = new String("");
	%>
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
	<%List<String> list = new ArrayList<>();
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
	<% Map<String,String>map = new HashMap<>();
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

	<logic:empty name="map2">
	  map has no elements.
	</logic:empty>
	<logic:empty name="str1">
	  str1 is null or empty string.
	</logic:empty>
	<logic:notEmpty name="str2">
	  str2 is not null or empty.
	</logic:notEmpty>
	<hr>
	<logic:present parameter="foo">
  	<bean:parameter id="foo" name="foo"/>
	  foo=<%= foo %>
	</logic:present>
	<hr>
	<logic:notPresent user="tomcat">
	  invalid access.
	</logic:notPresent>
	<hr>
	<logic:messagesPresent>
	  以下のエラーが発生しました。
	  <br><html:errors/>
	</logic:messagesPresent>
	<logic:messagesNotPresent>
	  エラーは発生しませんでした。
	</logic:messagesNotPresent>
	<hr>
	<%
	  String str3 = new String("文　字　列　１");
	  String str4 = new String("文　字　列　２");
	  String[] str_array = {str3, str4};
	  request.setAttribute("str1", str3);
	  request.setAttribute("str2", str4);
	  request.setAttribute("str_array",str_array);
	%>
	<logic:messagesPresent name="str1"><bean:write name="str1"/></logic:messagesPresent><br>
	<logic:messagesPresent name="str2"><bean:write name="str2"/></logic:messagesPresent><br>
	<logic:messagesPresent name="str3"><bean:write name="str3"/></logic:messagesPresent><br>
	<logic:messagesNotPresent name="str3">
	  str3 は request スコープに見つかりません。
	</logic:messagesNotPresent><br>

	<logic:messagesPresent name="str_array">
	  <logic:iterate name="str_array" id="str" indexId="id">
	    <%= id %>→<bean:write name="str"/><br>
	  </logic:iterate>
	</logic:messagesPresent>
	<hr>
	<%-- <logic:forward name="global"/> --%>
	<hr>
<%-- 	<% request.setAttribute("key", "techscore"); %>
	<logic:redirect href="http://www.google.com/search" paramId="q" paramName="key"/>
	<hr>
	<html:link action="index">back to index</html:link> --%>
</body>
</html>
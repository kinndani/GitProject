<%@ page contentType="text/html; charset=Shift_JIS" import="tag.SampleBean, java.util.Date" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<% int[]nums = {1,2,3,4,5};
	request.setAttribute("nums",nums);
	%>
	<logic:iterate id="num" name="nums" length="3">
		<bean:write name="num"/><br>
	</logic:iterate>
	<hr>
	<%
	java.util.List list = new java.util.ArrayList();
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
	<hr>
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
	<hr>
	<html:link action="index">back to index</html:link>
</body>
</html>
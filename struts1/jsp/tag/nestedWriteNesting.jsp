<%@ page contentType="text/html; charset=Shift_JIS" %>
<%@ page import="tag.FirstBean" %>
<%@ page import="tag.SecondBean" %>
<%@ page import="tag.ThirdBean" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-nested" prefix="nested" %>
<html>
<head>
<title>nested タグライブラリ writeNesting タグ</title>
</head>
<body>
	<% ThirdBean third = new ThirdBean();
	   third.setName("sample_name");
	   third.setType("sample_type");
	   SecondBean second = new SecondBean();
	   second.setThird(third);
	   FirstBean first = new FirstBean();
	   first.setSecond(second);
	   request.setAttribute("first", first); %>
	<nested:root name="first">
	 1. nesting level: <nested:writeNesting property="hoge"/><br>
	  <nested:nest property="second">
	    2. nesting level: <nested:writeNesting property="hoge" /><br>
	    <nested:nest property="third">
	      third name: <nested:write property="name"/><br>
	      third type: <nested:write property="type"/><br>
	      3. nesting level: <nested:writeNesting property="hoge" />
	    </nested:nest>
	  </nested:nest>
	</nested:root>
	<hr>
	<html:link action="index">back to index</html:link>
</body>
</html>

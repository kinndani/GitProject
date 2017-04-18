<%@ page contentType="text/html; charset=Shift_JIS" %>
<%@ page import="tag.InnerBean" %>
<%@ page import="tag.OuterBean" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-nested" prefix="nested"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	InnerBean inner = new InnerBean();
	inner.setId(100);
	inner.setName("inner bean");
	OuterBean outer = new OuterBean();
	outer.setName("outer bean");
	outer.setInner(inner);
	request.setAttribute("outer", outer);
	%>
	<nested:root name="outer">
	  outer's name = <nested:write property="name"/><br>
	  <nested:nest property="inner">
	    inner's id = <nested:write property="id"/><br>
	    inner's name = <nested:write property="name"/><br>
	  </nested:nest>
	</nested:root>
	<hr>
	<html:link action="index">back to index</html:link>
</body>
</html>
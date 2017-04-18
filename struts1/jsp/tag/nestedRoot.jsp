<%@ page contentType="text/html; charset=Shift_JIS" %>
<%@ page import="tag.SampleBean" %>
<%@ page import="java.util.Date" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-nested" prefix="nested"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<% SampleBean sampleBean = new SampleBean();
	   sampleBean.setId(100);
	   sampleBean.setName("sample_name");
	   sampleBean.setBirthDay(new Date());
	   request.setAttribute("sample_bean", sampleBean);
	%>
	<nested:root name="sample_bean">
	  id -&gt; <nested:write property="id"/><br>
	  name -&gt; <nested:write property="name"/><br>
	  birthDay -&gt; <nested:write property="birthDay" format="yyyy”NMMŒdd“úHHmm•ªss•b"/>
	</nested:root>
	<hr>
	<html:link action="index">back to index</html:link>
</body>
</html>
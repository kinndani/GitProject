<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="form.SampleBean" %>
<%@ page import="java.util.Date" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-nested" prefix="nested" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nestedタグ</title>
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
	  name -&gt; <nested:write property="name"/>
	  birthDay -&gt; <nested:write property="birthDay" format="yyyy年MM月dd日HH時mm分ss秒"/>
	</nested:root>
	<hr>
</body>
</html>
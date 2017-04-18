<%@ page contentType="text/html; charset=Shift_JIS" import="tag.SampleBean, java.util.Date" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean" %>
<%
	SampleBean sampleBean = new SampleBean();
	sampleBean.setId(100);
	sampleBean.setName("sample_name");
	sampleBean.setBirthDay(new Date());
	session.setAttribute("sampleBean", sampleBean);
%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<bean:define id="id_value" name="sampleBean" property="id" toScope="page"></bean:define>
	<bean:define id="name_value" name="sampleBean" property="name" toScope="page"></bean:define>
	<bean:define id="unknown_value" value="–¢’è‹`"></bean:define>
	<%= id_value %>
	<br>
	<%= name_value %>
	<br>
	<%= unknown_value %>
</body>
</html>
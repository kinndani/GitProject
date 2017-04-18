<%@ page contentType="text/html; charset=Shift_JIS" import="tag.SampleBean, java.util.Date" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form>
		<input type="button" name="bt_back" value="<bean:message key="message1" />">
	</form>
	<bean:message key="message1" />
	<br>
	<bean:page property="application" id="app"/>
	<%=app.getServerInfo() %>
	<br>
	<bean:resource id="webxml" name="/WEB-INF/web.xml" />
	<%= webxml %>
</body>
</html>
<%@ page contentType="text/html; charset=Shift_JIS" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<bean:include id="global_result" forward="global" />
	<%= global_result %>
	<br>
	<bean:include id="yahoo" href="https://www.yahoo.co.jp/" />
	<%=yahoo %>>
	<br>
	<bean:include id="define" page="/jsp/tag/beanDefine.jsp"/>
	<bean:write name="define"/>
	<br>
	<%=define %>
	<br>
	<bean:include id="page_result" page="/login/login3.do" />
	<%= page_result %>
</body>
</html>
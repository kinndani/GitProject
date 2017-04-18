<%@ page contentType="text/html; charset=Shift_JIS" import="tag.SampleBean, java.util.Date" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
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
<title>bean タグライブラリ write タグ</title>
</head>
<body>
	session スコープに登録されているのは、 name=
	<bean:write name="sampleBean" property="name" scope="session" />
	、 id=
	<bean:write name="sampleBean" property="id" />
	というプロパティを持つ JavaBean です。
	<br> ちなみにこの JavaBean の誕生日は
	<bean:write name="sampleBean" property="birthDay"
		format="yyyy年MM月dd日HH時mm分ss秒" />
	です。
	<hr>
	<html:link action="index">back to index</html:link>
</body>
</html>
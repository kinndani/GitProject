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
<title>bean �^�O���C�u���� write �^�O</title>
</head>
<body>
	session �X�R�[�v�ɓo�^����Ă���̂́A name=
	<bean:write name="sampleBean" property="name" scope="session" />
	�A id=
	<bean:write name="sampleBean" property="id" />
	�Ƃ����v���p�e�B������ JavaBean �ł��B
	<br> ���Ȃ݂ɂ��� JavaBean �̒a������
	<bean:write name="sampleBean" property="birthDay"
		format="yyyy�NMM��dd��HH��mm��ss�b" />
	�ł��B
	<hr>
	<html:link action="index">back to index</html:link>
</body>
</html>
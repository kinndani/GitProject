<%@ page contentType="text/html; charset=Shift_JIS"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<logic:messagesPresent>
	  �ȉ��̃G���[���������܂����B
	  <br><html:errors/>
	</logic:messagesPresent>
	<logic:messagesNotPresent>
	  �G���[�͔������܂���ł����B
	</logic:messagesNotPresent>
	<hr>
	<%
	  String str1 = new String("���@���@��@�P");
	  String str2 = new String("���@���@��@�Q");
	  String[] str_array = {str1, str2};
	  request.setAttribute("str1", str1);
	  request.setAttribute("str2", str2);
	  request.setAttribute("str_array",str_array);
	%>
	<logic:messagesPresent name="str1"><bean:write name="str1"/></logic:messagesPresent><br>
	<logic:messagesPresent name="str2"><bean:write name="str2"/></logic:messagesPresent><br>
	<logic:messagesPresent name="str3"><bean:write name="str3"/></logic:messagesPresent><br>
	<logic:messagesNotPresent name="str3">
	  str3 �� request �X�R�[�v�Ɍ�����܂���B
	</logic:messagesNotPresent><br>

	<logic:messagesPresent name="str_array">
	  <logic:iterate name="str_array" id="str" indexId="id">
	    <%= id %>��<bean:write name="str"/><br>
	  </logic:iterate>
	</logic:messagesPresent>
	<hr>
	<html:link action="index">back to index</html:link>
</body>
</html>
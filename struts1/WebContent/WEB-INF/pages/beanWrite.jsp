<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="form.SampleBean" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BeanWrite成功画面</title>
</head>
<body>
	bean:writeタグによる出力<br>
	id=<bean:write name="sampleBean"  property="id" scope="request"/><br>
	name=<bean:write name="sampleBean" property="name" scope="request"/><br>
	birthday=<bean:write name="sampleBean"  property="birthDay" format="yyyy年MM月dd日HH時mm分ss秒" />
	<br>
	<br>
	bean:defineタグによる出力<br>
	<bean:define id="value" name="sampleBean" property="name" toScope="request"/>
	name=<%=value %>
	<br>
	<br>
	bean:cookieタグによる出力<br>
	<bean:cookie name="cookieName" id="cookieData" value="null"/>
	クッキー＝<%=cookieData.getValue() %><br>
	<bean:cookie name="cookieName2" id="cookieData2" value="null"/>
	存在しないクッキー＝<%=cookieData2.getValue() %>
	<br>
	<br>
<%-- 	bean:parameterタグの使用例

	<bean:parameter name="nameList" id="list" multiple="true"/>
	<%for(String data:list){%>
		<%=data %>
	<%}%> --%>

	bean:messageタグの使用例<br>
	<html:button property="aaa">
		<bean:message key="button.back"/>
	</html:button>
	<br>
<%-- 	<!-- nameテキストにbutton.backを挿入して送信で、戻るボタンになる -->
	<html:button property="aaa">
		<bean:message name="sampleBean"  property="name" scope="request"/>
	</html:button> --%>
	<br>
	bean:resourceタグの使用例
	<br>
	<bean:resource name="/WEB-INF/web.xml" id="webxml"/>
	<%=webxml %>
	<br>
	<br>
	bean:strutsタグの使用例<br>
	<bean:struts id="mapping" mapping="/beanWrite"/>
	<%=mapping.findForward("success").getPath() %>


</body>
</html>
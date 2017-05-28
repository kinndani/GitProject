<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="form.SampleBean, java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%
SampleBean sample = new SampleBean();
sample.setId(100);
sample.setName("サンプルねーむ");
sample.setBirthDay(new Date());
session.setAttribute("sampleBean", sample);
%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BeanWrite</title>
</head>
<body>
	◎BeanWrite<br>
	sessionスコップに登録されているのは、
	name=<bean:write name="sampleBean" property="name" scope="session"/>,
	というプロパティを持つJavaBeanです。<br>
	ちなみにJavaBeanの誕生日は
	<bean:write name="sampleBean" property="birthDay" format="yyyy年MM月dd日HH時mm分ss秒"/>
	<br><br>
	◎BeanDifine<br>
	<bean:define id="value" name="sampleBean" property="id" toScope="page"/>
	id=<%=value %>"
	<br><br>
	◎BeanCookie<br>
	<%
	//クッキーに保存する文字列をURLエンコードする
	String str = URLEncoder.encode("クッキーデータ", "UTF-8");

	//クッキー名"cookie_data"でクッキー登録
	Cookie cc = new Cookie("cookie_data",str);
	response.addCookie(cc);
	%>
	<bean:cookie name="cookie_data" id="cdata" value="なし"/>
	<bean:cookie name="no_sample" id="value2" value="なし"/>
	beanWriteで取得：<bean:write name="cdata"  property="value"/><br>
	普通にクッキーを取得：<%=URLDecoder.decode(cdata.getValue()) %><br>
	ないクッキーを取得：<%=value2.getValue() %><br>

</body>
</html>
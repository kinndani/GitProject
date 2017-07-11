<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<html>
<head>
<title><tiles:getAsString name="title"/></title>
</head>
<body bgcolor="#ffffff" text="#000000" link="#023264" alink="#023264" vlink="#023264">
	<table border="30" width="100%" cellspacing="5">
		<tr>
		  <td colspan="2">
			<tiles:insert attribute="header" />
		  </td>
		</tr>
		<tr>
		  <td width="200" valign="top">
			<tiles:insert attribute="menu"/>
		  </td>
		  <td valign="top"  align="left">
			<tiles:insert attribute="body"/>
		  </td>
		</tr>
		<tr>
		  <td colspan="2">
		    <hr>
		  </td>
		</tr>
		<tr>
		  <td colspan="2">
			<tiles:insert attribute="footer"/>
		  </td>
		</tr>
	</table>
</body>
</html>
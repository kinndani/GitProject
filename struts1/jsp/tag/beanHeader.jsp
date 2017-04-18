<%@ page contentType="text/html; charset=Shift_JIS"
         import="java.util.Enumeration" %>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%
Enumeration e = request.getHeaderNames();
%>
<html>
<head>
<title>bean タグライブラリ header タグ</title>
</head>
<body>
<%
while(e.hasMoreElements()){
  String name = e.nextElement().toString();
  %><bean:header id="value" name="<%= name %>"
    /><%= name + ":" + value %><br>
<%
}
%>
<hr>
<html:link action="index">back to index</html:link>
</body>
</html>

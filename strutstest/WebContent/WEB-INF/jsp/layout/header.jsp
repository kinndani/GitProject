<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<center>
  <h4>* 書籍販売サイト 管理者利用機能 *</h4>
</center>
ログインID：<bean:write name="login" property="name"/>
<br>
<script type="text/javascript" src="js/test.js">
</script>

<p id="RealtimeClockArea"/>
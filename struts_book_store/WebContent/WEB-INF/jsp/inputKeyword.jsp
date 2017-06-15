<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>書籍販売サイト 書籍検索</title>
</head>
<body bgcolor="#FFFFFF" text="#000000">
	<h3>書籍販売サイト 書籍検索</h3>

	<!-- validate用JavaScriptを生成(formNameの名前の前にvalidateを付けた関数) -->
	<html:javascript formName="inputKeywordForm"/>
	<html:form method="post" action="/searchBook"  onsubmit="return validateInputKeywordForm(this)">
	  <p>キーワード
	  	<html:text property="keyword"/>
	    <html:submit value="送信"/>
	    <html:reset value="リセット"/>
	  </p>
	</html:form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-nested" prefix="nested"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>書籍販売サイト 注文内容の入力</title>
</head>
<body bgcolor="#FFFFFF" text="#000000">
	<h3>書籍販売サイト 注文内容の入力</h3>
	<html:form method="post" action="/confirmOrder">
	  <p>注文内容を入力してください。</p>
	  <table border="1">
	    <tr>
	      <td>書籍番号</td>
	      <td>書籍名</td>
	      <td>著者名</td>
	      <td>出版社名</td>
	      <td>価格</td>
	      <td>購入数</td>
	    </tr>

		<logic:iterate id="item" name="<%= other.Globals.SESSION_ORDER %>"
		               property="items" scope="session" indexId="id">
		  <nested:root name="item">
		    <tr>
		      <td><nested:write property="book.id"/></td>
		      <td><nested:write property="book.title"/></td>
		      <td><nested:write property="book.author"/></td>
		      <td><nested:write property="book.publisher"/></td>
		      <td><nested:write property="book.price"/></td>
		      <td>
		      <html:text property="nums" size="5" maxlength="3"/>冊
		      </td>
		    </tr>
		  </nested:root>
		</logic:iterate>
	</table>
  	<br>

	  <table border="1">
	    <tr>
	      <td>お客様氏名</td>
	      <td>
	        <html:text property="customerName" maxlength="20" size="30"/>
	      </td>
	    </tr>
	    <tr>
	      <td>お届け先住所</td>
	      <td>
	        <html:text property="address" size="50" maxlength="40"/>
	      </td>
	    </tr>
	    <tr>
	      <td>支払い方法</td>
	      <td>
	        <html:radio property="payment" value="1"/>
	        代金引換<br>
	        <html:radio property="payment" value="2"/>
	        郵便振込</td>
	    </tr>
	  </table>

	  <p><html:errors/>
	    <html:submit value="注文内容の確認"/>
	    <html:reset value="リセット"/>
	  </p>
	</html:form>
	<hr>
	<html:link action="/showInputKeywordForm">書籍検索ページへ</html:link>
</body>
</html>
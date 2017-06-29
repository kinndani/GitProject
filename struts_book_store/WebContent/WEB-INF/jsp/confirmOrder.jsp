<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-nested" prefix="nested"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>書籍販売サイト 注文内容の確認</title>
</head>
<body bgcolor="#FFFFFF" text="#000000">
	<h3>書籍販売サイト 注文内容の確認</h3>
	<html:form action="/completeOrder">
		<table border="1">
		    <tr>
		      <td>書籍番号</td>
		      <td>書籍名</td>
		      <td>著者名</td>
		      <td>出版社名</td>
		      <td>価格</td>
		      <td>購入個数</td>
		      <td>金額</td>
		    </tr>
		    <% int all_sum=0;%>
		    <logic:iterate id="item" name="<%= other.Globals.SESSION_ORDER %>" property="items" scope="session" indexId="id">
			  <nested:root name="item">
			    <tr>
			      <td><nested:write property="book.id"/></td>
			      <td><nested:write property="book.title"/></td>
			      <td><nested:write property="book.author"/></td>
			      <td><nested:write property="book.publisher"/></td>
			      <td><nested:write property="book.price"/></td>
			      <td><nested:write property="num" /></td>
			      <nested:define id="price" property="book.price"/>
			      <nested:define id="num" property="num"/>
			      <% int sum =Integer.parseInt(price.toString()) * Integer.parseInt(num.toString()); %>
			      <% all_sum = all_sum+ sum;%>
			      <td><%=sum %></td>
			    </tr>
			  </nested:root>
			</logic:iterate>
		</table>
		<bean:define id="order" name="<%= other.Globals.SESSION_ORDER %>" scope="session"/>
		<nested:root name="order">
		  購入合計金額　<%= all_sum %>円<br>
		  <br>
		  <table border="1">
		    <tr>
		      <td>お客様氏名</td>
		      <td><nested:write property="customerName"/></td>
		    </tr>
		    <tr>
		      <td>お届け先住所</td>
		      <td><nested:write property="address"/></td>
		    </tr>
		    <tr>
		      <td>支払い方法</td>
		      <td><nested:write property="paymentString"/></td>
		    </tr>
		  </table>
		</nested:root>
		<p>
		    <html:submit property="action">
		      <bean:message key="button.completeOrder"/>
		    </html:submit>
		    <html:submit property="action">
		      <bean:message key="button.modifyOrder"/>
		    </html:submit>
		  </p>
	</html:form>
	<hr>
	<html:link action="/showInputKeywordForm">書籍検索ページへ</html:link>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-logic" prefix="logic"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-nested" prefix="nested"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>書籍販売サイト 書籍一覧</title>
</head>
<body>
	<h3>書籍販売サイト 書籍一覧</h3>
	<bean:size id="num" name="<%= other.Globals.SESSION_SEARCHED_BOOKS %>" scope="session"/>
	<%= num %> 冊の本が見つかりました。
	<logic:notEqual name="num" value="0">
		<html:form action="/selectBook">
		  <table border="1">
		    <tr>
		      <td>　</td>
		      <td>書籍番号</td>
		      <td>書籍名</td>
		      <td>著者名</td>
		      <td>出版社名</td>
		      <td>価格</td>
		    </tr>
		    <logic:iterate id="book" name="<%= other.Globals.SESSION_SEARCHED_BOOKS %>">
		      <nested:root name="book">
		        <nested:define id="book_id" property="id"/>
		        <tr>
		          <td>
		            <html:checkbox property="ids" value="<%= book_id.toString() %>"/>
		          </td>
		          <td><nested:write property="id"/></td>
		          <td><nested:write property="title"/></td>
		          <td><nested:write property="author"/></td>
		          <td><nested:write property="publisher"/></td>
		          <td><nested:write property="price" format="#,###"/></td>
		        </tr>
		        </nested:root>
		    </logic:iterate>
		  </table>
		  <p><html:errors/>
			<html:submit value="選択した書籍を購入"/>
		    <html:reset value="リセット"/>
		  </p>
		</html:form>
	</logic:notEqual>
	<hr>
	<html:link action="/showInputKeywordForm">書籍検索ページへ</html:link>
</body>
</html>
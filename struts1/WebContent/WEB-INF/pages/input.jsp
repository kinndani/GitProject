<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ログインページ</title>
</head>
<body>
	フォーム
	<form action="/struts1/login.do"  method="post">
		ID:<input type="text" name="id">
		<html:errors property="id" /><br>
		PASS:<input type="password" name="password"><br>
		<input type="submit" value="送信">
	</form>
	フォームタグ
	<html:form action="/login">
		id:<html:text property="id"/>
		<html:errors property="id" />
		<br>
		pass:<html:password property="password"/>
		<br>
		<html:checkbox property="check" value="true">利用規約に同意する</html:checkbox>
		<br>
		<html:multibox property="multi" value="mail" />メール配信を希望する
		<html:multibox property="multi" >dm</html:multibox>DMを希望する
		<br>
		<html:radio property="rad" value="1" />男性
		<html:radio property="rad" value="2" />女性
		<html:radio property="rad" value="3" />？
		<br>
		<html:select property="sel" multiple="yes">
			<html:option value="tennis">テニス</html:option>
			<html:option value="golf">ゴルフ</html:option>
			<html:option value="baseball">野球</html:option>
		</html:select>
		<br>
		<html:file property="filePath"/>
		<br>
		<html:hidden property="hid" value="ヒデゥン"/>
		<br>
		<html:link action="/login">ログインリンク</html:link>
		<html:submit>ログイン</html:submit>
		<html:cancel>キャンセル</html:cancel>
		<html:reset>リセット</html:reset>
	</html:form>
	<html:image page="/img/img1.gif"/>
	<html:img src="/struts1/img/img1.gif"/>
</body>
</html>
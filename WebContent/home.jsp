<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>Home</title>
</head>

<body>
	<div id="header">
	<h2> CAFE</h2>
		<ul id="nav">
			<li><a href="#">商品検索</a></li>
			<li><a href="#">ログイン</a></li>
			<li><a href="#">カート</a></li>
			<li><a href="#">アイテム一覧</a></li>
		</ul>
	</div>
	<div id="main">
		<div id="top">
			<p>ホーム</p>
		</div>
		<div id="text-center">
			<s:form action="HomeAction">
				<s:submit value="アイテム購入" />
			</s:form>
			<s:form action="LoginAction">
				<s:submit value="管理者" />
			</s:form>
			<s:if test="#session.login_user_id != null">
				<p>
					ログアウトする場合は<a href='<s:url action="LogoutAction" />'>こちら</a>
				</p>
			</s:if>
		</div>
	</div>
	<div id="footer"></div>
</body>
</html>

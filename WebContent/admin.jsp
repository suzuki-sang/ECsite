<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>AdminHome</title>
</head>

<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>管理者ホーム</p>
		</div>
		<div id="item">
			<div id="box">
				<div id="titlebox">
					<span id="title">アイテム</span>
				</div>
				<div id="text-center">
					<s:form action="ItemCreateAction">
						<s:submit value="アイテム登録" />
					</s:form>
					<s:form action="ItemListAction">
						<s:submit value="アイテムリスト" />
					</s:form>
				</div>
			</div>
		</div>
		<div id="user">
			<div id="box">
				<div id="titlebox">
					<span id="title">ユーザー</span>
				</div>
				<div id="text-center">
					<s:form action="UserCreateAction">
						<s:submit value="ユーザー登録" />
					</s:form>
					<s:form action="UserListAction">
						<s:submit value="ユーザーリスト" />
					</s:form>
				</div>
			</div>
		</div>
		<p>
			ログアウトする場合は<a href='<s:url action="LogoutAction" />'>こちら</a>
		</p>
	</div>
	<div id="footer"></div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>UserCreateComp</title>
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>アイテム登録完了</p>
		</div>
		<div>
			<h3>アイテムの登録が完了致しました。</h3>
			<div>
				<a href='<s:url action="AdminAction" />'>管理者トップ画面へ</a>
			</div>
		</div>
	</div>
	<div id="footer"></div>
</body>
</html>
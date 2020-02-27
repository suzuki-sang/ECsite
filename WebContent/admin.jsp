<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>AdminHome</title>
<style type="text/css">

body {
	background-image: url(http://www.netyasun.com/home/bk-img/b050.jpg);
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: Verdana, Helvetica, sans-serif;
	font-size: 15px;
}

/* ========ecsite LAYOUT======== */
#top {
	width: 780px;
	margin: 30px auto;
	border: 2px solid #808080;
	font-size: 18px;
}

#header {
	background-image:
		url(http://flat-icon-design.com/f/f_object_159/s256_f_object_159_0bg.png);
	background-size: 80px 80px;
	background-repeat: no-repeat;
	width: 100%;
	height: 80px;
	background-color: #86c0d7;
}

#nav {
	list-style: none;
	overflow: hidden;
}

#nav li {
	width: 200px;
	text-align: center;
	background-color: #86c0d7;
	float: right;
}

#nav li a {
	text-decoration: none;
	color: #fff;
	font-weight: bold;
}

#main {
	width: 100%;
	height: 500px;
	text-align: center;
}

#footer {
	width: 100%;
	height: 80px;
	background-color: #86c0d7;
	position: absolute;
	clear: both;
}

#text-center {
	display: inline-block;
	text-align: center;
}

#text-right {
	text-align: right;
	font-size: 12px;
	margin-right: 15px;
}

#item {
	position: relative;
	float: left;
	width: 10%;
	margin-left: 500px;
	border: 3px double #777777;
	border-color: #008BBB;
	padding: 15px;
}

#user {
	position: relative;
	float: right;
	margin-right: 500px;
	width: 10%;
	border: 3px double #777777;
	border-color: #008BBB;
	padding: 15px;
}

#titlebox {
	position: absolute;
	top: -15px;
	left: 43px;
	font-size: 100%;
	padding: 0.2em;
	background: #ffffff;
}
</style>
</head>

<body>

	<div id="header">

		<div id="pr"></div>

	</div>
	<div id="main">
		<div id="top">
			<p>管理者ホーム</p>
			<div id="text-right">
				<p>
					⇒<a href='<s:url action="LogoutAction" />'>ログアウト</a>
				</p>
			</div>
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
	</div>

	<div id="footer">
		<div id="pr"></div>
	</div>
</body>
</html>

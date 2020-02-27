<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>UserCreateConf</title>
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>アイテム登録確認</p>
		</div>
		<div>
			<h3>登録する内容は以下でよろしいですか。</h3>
			<table>

				<s:form action="ItemCreateCompleteAction">
					<tr id="box">
						<td><label>アイテム名:</label></td>
						<td><s:property value="itemName" escape="false" /></td>
					</tr>
					<tr id="box">
						<td><label>値段:</label></td>
						<td><s:property value="itemPrice" escape="false" /> <span>円</span>
						</td>
					</tr>
					<tr id="box">
						<td><label>在庫:</label></td>
						<td><s:property value="itemStock" escape="false" /> <span>個</span>
						</td>
					</tr>
					<tr>
						<td><s:submit value="完了" /></td>
					</tr>
				</s:form>
			</table>
		</div>
	</div>
	<div id="footer"></div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>ItemCreate</title>
</head>
<body>

	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>アイテム登録</p>
		</div>
		<div>
			<s:if test="errorMassage != ''">
				<s:property value="errorMassage" escape="false" />
			</s:if>
			<table>
				<s:form action="ItemCreateConfirmAction">
					<tr>
						<td><label>アイテム名:</label></td>
						<td><input type="text" name="itemName" value="" placeholder="カタカナ" /></td>
					</tr>
					<tr>
						<td><label>値段:</label></td>
						<td><input type="text" name="itemPrice" value="" placeholder="円" /></td>
					</tr>
					<tr>
						<td><label>在庫:</label></td>
						<td><input type="text" name="itemStock" value="" placeholder="個" /></td>
					</tr>
					<s:submit value="登録" />
				</s:form>
			</table>
			<div>
				<span>前画面に戻る場合は</span> <a href='<s:url action="HomeAction" />'>こちら</a>
			</div>
		</div>
	</div>
	<div id="footer"></div>
</body>
</html>

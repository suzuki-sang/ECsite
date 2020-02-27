<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<title>ItemDeleteConf</title>

<script type="text/javascript">
	function submitAction(url) {
		$('form').attr('action', url);
		$('form').submit();
	}
</script>
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>アイテム削除確認</p>
		</div>
		<div>
			<h3>
				ID[
				<s:property value="id" />
				]のアイテム情報を削除します。よろしいですか?
			</h3>
			<s:form>
				<input id="button" type="button" value="OK"
					onclick="submitAction('ItemDeleteCompleteAction')" />
				<!-- 削除完了画面に遷移 -->
				<input id="button" type="button" value="キャンセル"
					onclick="submitAction('ItemDetailsAction')" />
				<!-- 詳細画面に戻る -->
				<s:hidden name="id" value="%{id}" /><!-- idをhiddenで送る -->
			</s:form>
		</div>
	</div>
	<div id="footer"></div>
</body>
</html>

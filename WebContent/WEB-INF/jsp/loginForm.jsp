<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/sukkiriShop/css/bootstrap.css">
<link rel="stylesheet" href="/sukkiriShop/css/style.css">
<link rel="stylesheet" href="/sukkiriShop/css/general.css">
<meta charset="UTF-8">
<title>スッキリ商店</title>
</head>
<body>
<div class="container">
<h1>ログイン画面</h1>
<form action="/sukkiriShop/LoginServlet" method="post" class="blueborder">
	<div class="form-group">
		<label><dl>
			<dt>ユーザーID：</dt>
			<dd><input type="text" class="form-control" placeholder="必須項目です" name="userID" pattern="^([a-zA-Z0-9]{8,})$"></dd>
			<%-- <dd><small class="form-text text-muted">※半角で8文字以上で入力してください</small></dd> --%>
		</dl></label>
	</div>
	<div class="form-group">
		<label><dl>
			<dt>パスワード：</dt>
			<dd><input type="password" class="form-control" placeholder="必須項目です" name="userPass" pattern="^([a-zA-Z0-9]{8,})$"></dd>
			<%-- <dd><small class="form-text text-muted">※半角で8文字以上で入力してください</small></dd> --%>
		</dl></label>
	</div>
	<button type="submit" class="btn btn-primary">ログイン</button>
</form>
<a href="/sukkiriShop/WelcomeServlet"><button class="btn btn-secondary">トップへ</button></a>
</div>
</body>
</html>
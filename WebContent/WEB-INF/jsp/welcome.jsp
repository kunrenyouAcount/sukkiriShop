<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Login,  java.util.List" %>
<%
String userID = (String) session.getAttribute("userID");
%>
<!DOCTYPE html>
<html>
<head>
<style>
<% if(userID == null) {%>
	#registerButton {
		display: inline;
	}
	#loginButton {
		display: inline;
	}
	#showProductListButton {
		display: none;
	}
<% } else { %>
	#registerButton {
		display: none;
	}
	#loginButton {
		display: none;
	}
	#showProductListButton {
		display: inline;
	}
<% } %>
</style>
<meta charset="UTF-8">
<title>スッキリ商店</title>
<link rel="stylesheet" href="/sukkiriShop/css/bootstrap.css">
<link rel="stylesheet" href="/sukkiriShop/css/style.css">
</head>
<body>
<div class="container">
<h1 class="text-center">スッキリ商店</h1>
<a href="/sukkiriShop/BusinessWelcomeServlet" id="BusinessViewButton" class="fixed-top" style="left:initial;"><button class="btn btn-secondary">ビジネス用はこちら</button></a>
<ul class="list-group text-center">
<li class="list-group-item p-5"><img src="/sukkiriShop/img/shoppingCart_256.png"/></li>
<a href="/sukkiriShop/RegisterFormServlet" style="color: white" id="registerButton"><li class="list-group-item active">ユーザー登録</li></a>
<a href="/sukkiriShop/LoginServlet" id="loginButton"><li class="list-group-item">ログイン</li></a>
<a href="/sukkiriShop/ProductListServlet" style="color: white" id="showProductListButton"><li class="list-group-item active">商品を見る</li></a>
</ul>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/web/css/w3.css">
<link rel="stylesheet" type="text/css" href="/web/css/base.css">
<script type="text/javascript" src="/web/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/web/js/member.js"></script>
<style type="text/css">
h2 {
	margin : 0px;
}

</style>
</head>
<body>
	<div class="w3-content w3-center mx650">
		<h1 class="w3-light-gray">LOGIN</h1>
		<div class="w3-col w3-border w3-padding w3-margin-top">
			<div class="w3-col">
				<div class="w3-col m2 w3-right-align w3-margin-right"><h2>ID : </h2></div>
				<input class="w3-col m8 w3-input w3-border" id="id">
			</div>
			<div class="w3-col">
				<div class="w3-col m2 w3-right-align w3-margin-right"><h2>PW : </h2></div>
				<input type="password" class="w3-col m8 w3-input w3-border" id="pw">
			</div>
		</div>
		<div class="w3-col w3-margin-top">
			<div class="w3-col w3-button w3-third w3-orange" id="jbtn">join</div>
			<div class="w3-col w3-button w3-third w3-green" id="hbtn">home</div>
			<div class="w3-col w3-button w3-third w3-blue" id="lbtn">login</div>
		</div>
	</div>
	
	<div id="id01" class="w3-modal">
		<div class="w3-modal-content w3-animate-zoom w3-card-4">
			<header class="w3-container w3-teal"> 
				<span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
				<h2>warning</h2>
			</header>
			<div class="w3-container">
				<p>통신오류</p>
			</div>
		</div>
	</div>	
	
</body>
</html>
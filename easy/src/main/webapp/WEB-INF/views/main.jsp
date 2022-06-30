<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css"></style>
<link rel="stylesheet" type="text/css" href="/web/css/w3.css">
<link rel="stylesheet" type="text/css" href="/web/css/base.css">
</head>
<body>
	<div class="w3-content w3-center mx650">
		<h1 class="w3-light-gray">Main Page</h1>
<c:if test="${not empty SID}">
		<div>${SID} 회원님 로그인 하셨습니다.</div>
</c:if>
	</div>
</body>
</html>
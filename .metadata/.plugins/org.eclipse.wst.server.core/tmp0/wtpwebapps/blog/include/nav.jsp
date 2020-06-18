<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link href="/blog/static/css/style.css" rel="stylesheet">
<title>Tistory</title>

</head>
<body>
	<nav class="navbar navbar-expand-sm" style="margin-top: 10px;">
		<a class="navbar-brand" href="/blog/index.jsp"> 
		<img src="static/img/tistoryLogo.png" alt="Logo" style="width: 40px;">
		</a>
		
		<div class="justify-content-between collapse navbar-collapse" id="collapsibleNavbar">
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="#">피드</a></li>
			<li class="nav-item"><a class="nav-link" href="#">스토리</a></li>
			<li class="nav-item"><a class="nav-link" href="#">스킨</a></li>
			<li class="nav-item"><a class="nav-link" href="#">포럼</a></li>
		</ul>
		<ul class="navbar-nav">
     		<c:choose>
					<c:when test="${empty sessionScope.principal}">
						<li class="nav-item"><a class="nav-link" href="/blog/user?cmd=login">로그인</a></li>
						<li class="nav-item"><a class="nav-link" href="/blog/user?cmd=signup">회원가입</a></li>
					</c:when>
					<c:otherwise>
						<li><button type="button" class="btn btn-warning">글쓰기</button></li>
						<li class="nav-item"><a class="nav-link" href="/blog/user?cmd=update">회원정보</a></li>
						<li class="nav-item"><a class="nav-link" href="/blog/user?cmd=logout">로그아웃</a></li>
						<li class="nav-item">
							<a href="/blog/user?cmd=profileUpload">
									<img style="border-radius:20px" onerror="this.src='/blog/static/img/userProfile.png'" src="${sessionScope.principal.userProfile}" width="40px" height="40px"/>
     						</a>
     					</li>
					</c:otherwise>
			</c:choose>
     	</ul>
     </div>
	</nav>
	<hr/>
</body>
</html>
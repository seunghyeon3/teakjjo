<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900&display=swap"
		rel="stylesheet">

	<!-- Custom styles for this template-->
	<link href="resources/css/sb-admin-2.min.css" rel="stylesheet">
	<link rel="stylesheet" href="resources/css/style.css">
	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<link rel="stylesheet" href="resources/css/open-iconic-bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/animate.css">
	<link rel="stylesheet" href="resources/css/ionicons.min.css">
</head>
<body>
<div class="container" style="margin-top: 30px;">
		<div class="row justify-content-center">
			<div class="col-md-12 heading-section text-center ftco-animate mb-5">
				<span class="subheading">관리자</span>
				<h2 class="mb-2">관리자</h2>
			</div>
		</div>
	</div>
	
	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light"id="ftco-navbar" style="margin-top :150px">
		<div class="container">
		
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<div class="collapse navbar-collapse" id="">
				<ul class="navbar-nav" style="padding-left:240px;">
					<li class="nav-item"><a href="showTotalMember.do" class="nav-link">회원 조회</a></li>
					<li class="nav-item"><a href="showTotalAccKeyWord.do" class="nav-link">누적 키워드</a></li>
					<li class="nav-item active"><a href="showTotalMovie.do" class="nav-link">영화 정보</a></li>
					<li class="nav-item"><a href="showTotalNews.do" class="nav-link">뉴스</a></li>
					<li class="nav-item"><a href="showTotalFoodTruck.do" class="nav-link">푸드트럭</a></li>
					<li class="nav-item"><a href="showTotalDictionary.do" class="nav-link">사전</a></li>
					<li class="nav-item"><a href="home.do" class="nav-link">메인으로</a></li> 
				</ul>
			</div>
		</div>
	</nav>
	</nav>
		<div class="row block-9 justify-content-center mb-5">
			<div class="col-md-8 mb-md-5">
				<div class="bg-light p-5 contact-form">	
				<table class="table">
						<thead>
							<tr>
								<th>영화 제목</th>
								<th>영화 개봉일</th>
								<th>영화 장르</th>
								<th>개봉 국가</th>
								<th>영화 등급</th>
								<th>러닝 타임</th>
								<th>영화 평점</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${movieList }" var="key">
						<tr>
						<td>${key.movie_title }</td>
						<td>${key.movie_open }</td>
						<td>${key.movie_genre }</td>
						<td>${key.movie_nation }</td>
						<td>${key.movie_grade }</td>
						<td>${key.movie_runningtime }</td>
						<td>${key.movie_rating }</td>
						</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
</body>
<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.easing.1.3.js"></script>
	<script src="resources/js/jquery.waypoints.min.js"></script>
	<script src="resources/js/jquery.stellar.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/aos.js"></script>
	<script src="resources/js/jquery.animateNumber.min.js"></script>
	<script src="resources/js/bootstrap-datepicker.js"></script>
	<script src="resources/js/jquery.timepicker.min.js"></script>
	<script src="resources/js/scrollax.min.js"></script>
	<script src="resources/js/main.js"></script>
</html>
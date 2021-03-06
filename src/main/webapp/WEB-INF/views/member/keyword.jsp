<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
					<li class="nav-item active"><a href="showTotalAccKeyWord.do" class="nav-link">누적 키워드</a></li>
					<!-- <li class="nav-item"><a href="showTotalMovie.do" class="nav-link">영화 정보</a></li> -->
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
								<th>키 워 드</th>
								<th>조 회 수</th>
								<th>회 원 명</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${keyword }" var="key">
						<tr>
						<td>${key.searchKeyword }</td>
						<td>${key.searchHit }</td>
						<td>${key.member_Id }</td>
						</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</body>
</html>	
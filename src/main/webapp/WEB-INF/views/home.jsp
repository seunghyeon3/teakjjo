<%@page import="co.teakjjo.prj.searchKeyword.service.SearchKeywordVO"%>
<%@page import="java.util.List"%>
<%@page import="co.teakjjo.prj.member.service.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
	<title>양택조</title>
	<meta charset="UTF-8">
	<link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900&display=swap"
		rel="stylesheet">

	<!-- Custom styles for this template-->
	<link href="resources/css/sb-admin-2.min.css" rel="stylesheet">
	<link rel="stylesheet" href="resources/css/style.css">
	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<link rel="stylesheet" href="resources/css/animate.css">
	<link rel="stylesheet" href="resources/css/ionicons.min.css">
	<!-- <link rel="stylesheet" href="resources/css/bootstrap.min.css"> -->
</head>
<style>
@font-face {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
	.black_overlay {
		display: none;
		position: absolute;
		top: 0%;
		left: 0%;
		width: 100%;
		height: 100%;
		background-color: black;
		z-index: 1001;
		-moz-opacity: 0.8;
		opacity: .80;
		filter: alpha(opacity=80);
	}

	.white_content {
		display: none;
		position: absolute;
		top: 0%;
		left: 40.5%;
		width: 50%;
		height: 50%;
		padding: 16px;
		border: 16px solid orange;
		background-color: white;
		z-index: 1002;
		overflow: auto;
	}

</style>
</head>

<body>
	<!-- 양택조 color=pink (#ff0037) -->
	<nav
		class="navbar navbar-expand navbar-light bg-white topbar static-top shadow">

		<!-- Sidebar Toggle (Topbar) -->
		<button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
			<i class="fa fa-bars"></i>
		</button>
		<a class="sidebar-brand d-flex align-items-center justify-content-center" href="home.do">

			<div class="sidebar-brand-icon rotate-n-15">
				<img src="resources/img/양택조Header.png" width="70">
			</div>
			<div class="sidebar-brand-text mx-3">
				양택조 <sup>site</sup>
			</div>
		</a>

		
		<!-- Topbar Search -->
		<form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
			<div class="input-group">
				<input type="text" id="keyword" class="form-control" placeholder="Search for category"
					aria-label="Search" aria-describedby="basic-addon2"  onkeypress="javascript:press(searchPage())">
				<div class="input-group-append">
					<button class="btn btn-primary" type="button" onclick="searchPage()">
						<i class="fas fa-search fa-sm"></i>
					</button>
				</div>
			</div>
		</form>

		<c:if test="${memberinfo ne null }">
			<!-- Dropdown - Messages -->
			<a class="nav-link" href="javascript:void(0);" id="messagesDropdown" style="display: inline-block;"
				onclick="document.getElementById('light2').style.display='block';">
				<i class="fas fa-envelope fa-fw"></i>
			</a>

			<div id="light2" class="white_content text-left" style="height: 320px; width: 350px; top:250%;">
				<form action="writeEmail.do" method="post">
					<label>메일 쓰기 </label><br> <label>발&nbsp;송&nbsp;자&nbsp;</label> <input type="text" name="username"
						value="${memberinfo.member_Id }" readonly="readonly"><br> <label>비밀번호</label>
					<input type="password" id="password" name="pswd"><br><br>
					<button type="submit" class="btn btn-primary">확인</button>
					<button type="button" class="btn btn-primary"
						onclick="document.getElementById('light2').style.display='none';">취소</button>
					<div id="fade2" class="black_overlay"></div>
				</form>
			</div>
		</c:if>

		<!-- Topbar Navbar -->
		<ul class="navbar-nav">
			<!-- Nav Item - User Information -->

			<c:if test="${memberinfo ne null }">
			
				<!-- Nav Item - Search Dropdown (Visible Only XS) -->
				<li class="nav-item dropdown no-arrow d-sm-none"><a class="nav-link dropdown-toggle" href="#"
						id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
					</a> <!-- Dropdown - Messages -->
				</li>
				<li class="nav-item dropdown no-arrow"><a class="nav-link dropdown-toggle" href="#" id="userDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <span
							class="mr-2 d-none d-lg-inline text-gray-600 small">
							${memberinfo.member_Name }님 </span> <img class="img-profile rounded-circle"
							src="resources/img/undraw_profile.svg">
					</a> <!-- Dropdown - User Information -->
					<div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
						aria-labelledby="userDropdown">
						<a class="dropdown-item" href="updateInfoForm.do" style="font-size: 15px;"> <i
								class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> 개인정보수정
						</a>
						<c:if test="${fn:contains(memberinfo.member_Author , 'A')}">
						<a class="dropdown-item" href="Admin.do" style="font-size: 15px;"> <i
								class="fas fa-list fa-sm fa-fw mr-2 text-gray-400" style="font-size: 15px;"></i> 관리자 전용
						</a>
						</c:if>
						<!--  <a class="dropdown-item" href="resertaionInfo.do" style="font-size: 15px;"> <i
								class="fas fa-list fa-sm fa-fw mr-2 text-gray-400" style="font-size: 15px;"></i> 예매 현황
						</a> --> 
						<c:if test="${fn:contains(memberinfo.member_Author , 'N')}">
						<a class="dropdown-item" href="#" id="check_module" style="font-size: 15px;"> <i
								class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> 결제
						</a>
						</c:if>
						<a class="dropdown-item" id="clickKeyword" onclick="document.getElementById('light3').style.display='block';" style="font-size: 15px; cursor: pointer;" >
						 <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> 누적키워드수
						</a> <a class="dropdown-item"
							href="https://kauth.kakao.com/oauth/logout?client_id=80fd8a8ab79372ef8a66ba99b5dc4ed0&logout_redirect_uri=http://localhost/prj/logout.do"
							style="font-size: 15px;"> <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
							로그아웃
						</a>
						
					</div>
				</li>
			</c:if>
			<c:if test="${memberinfo eq null }">
				<button class="btn btn-primary" type="button" onclick="login()">로그인</button>
			</c:if>

		</ul>

	</nav>

	<div class="hero-wrap ftco-degree-bg" style="background-image: url('resources/images/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
<div class="text text-center" style="margin-top: 100px">
		<h1 class="mb-4">
			<img src="resources/img/양택조Header.png" width="300">
		</h1>
		<div class="search-location mt-md-2">
			<div class="row justify-content-center">
				<div class="col-lg-5 align-items-end ">
					<div class="form-group">
						<div class="form-field">
							<form action="searchKeyword.do" method="get" onsubmit ="return searchResult()">
							<input type="text" class="form-control" id="keywords" name="keywords" placeholder="Search Keyword" style="border: 2px soild black" >
							<button><span class="ion-ios-search"></span>
							</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
	</div>
	<!-- 완성후 주석 해제 예정 -->
	<c:if test="${memberinfo ne null }">
		<div class="text text-center" id="urlMark">


			<!-- url 즐겨찾기 추가하는 부분... 팝업창 뜨게 되면 데이터 적어주고, 거기에 input tag로 데이터 받기. -->
			<!-- session 값 받아와서 화면에 뿌려 주는거 해야함. -->
			<!-- 문제는 컨테이너 크기 잡아와서 4개면 4개씩 뿌려주는거 해야함. -->
			<!-- 여기부분 해결 되면 나머지 예매 현황, 누적 키워드수 등등 해당 부분으로 해결 할 예정 -->
			<!-- script 부분은 다 만든 후 js 파일 따로 만들어서 넣어주든 정리 필요함. -->

			<div id="urlDiv">

				<div style="display: inline-block;">

				<p>바로가기 추가</p>
					<button class="btn btn-primary" style="border-radius: 50%;"
						onclick="document.getElementById('light').style.display='block';">
						+</button>
				</div>

				<div id="light" class="white_content text-left" style="height: 320px; width: 350px; ">
					<label>바로가기 추가</label><br> <label>이름</label><br> <input type="text" id="urls" name="urlMark"><br>
					<label>URL</label><br>
					<input type="text" id="urlMarkName" name="urlMarkName"> <br>
					<br>
					<button type="button" onclick="insertUrl()" class="btn btn-primary">확인</button>
					<button class="btn btn-primary"
						onclick="document.getElementById('light').style.display='none';">취소</button>
				</div>
			</div>
			<br>
			<div id="addUrl">
			</div>	
	</c:if>
</div>
	 <div id="light3" class="white_content text-left" style="height: 320px; width: 350px; ">
	 <button class="btn btn-primary" onclick="document.getElementById('light3').style.display='none'">close</button>
	</div>
	 <div id="light4" class="white_content text-left" style="height: 320px; width: 350px; ">
	</div>
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="resources/js/sb-admin-2.min.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
	<%	MemberVO vo = (MemberVO) session.getAttribute("memberinfo");%>
		function searchPage() {
			var keyword = $('#keyword').val();
			console.log(keyword);
			if (keyword == '유튜브') {
				window.location = "youtube.do";
			} else if (keyword == '영화') {
				window.location = "movieMain.do"
			} else if (keyword == '사전') {
				window.location = "dictionaryMain.do";
			} else if (keyword == '번역') {
				window.location = "papagoMain.do"
			} else if (keyword == '푸드트럭') {
				window.location = "foodtruck.do"
			}  else if (keyword == '뉴스') {
				window.location = "newsMain.do"
			} else if (keyword == '뉴스등록') {
				window.location = "newsInsertForm.do"
			} else {
				window.alert('유튜브, 영화, 사전, 번역, 푸드트럭, 뉴스, 뉴스등록 중 하나 검색 해주세요.');
				$('#keyword').val('').focus();
			}
			return;
		}

		function login() {
			$.ajax({
				url: 'geturi.do',
				type: 'get',
				async: false,
				dataType: 'text',
				success: function (res) {
					location.href = res;
				}
			});

		}

		$('#clickKeyword').click(function(){
			showKeyword();
		});

		function showKeyword(){
			$.ajax({
				type:'get',
				url:"memberAcckeyword.do",
				success:function(result){
					$('#light3').empty();
					for(var field of result){
						$('#light3').append(
						$('<div>').text(("검색어 : "+field.searchKeyword + ", 조회수 : " + field.searchHit)).css('display', 'inline-block').attr("id", field.searchKeyword).append(
							$('<a>').attr(
								'onclick','deleteKeyWord()').text(" x").css({
									'font-size':'20px',
									'color' : 'red',
									'cursor':'pointer'
							})
						),
						$('<br>')
						);
					}
					$('#light3').prepend($('<h2>').text('누적 키워드 수')).append(
						$('<button>').attr({
							'class' : 'btn btn-primary',
							'onclick' : "document.getElementById('light3').style.display='none'"
							}).text("close").append($('<br>'))
					)
				},error:function(error){
					console.log(error);
				}

			})
		}
		function insertUrl() {
			var urls = $('#urls').val();
			var urlname = $('#urlMarkName').val();
			if(urls == $('#'+urls).text()){
				window.alert("이미 등록된 url 입니다.");
			}else{
					$.ajax({
					type: "get",
					url: "insertUrl.do",
					data: {
						url: urls,
						urlname: urlname
					},
					success: function () {
						window.location.reload();
					},
					error: function (error) {
						console.log(error);
					}
				});
			}
		
		}
		//url 삭제 추가
		function deleteUrl() {
			let temp = this.event.path[1];
			$.ajax({
				method:'get',
				url:'deleteUrl.do',
				data:{
					urlName : this.event.path[1].children[0].id
				},
				success:function(){
					window.alert("정상삭제");
					temp.remove();
				},error:function(error){
					console.log(error);
				}
			})
		}
	

	
		function deleteKeyWord(){
			var delTarget = this.event.path[1];
			$.ajax({
				type:'get',
				url :'deleteKeyword.do',
				data : {
					delKeyword : delTarget.id
				},
				success:function(){
					delTarget.remove();
					window.alert('정상적으로 삭제 되었습니다.');
				},error:function(){
					console.log(error);
				}
			})
		}
		
		
		
	
		<%if (vo == null) {

		} else if (vo.getMember_Id() != null) {	%>
			$(document).ready(function () {
				$.ajax({
					type: "get",
					url: "getUrl.do",
					success: function (result) {
						for (var fields of result) {
							$('#addUrl').append($('<div>').css({
								'display': 'inline-block',
								'margin-right' : '5px'
							})
								.append($('<button>').attr({
									'class': 'btn btn-primary',
									'onclick': "location.href='https://" + fields.urlMark + //여기 수정해야함
										"'",
									'id': fields.urlMarkName
								}).text(
									fields.urlMarkName),
									$('<a>').attr('onclick', 'deleteUrl()').text('삭제').css({
										'cursor':'pointer',
										'color':'red',
										'margin-left':'10px',
										'margin-right':'10px',
										'font-size':'1px'
										})									
							));
							$('#light').css('display', 'none');
							$('#fade').css('display', 'none');
							$('#urls').text('');
							$('#urlMarkName').text('');
						}
					},
					error: function (error) {
						console.log(error);
					}
				})

			})
	
			<%} %>
			
		
	</script>
	<script type="text/javascript">
		function searchResult(){
			if($('#keywords').val() == ""){
				alert("검색어를 입력하세요.");
				return false;
			}else{
				return true;
			}
		}
	
		$("#check_module").click(function () {
			var IMP = window.IMP; // 생략가능
			IMP.init('imp44063807');
			// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
			// ''안에 띄어쓰기 없이 가맹점 식별코드를 붙여넣어주세요. 안그러면 결제창이 안뜹니다.
			IMP.request_pay({
				pg: 'kakao',
				pay_method: 'card',
				merchant_uid: 'merchant_' + new Date().getTime(),
				/* 
				 *  merchant_uid에 경우 
				 *  https://docs.iamport.kr/implementation/payment
				 *  위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
				 */
				name: '프리미엄결제',
				// 결제창에서 보여질 이름
				// name: '주문명 : ${auction.a_title}',
				// 위와같이 model에 담은 정보를 넣어 쓸수도 있습니다.
				amount: 1000000,
				// amount: ${bid.b_bid},
				// 가격 
				buyer_name: '이름',
				// 구매자 이름, 구매자 정보도 model값으로 바꿀 수 있습니다.
				// 구매자 정보에 여러가지도 있으므로, 자세한 내용은 맨 위 링크를 참고해주세요.
				buyer_postcode: '123-456',
			}, function (rsp) {
				console.log(rsp);
				if (rsp.success) {
					var msg = '결제가 완료되었습니다.';
					msg += '결제 금액 : ' + rsp.paid_amount;
					// success.submit();
					location.href = "changeAuthor.do?url=" + window.location.href;
					
					// 결제 성공 시 정보를 넘겨줘야한다면 body에 form을 만든 뒤 위의 코드를 사용하는 방법이 있습니다.
					// 자세한 설명은 구글링으로 보시는게 좋습니다.
				} else {
					var msg = '결제에 실패하였습니다.';
					msg += '에러내용 : ' + rsp.error_msg;
				}
				alert(msg);
			});
	
		});
	</script>
</body>

</html>
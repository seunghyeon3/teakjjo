<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="resources/css/reset.css">
    <link rel="stylesheet" href="resources/css/header.css">
    <link rel="stylesheet" href="resources/css/reserve.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css' />
    <script src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
    <link rel="stylesheet" href="resources/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
    <!-- MATERIAL DESIGN ICONIC FONT -->

</head>

<body>

<c:if test="${memberinfo == null }">
 <script type="text/javascript">
		window.alert("로그인이 필요한 서비스입니다.");
		history.go(-1);
    </script>
</c:if>
<c:if test="${memberinfo !=null }">

    <div class="reserve-container">
        <div class="movie-part">
            <div class="reserve-title">영화</div>
            <div class="sort-wrapper">
                <div class="sort-rate sort-selected">예매율순</div>
            </div>
            <div class="movie-list-wrapper">
                <div class="movie-list">
                    <%-- <div class="movie-list-age">15</div>
                    <div class="movie-list-title">1917</div> --%>
                </div>
            </div>
        </div>
        <div class="theater-part">
            <div class="reserve-title">
                극장
            </div>
            <div class="theater-container">
                <div class="theater-wrapper">
                    <div class="theater-location-wrapper">
                        <button class="theater-location">대구(30)</button>
                    </div>
                    <div class="theater-place-wrapper">
                        <button class="theater-place">월성</button>
                        <button class="theater-place">강변</button>
                        <button class="theater-place">건대입구</button>
                        <button class="theater-place">구로</button>
                        <button class="theater-place">대학로</button>
                        <button class="theater-place">동대문</button>
                        <button class="theater-place">목동</button>
                        <button class="theater-place">명동</button>
                        <button class="theater-place">미아</button>
                        <button class="theater-place">불광</button>
                        <button class="theater-place">상봉</button>
                        <button class="theater-place">송파</button>
                        <button class="theater-place">수유</button>
                        <button class="theater-place">압구정</button>
                        <button class="theater-place">여의도</button>
                        <button class="theater-place">영등포</button>
                        <button class="theater-place">왕십리</button>
                        <button class="theater-place">중계</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="day-part">
            <div class="reserve-title">날짜</div>
            <div class="reserve-date"></div>
        </div>
        <div class="time-part">
            <div class="reserve-title">시간</div>
            <div class="reserve-time">
                <div class="reserve-where">4관(Laser) 6층(총 240석) </div>
                <div class="reserve-time-wrapper">
                    <button class="reserve-time-button">
                        <span class="reserve-time-want">12:20</span>
                        <span class="reserve-time-remain">240석</span>
                    </button>
                    <button class="reserve-time-button">
                        <span class="reserve-time-want">14:20</span>
                        <span class="reserve-time-remain">240석</span>
                    </button>
                    <button class="reserve-time-button">
                        <span class="reserve-time-want">16:20</span>
                        <span class="reserve-time-remain">240석</span>
                    </button>
                    <button class="reserve-time-button">
                        <span class="reserve-time-want">18:20</span>
                        <span class="reserve-time-remain">240석</span>
                    </button>

                </div>
            </div>
            <div>
                <form class="moveSeatForm" action="seat.do" method="post">
                    <input type="hidden" class="title" name="title">
                    <input type="hidden" class="movieAge" name="movieAge">
                    <input type="hidden" class="selectedTheater" name="selectedTheater">
                    <input type="hidden" class="reserveDate" name="movieDate">
                    <input type="hidden" class="runningTime" name="runningTime">
                    <button class="moveSeatButton" type="button">예약하기</button>
                </form>
            </div>
        </div>

    </div>
    </c:if>
    <script src="resources/js/reserve.js"></script>
   
</body>

</html>
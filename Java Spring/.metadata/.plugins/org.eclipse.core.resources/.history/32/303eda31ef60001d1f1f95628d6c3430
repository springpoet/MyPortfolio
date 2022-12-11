<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body {
	height: 100%;
	
}

h1 {
	text-decoration: none;
}

.card.text-center {
	color: black;
	height: 500px;
	width: 100%;
	margin: 0 auto;
}

.card-body {
	background-image: url("resources/img/bb.jpg");
	background-repeat: no-repeat;
	background-size: 100%;
	background-position: 20% 80%;
	box-shadow: 2px 2px 2px;
}

body>div.card.text-center {
	border: 0px;
}

.hasDatepicker{
	height:50px;
}
.ui-datepicker-trigger{
	height:52px;
}
.btn{
	heihgt:50px;
}

nav {
   margin-left: auto;
   top: 0;
   right: 0;
   padding: 20px;
   display: flex;
   float: right;
   width: 100%;
   height:100px;
}

.navbar {
   background-color: #000000;
   margin-bottom:70px;
}


</style>

</head>
<body>

<!--  navbar -->
   <nav class="navbar navbar-dark" float=right;>
      <div class="container-fluid">
      	<div style="display:flex; width:200px;">
         <a href="MainPage" class="navbar-brand"><h2 style=font-weight:800;>티켓 컴바인</h2></a>
			<img src="/resources/img/ramus.png" style="height:50px;"/>
			</div>
			<a href="d3data"><img src="/resources/img/d3.png" style="height:60px; "/></a>
			
			
         <!-- 로그아웃 -->
         <ul id="nav3" class="nav justify-content-end bg-light">
            <li class="nav-item">
               <!-- 로그아웃 --> <c:if test="${sessionName ne null }">
                  <form action="/Logout" class="d-flex" method="get">
                     <input type="submit" value="로그아웃" class="btn btn-outline-success" />
                  </form>
               </c:if>
            </li>
         
         <!-- 회원가입 -->
         <c:if test="${sessionName eq null }">
         <li>
            <form action="/SignUp" method="get"  class="d-flex">
               <input type="submit" value="회원가입" class="btn btn-outline-success" />
            </form>
         </li>
         </c:if>
         


            <!-- 로그인 태그 버튼 -->
            <li class="nav-item"><c:choose>
                  <c:when test="${sessionName eq null }">
                     <form action="/Login" class="d-flex" method="get">
                        <input type="submit" value="로그인페이지로"
                           class="btn btn-outline-success" />
                     </form>
                  </c:when>
            
                  <c:otherwise>
                     <form action="/Mypage" method="get">
                        <input type="submit" value="마이페이지"
                           class="btn btn-outline-success"/>
                     </form>
                  </c:otherwise>
               </c:choose>
            </li>
         </ul>
      </div>
   </nav>


	
				<c:if test="${sessionId eq 'admin' }">
				<div class="card text-center" style="margin-top: 70px;">
					
			<div class="card-body">
			<h1 style="color:white; margin-top:50px;">관리자 페이지입니다.</h1>
		</div>
		</div>
				</c:if>
				
				<c:if test="${sessionId ne 'admin' }">
				

	<div class="card text-center" style="margin-top: 70px;">

		<div class="card-body">
			
				<c:if test="${duple }">
	날짜를 입력하세요. <button onclick="location.href='MainPage'">home</button>
				</c:if>

					<c:if test="${sessionName ne null }">
						<h2 style="color:white; font-weight:700; margin-top:35px;">${sessionName }님 반갑습니다!</h2>
					</c:if>
					

				<form action="/MainPage" method="post" style="margin-top:20px;">
					<div style="background-color:rgba( 5, 18, 42, 0.85 );
					 height:200px; width:1200px; margin:0 auto; padding:60px; border-radius:8px; margin-top:70px;'">
					<select style="height:50px;" name="depart">
						<c:forEach var="item" items="${data}">		
							<option value="${item}">
								<c:choose>
									<c:when test="${item eq 'GMP' }">
				김포
				</c:when>
									<c:when test="${item eq 'HND' }">
				일본(하네다)
				</c:when>
									<c:when test="${item eq 'PUS' }">
				부산
				</c:when>
									<c:when test="${item eq 'NRT' }">
				일본(나리타)
				</c:when>
									<c:when test="${item eq 'KIX' }">
				일본(간사이)
				</c:when>
									<c:when test="${item eq 'FUK' }">
				일본(후쿠오카)
				</c:when>
									<c:when test="${item eq 'CTS' }">
				일본(신치토세)
				</c:when>
									<c:when test="${item eq 'TAO' }">
				중국(칭다오)
				</c:when>
									<c:when test="${item eq 'HKG' }">
				홍콩
				</c:when>
									<c:when test="${item eq 'UBN' }">
				몽골(칭키즈 칸)
				</c:when>
									<c:when test="${item eq 'GUM' }">
				괌
				</c:when>
									<c:when test="${item eq 'SPN' }">
				사이판
				</c:when>
									<c:when test="${item eq 'BKK' }">
				태국(수완나품)
				</c:when>
									<c:when test="${item eq 'DAD' }">
				베트남(다낭)
				</c:when>
									<c:when test="${item eq 'CXR' }">
				베트남(깜라인)
				</c:when>
									<c:when test="${item eq 'CRK' }">
				필리핀(클락)
				</c:when>
									<c:when test="${item eq 'BKI' }">
				말레이시아(코타키나발루)
				</c:when>
									<c:when test="${item eq 'CEB' }">
				필리핀(막탄)
				</c:when>
									<c:when test="${item eq 'SIN' }">
				싱가포르
				</c:when>
									<c:when test="${item eq 'TPE' }">
				타이완
				</c:when>
									<c:when test="${item eq 'YNY' }">
				대한민국(양양)
				</c:when>
									<c:when test="${item eq 'SGN' }">
				베트남(떤선녓)
				</c:when>
									<c:when test="${item eq 'HAN' }">
				베트남(노이바이)
				</c:when>
									<c:when test="${item eq 'MWX' }">
				대한민국(무안)
				</c:when>
									<c:when test="${item eq 'CJU' }">
				제주
				</c:when>
									<c:when test="${item eq 'CNX' }">
				태국(치앙마이)
				</c:when>
									<c:when test="${item eq 'XIY' }">
				중국(시안)
				</c:when>
									<c:when test="${item eq 'MNL' }">
				필리핀(마날라)
				</c:when>
									<c:when test="${item eq 'YNJ' }">
				중국(옌지)
				</c:when>
									<c:when test="${item eq 'TAE' }">
				대구
				</c:when>
								</c:choose>
							</option>
						</c:forEach>
					</select> 
					
					<select name="arrive" style="height:50px; margin-right:5px;">
						<c:forEach var="item" items="${data}">
							<option value="${item}">
								<c:choose>
									<c:when test="${item eq 'GMP' }">
				김포
				</c:when>
									<c:when test="${item eq 'HND' }">
				일본(하네다)
				</c:when>
									<c:when test="${item eq 'PUS' }">
				부산
				</c:when>
									<c:when test="${item eq 'NRT' }">
				일본(나리타)
				</c:when>
									<c:when test="${item eq 'KIX' }">
				일본(간사이)
				</c:when>
									<c:when test="${item eq 'FUK' }">
				일본(후쿠오카)
				</c:when>
									<c:when test="${item eq 'CTS' }">
				일본(신치토세)
				</c:when>
									<c:when test="${item eq 'TAO' }">
				중국(칭다오)
				</c:when>
									<c:when test="${item eq 'HKG' }">
				홍콩
				</c:when>
									<c:when test="${item eq 'UBN' }">
				몽골(칭키즈 칸)
				</c:when>
									<c:when test="${item eq 'GUM' }">
				괌
				</c:when>
									<c:when test="${item eq 'SPN' }">
				사이판
				</c:when>
									<c:when test="${item eq 'BKK' }">
				태국(수완나품)
				</c:when>
									<c:when test="${item eq 'DAD' }">
				베트남(다낭)
				</c:when>
									<c:when test="${item eq 'CXR' }">
				베트남(깜라인)
				</c:when>
									<c:when test="${item eq 'CRK' }">
				필리핀(클락)
				</c:when>
									<c:when test="${item eq 'BKI' }">
				말레이시아(코타키나발루)
				</c:when>
									<c:when test="${item eq 'CEB' }">
				필리핀(막탄)
				</c:when>
									<c:when test="${item eq 'SIN' }">
				싱가포르
				</c:when>
									<c:when test="${item eq 'TPE' }">
				타이완
				</c:when>
									<c:when test="${item eq 'YNY' }">
				대한민국(양양)
				</c:when>
									<c:when test="${item eq 'SGN' }">
				베트남(떤선녓)
				</c:when>
									<c:when test="${item eq 'HAN' }">
				베트남(노이바이)
				</c:when>
									<c:when test="${item eq 'MWX' }">
				대한민국(무안)
				</c:when>
									<c:when test="${item eq 'CJU' }">
				제주
				</c:when>
									<c:when test="${item eq 'CNX' }">
				태국(치앙마이)
				</c:when>
									<c:when test="${item eq 'XIY' }">
				중국(시안)
				</c:when>
									<c:when test="${item eq 'MNL' }">
				필리핀(마날라)
				</c:when>
									<c:when test="${item eq 'YNJ' }">
				중국(옌지)
				</c:when>
									<c:when test="${item eq 'TAE' }">
				대구
				</c:when>
								</c:choose>
							</option>
						</c:forEach>
						<input name="publeYear" autocomplete="off" readonly="readonly"/>
					</select>
					 <input class="btn btn-primary btn-lg" type="submit" value="항공권 검색" />
					 	
					 	</div>
				</form>
				
				
		
				
			
			
				
			
				</div>
		</div>
	</c:if>

		

	<script>
		/* 설정 */
		const config = {
			dateFormat : 'yy-mm-dd',
			showOn : "button",
			buttonText : "날짜 선택"
			
		}

		/* 캘린더 */
		$(function() {
			$("input[name='publeYear']").datepicker(config);
			$("input[name='publeYear']").datepicker("setDate", "today");
			
		});
	
	</script>

	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
		rel="stylesheet"
		integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
		crossorigin="anonymous">
</body>
</html>
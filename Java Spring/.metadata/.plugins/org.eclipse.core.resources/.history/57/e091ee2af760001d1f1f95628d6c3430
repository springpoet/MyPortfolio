<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
   crossorigin="anonymous">
<link rel="stylesheet"
   href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<style>
body {
   height: 100%;
   color: black;
}

.card-body {
   padding-bottom: 0px;
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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!--  navbar -->
   <nav class="navbar navbar-dark" float=right;>
      <div class="container-fluid">
<div style="display:flex; width:200px">
         <a href="MainPage" class="navbar-brand"><h2
               style="font-weight: 800; display:flex;">티켓 컴바인</h2>
               </a>
               <img src="/resources/img/ramus.png" style="height:50px" >
         </div>   

         <!-- 로그아웃 -->
         <ul id="nav3" class="nav justify-content-end bg-light">
            <li class="nav-item">
               <!-- 로그아웃 --> <c:if test="${sessionName ne null }">
                  <form action="/Logout" class="d-flex" method="get">
                     <input type="submit" value="로그아웃" class="btn btn-outline-success" />
                  </form>
               </c:if>
            </li>
         
    

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


   <%!String IMG_PATH1 = "/resources/img/aar.png";%>
   <%!String IMG_PATH2 = "";%>
   <div style="margin: 0 auto;">
      <h1 style="text-align: center; font-weight: 900; margin-bottom:50px;">선택한날짜는
         ${publeYear }</h1>
   </div>
   <c:forEach var="item" items="${data }">

      <c:choose>
         <c:when test="${item.get('항공사') eq 'AAR' }">
            <%IMG_PATH1="/resources/img/aar.png"; %>
         </c:when>

         <c:when test="${item.get('항공사') eq 'ABL' }">
            <%IMG_PATH1="/resources/img/ABL.jpg"; %>
         </c:when>

         <c:when test="${item.get('항공사') eq 'ANA' }">
            <%IMG_PATH1="/resources/img/ANA.jpg"; %>
         </c:when>

         <c:when test="${item.get('항공사') eq 'FGW' }">
            <%IMG_PATH1="/resources/img/FGW.jpg"; %>
         </c:when>

         <c:when test="${item.get('항공사') eq 'HVN' }">
            <%IMG_PATH1="/resources/img/HVN.jpg"; %>
         </c:when>

         <c:when test="${item.get('항공사') eq 'JAL' }">
            <%IMG_PATH1="/resources/img/JAL.png"; %>
         </c:when>

         <c:when test="${item.get('항공사') eq 'JJA' }">
            <%IMG_PATH1="/resources/img/JJA.png"; %>
         </c:when>

         <c:when test="${item.get('항공사') eq 'JNA' }">
            <%IMG_PATH1="/resources/img/JNA.png"; %>
         </c:when>

         <c:when test="${item.get('항공사') eq 'KAL' }">
            <%IMG_PATH1="/resources/img/KAL.png"; %>
         </c:when>

         <c:when test="${item.get('항공사') eq 'MGL' }">
            <%IMG_PATH1="/resources/img/MGL.png"; %>
         </c:when>

         <c:when test="${item.get('항공사') eq 'PAL' }">
            <%IMG_PATH1="/resources/img/PAL.png"; %>
         </c:when>

         <c:when test="${item.get('항공사') eq 'RYL' }">
            <%IMG_PATH1="/resources/img/RYL.png"; %>
         </c:when>

         <c:when test="${item.get('항공사') eq 'TGW' }">
            <%IMG_PATH1="/resources/img/TGW.jpg"; %>
         </c:when>

         <c:when test="${item.get('항공사') eq 'TWB' }">
            <%IMG_PATH1="/resources/img/TWB.png"; %>
         </c:when>

         <c:when test="${item.get('항공사') eq 'VJC' }">
            <%IMG_PATH1="/resources/img/VJC.png"; %>
         </c:when>

         <c:otherwise>
            <%IMG_PATH1=""; %>
         </c:otherwise>
      </c:choose>

      <c:choose>
         <c:when test="${item.get('도착공항') eq 'GMP' }">
            <%IMG_PATH2="/resources/img/GMP.jpg"; %>
         </c:when>

         <c:when test="${item.get('도착공항') eq 'HND' }">
            <%IMG_PATH2="/resources/img/HND.jpg"; %>
         </c:when>

         <c:when test="${item.get('도착공항') eq 'PUS' }">
            <%IMG_PATH2="/resources/img/PUS.jpg"; %>
         </c:when>

         <c:when test="${item.get('도착공항') eq 'NRT' }">
            <%IMG_PATH2="/resources/img/NRT.jpg"; %>
         </c:when>

         <c:when test="${item.get('도착공항') eq 'KIX' }">
            <%IMG_PATH2="/resources/img/KIX.jpg"; %>
         </c:when>

         <c:when test="${item.get('도착공항') eq 'FUK' }">
            <%IMG_PATH2="/resources/img/FUK.jpg"; %>
         </c:when>

         <c:when test="${item.get('도착공항') eq 'CTS' }">
            <%IMG_PATH2="/resources/img/CTS.jpg"; %>
         </c:when>

         <c:when test="${item.get('도착공항') eq 'TAO' }">
            <%IMG_PATH2="/resources/img/TAO.jpg"; %>
         </c:when>

         <c:when test="${item.get('도착공항') eq 'HKG' }">
            <%IMG_PATH2="/resources/img/HKG.jpg"; %>
         </c:when>

         <c:when test="${item.get('도착공항') eq 'UBN' }">
            <%IMG_PATH2="/resources/img/UBN.jpg"; %>
         </c:when>

         <c:when test="${item.get('도착공항') eq 'GUM' }">
            <%IMG_PATH2="/resources/img/GUM.png"; %>
         </c:when>

         <c:when test="${item.get('도착공항') eq 'SPN' }">
            <%IMG_PATH2="/resources/img/SPN.png"; %>
         </c:when>

         <c:when test="${item.get('도착공항') eq 'BKK' }">
            <%IMG_PATH2="/resources/img/BKK.jpg"; %>
         </c:when>

         <c:when test="${item.get('도착공항') eq 'DAD' }">
            <%IMG_PATH2="/resources/img/DAD.JPG"; %>
         </c:when>

         <c:when test="${item.get('도착공항') eq 'CXR' }">
            <%IMG_PATH2="/resources/img/CXR.jpg"; %>
         </c:when>

         <c:when test="${item.get('도착공항') eq 'CRK' }">
            <%IMG_PATH2="/resources/img/CRK.jpg"; %>
         </c:when>
         <c:when test="${item.get('도착공항') eq 'BKI' }">
            <%IMG_PATH2="/resources/img/BKI.jpg"; %>
         </c:when>
         <c:when test="${item.get('도착공항') eq 'CEB' }">
            <%IMG_PATH2="/resources/img/CEB.jpg"; %>
         </c:when>
         <c:when test="${item.get('도착공항') eq 'SIN' }">
            <%IMG_PATH2="/resources/img/SIN.jpg"; %>
         </c:when>
         <c:when test="${item.get('도착공항') eq 'TPE' }">
            <%IMG_PATH2="/resources/img/TPE.jpg"; %>
         </c:when>
         <c:when test="${item.get('도착공항') eq 'YNY' }">
            <%IMG_PATH2="/resources/img/YNY.jpg"; %>
         </c:when>
         <c:when test="${item.get('도착공항') eq 'SGN' }">
            <%IMG_PATH2="/resources/img/SGN.jpg"; %>
         </c:when>
         <c:when test="${item.get('도착공항') eq 'HAN' }">
            <%IMG_PATH2="/resources/img/HAN.jpg"; %>
         </c:when>
         <c:when test="${item.get('도착공항') eq 'MWX' }">
            <%IMG_PATH2="/resources/img/MWX.jpg"; %>
         </c:when>
         <c:when test="${item.get('도착공항') eq 'CJU' }">
            <%IMG_PATH2="/resources/img/CJU.png"; %>
         </c:when>
         <c:when test="${item.get('도착공항') eq 'CNX' }">
            <%IMG_PATH2="/resources/img/CNX.jpg"; %>
         </c:when>
         <c:when test="${item.get('도착공항') eq 'XIY' }">
            <%IMG_PATH2="/resources/img/XIY.png"; %>
         </c:when>
         <c:when test="${item.get('도착공항') eq 'MNL' }">
            <%IMG_PATH2="/resources/img/MNL.jpg"; %>
         </c:when>
         <c:when test="${item.get('도착공항') eq 'YNJ' }">
            <%IMG_PATH2="/resources/img/YNJ.png"; %>
         </c:when>
         <c:when test="${item.get('도착공항') eq 'TAE' }">
            <%IMG_PATH2="/resources/img/TAE.jpg"; %>
         </c:when>


         <c:otherwise>
            <%IMG_PATH1=""; %>
         </c:otherwise>
      </c:choose>

      <div class="card mb-3"
         style="max-width: 1200px; display: flex; flex-direction: column; margin: 0 auto;">
         <!-- <a href="bookCheck?ticketnum=${item.get('ticketnum')}&id=${sessionId }&publeYear=${publeYear}"> -->
         <div class="row g-0"
            style="border: 2px solid black; border-bottom: none;"
            style="height:100%">
            <div class="col-md-4" style="height: 100%">
               <img src="<%=IMG_PATH2%>" class="img-fluid rounded-start" alt="예?"
                  style="height: 280px;">
            </div>
            <div class="col-md-8">
               <div class="card-body">
                  <h5 class="card-title"></h5>


                  <p class="card-text">
                  <div style="display: flex;">
                     <div style="margin-right: 35px; margin-left: 20px;">
                        <h4>티켓번호 : ${item.get('ticketnum')}</h4>
                        <h4>출발시간 : ${item.get('출발시간')}</h4>
                        <h4>출발공항 : ${item.get('출발공항')}</h4>
                        <h4>도착시간 : ${item.get('도착시간')}</h4>
                        <h4>도착공항 : ${item.get('도착공항')}</h4>
                        <h4>운항편명 : ${item.get('운항편명')}</h4>
                     </div>
                     <div style="margin-top: 50px; margin-left: 50px;">
                        <img src="<%=IMG_PATH1%>"
                           style="height: 100px; width: 350px; object-fit: fill;" />
                     </div>
                  </div>
                  </p>
               </div>
            </div>
         </div>
         <!-- </a> -->
         <button style="height:50px; background-color:tomato;"
            onclick="location.href='bookCheck?ticketnum=${item.get('ticketnum')}&id=${sessionId }&publeYear=${publeYear}'"><h3 style="line-height:45px;">예매하기</h3></button>

      </div>

   </c:forEach>





   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
      crossorigin="anonymous"></script>

</body>
</html>
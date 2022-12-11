<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
      crossorigin="anonymous">
<link rel="stylesheet"
   href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<style>


body{
height:100vh;

}
h4{
color:black;
margin-bottom:7px;
margin-top:7px;
width:150px;

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
   margin-bottom:50px;
}


.navbar {
   background-color: #000000;
   margin-bottom:50px;
}


</style>
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

   <h1 style="font-size:32px; margin-left:30px;">회원정보</h1>
   <h2 style="font-size:24px; margin-left:30px;">이름 : ${sessionName }</h2>
   <h2 style="font-size:24px; margin-left:30px;">나이 : ${sessionAge }</h2>
   <h2 style="font-size:24px; margin-left:30px;">아이디 : ${sessionId }</h2>
   <h2 style="font-size:24px; margin-left:30px;">성별 : ${sessionGender }</h2>


   
		<c:choose>
      	<c:when test="${sessionId eq 'admin'}">
      		<h2 style="font-size:26px; margin-left:30px; color:tomato; margin-bottom:50px;">
      모든예약정보
      <button onclick="location.href='adminCheck'" style="background-color:tomato; border:1px solid tomato;">확인하기</button>
   </h2>
      	</c:when>
      	<c:otherwise>
      	<h2 style="font-size:26px; margin-left:30px; margin-bottom:50px;">
      내 예약 정보
    
      <button onclick="location.href='myticketCheck?id=${sessionId }'">확인하기</button>
   </h2>
   		</c:otherwise>
   		</c:choose>
   		
   
   <%!String IMG_PATH1 = "/resources/img/aar.png";%>
   <%!String IMG_PATH2 = "";%>
   
  
   
   
    <c:if test="${sessionId eq 'admin'}">
      		
      		
 	<c:forEach var="item" items="${adminList}">

     
      <c:choose>
         <c:when test="${item['항공사'] eq 'AAR' }">
            <%IMG_PATH1="/resources/img/aar.png"; %>
          
         </c:when>

         <c:when test="${item['항공사'] eq 'ABL' }">
            <%IMG_PATH1="/resources/img/ABL.jpg"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'ANA' }">
            <%IMG_PATH1="/resources/img/ANA.jpg"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'FGW' }">
            <%IMG_PATH1="/resources/img/FGW.jpg"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'HVN' }">
            <%IMG_PATH1="/resources/img/HVN.jpg"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'JAL' }">
            <%IMG_PATH1="/resources/img/JAL.png"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'JJA' }">
            <%IMG_PATH1="/resources/img/JJA.png"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'JNA' }">
            <%IMG_PATH1="/resources/img/JNA.png"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'KAL' }">
            <%IMG_PATH1="/resources/img/KAL.png"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'MGL' }">
            <%IMG_PATH1="/resources/img/MGL.png"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'PAL' }">
            <%IMG_PATH1="/resources/img/PAL.png"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'RYL' }">
            <%IMG_PATH1="/resources/img/RYL.png"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'TGW' }">
            <%IMG_PATH1="/resources/img/TGW.jpg"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'TWB' }">
            <%IMG_PATH1="/resources/img/TWB.png"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'VJC' }">
            <%IMG_PATH1="/resources/img/VJC.png"; %>
         </c:when>

         <c:otherwise>
            <%IMG_PATH1=""; %>
         </c:otherwise>
      </c:choose>

      <c:choose>
         <c:when test="${item['도착공항'] eq 'GMP' }">
            <%IMG_PATH2="/resources/img/GMP.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'HND' }">
            <%IMG_PATH2="/resources/img/HND.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'PUS' }">
            <%IMG_PATH2="/resources/img/PUS.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'NRT' }">
            <%IMG_PATH2="/resources/img/NRT.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'KIX' }">
            <%IMG_PATH2="/resources/img/KIX.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'FUK' }">
            <%IMG_PATH2="/resources/img/FUK.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'CTS' }">
            <%IMG_PATH2="/resources/img/CTS.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'TAO' }">
            <%IMG_PATH2="/resources/img/TAO.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'HKG' }">
            <%IMG_PATH2="/resources/img/HKG.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'UBN' }">
            <%IMG_PATH2="/resources/img/UBN.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'GUM' }">
            <%IMG_PATH2="/resources/img/GUM.png"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'SPN' }">
            <%IMG_PATH2="/resources/img/SPN.png"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'BKK' }">
            <%IMG_PATH2="/resources/img/BKK.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'DAD' }">
            <%IMG_PATH2="/resources/img/DAD.JPG"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'CXR' }">
            <%IMG_PATH2="/resources/img/CXR.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'CRK' }">
            <%IMG_PATH2="/resources/img/CRK.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'BKI' }">
            <%IMG_PATH2="/resources/img/BKI.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'CEB' }">
            <%IMG_PATH2="/resources/img/CEB.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'SIN' }">
            <%IMG_PATH2="/resources/img/SIN.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'TPE' }">
            <%IMG_PATH2="/resources/img/TPE.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'YNY' }">
            <%IMG_PATH2="/resources/img/YNY.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'SGN' }">
            <%IMG_PATH2="/resources/img/SGN.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'HAN' }">
            <%IMG_PATH2="/resources/img/HAN.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'MWX' }">
            <%IMG_PATH2="/resources/img/MWX.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'CJU' }">
            <%IMG_PATH2="/resources/img/CJU.png"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'CNX' }">
            <%IMG_PATH2="/resources/img/CNX.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'XIY' }">
            <%IMG_PATH2="/resources/img/XIY.png"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'MNL' }">
            <%IMG_PATH2="/resources/img/MNL.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'YNJ' }">
            <%IMG_PATH2="/resources/img/YNJ.png"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'TAE' }">
            <%IMG_PATH2="/resources/img/TAE.jpg"; %>
         </c:when>


         <c:otherwise>
            <%IMG_PATH1=""; %>
         </c:otherwise>
      </c:choose>

      <div style="display:flex; margin-bottom:25px;">
      
      <h2 style="line-height:200px; font-size:24px; margin-left:30px;">고객명 : ${item.name}</h2>
      
      <div class="card mb-3"
         style="max-width: 1000px; flex-direction: column; margin: 0 auto; height:200px; margin-left:50px; display: flex;">
         
         <div class="row g-0"
            style="border: 2px solid black; height:100%; width:800px; display:flex;">
            <div class="col-md-4" style="height: 100% display:flex;">
               <img src="<%=IMG_PATH2%>" class="img-fluid rounded-start" alt="예?"
                  style="height: 195px; width:270px;">
            </div>
            <div class="col-md-8">
               <div class="card-body">
                  <h5 class="card-title"></h5>


                  <p class="card-text">
                  <div style="display: flex;">
                     <div style="margin-right: 10px; margin-left: 45px; margin-top:-10px;">
                        <h4 style="font-size:16px; width:170px;">출발날짜 : ${item['출발날짜']}</h4>
                        <h4 style="font-size:16px; width:170px;">출발시간 : ${item['출발시간'] }</h4>
                        <h4 style="font-size:16px; width:170px;">출발공항 : ${item['출발공항']}</h4>
                        <h4 style="font-size:16px; width:170px;">도착시간 : ${item['도착시간']}</h4>
                        <h4 style="font-size:16px; width:170px;">도착공항 : ${item['도착공항']}</h4>
                        <h4 style="font-size:16px; width:170px;">운항편명 : ${ item['운항편명']}</h4>
                     </div>
                     <div style="margin-top: 20px; margin-left: 5px;">
                        <img src="<%=IMG_PATH1%>"
                           style="height: 70px; width: 250px; object-fit: fill;" />
                     </div>
                  </div>
                  </p>
               </div>
            </div>
         </div>
         </div>
         
         <button onclick="check('${item.id}', ${item.ticketnum });" style="margin-top:25px; background-color:red; border:1px solid red; border-radius:130px; height:150px; width:150px; margin-right:19rem;">
         	<h4 style="margin: 0 auto; font-weight:900; margin-left:-5px;">삭제하기</h4>
         </button>
         
         </div>
       
   </c:forEach>
      		
   </c:if>
   
   
   
   <c:if test="${sessionId ne 'admin'}">
      		
   

   <c:forEach var="item" items="${data}">

     
      <c:choose>
         <c:when test="${item['항공사'] eq 'AAR' }">
            <%IMG_PATH1="/resources/img/aar.png"; %>
         	
         </c:when>

         <c:when test="${item['항공사'] eq 'ABL' }">
            <%IMG_PATH1="/resources/img/ABL.jpg"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'ANA' }">
            <%IMG_PATH1="/resources/img/ANA.jpg"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'FGW' }">
            <%IMG_PATH1="/resources/img/FGW.jpg"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'HVN' }">
            <%IMG_PATH1="/resources/img/HVN.jpg"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'JAL' }">
            <%IMG_PATH1="/resources/img/JAL.png"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'JJA' }">
            <%IMG_PATH1="/resources/img/JJA.png"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'JNA' }">
            <%IMG_PATH1="/resources/img/JNA.png"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'KAL' }">
            <%IMG_PATH1="/resources/img/KAL.png"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'MGL' }">
            <%IMG_PATH1="/resources/img/MGL.png"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'PAL' }">
            <%IMG_PATH1="/resources/img/PAL.png"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'RYL' }">
            <%IMG_PATH1="/resources/img/RYL.png"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'TGW' }">
            <%IMG_PATH1="/resources/img/TGW.jpg"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'TWB' }">
            <%IMG_PATH1="/resources/img/TWB.png"; %>
         </c:when>

         <c:when test="${item['항공사'] eq 'VJC' }">
            <%IMG_PATH1="/resources/img/VJC.png"; %>
         </c:when>

         <c:otherwise>
            <%IMG_PATH1=""; %>
         </c:otherwise>
      </c:choose>

      <c:choose>
         <c:when test="${item['도착공항'] eq 'GMP' }">
            <%IMG_PATH2="/resources/img/GMP.jpg"; %>
            
         </c:when>

         <c:when test="${item['도착공항'] eq 'HND' }">
            <%IMG_PATH2="/resources/img/HND.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'PUS' }">
            <%IMG_PATH2="/resources/img/PUS.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'NRT' }">
            <%IMG_PATH2="/resources/img/NRT.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'KIX' }">
            <%IMG_PATH2="/resources/img/KIX.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'FUK' }">
            <%IMG_PATH2="/resources/img/FUK.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'CTS' }">
            <%IMG_PATH2="/resources/img/CTS.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'TAO' }">
            <%IMG_PATH2="/resources/img/TAO.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'HKG' }">
            <%IMG_PATH2="/resources/img/HKG.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'UBN' }">
            <%IMG_PATH2="/resources/img/UBN.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'GUM' }">
            <%IMG_PATH2="/resources/img/GUM.png"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'SPN' }">
            <%IMG_PATH2="/resources/img/SPN.png"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'BKK' }">
            <%IMG_PATH2="/resources/img/BKK.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'DAD' }">
            <%IMG_PATH2="/resources/img/DAD.JPG"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'CXR' }">
            <%IMG_PATH2="/resources/img/CXR.jpg"; %>
         </c:when>

         <c:when test="${item['도착공항'] eq 'CRK' }">
            <%IMG_PATH2="/resources/img/CRK.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'BKI' }">
            <%IMG_PATH2="/resources/img/BKI.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'CEB' }">
            <%IMG_PATH2="/resources/img/CEB.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'SIN' }">
            <%IMG_PATH2="/resources/img/SIN.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'TPE' }">
            <%IMG_PATH2="/resources/img/TPE.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'YNY' }">
            <%IMG_PATH2="/resources/img/YNY.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'SGN' }">
            <%IMG_PATH2="/resources/img/SGN.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'HAN' }">
            <%IMG_PATH2="/resources/img/HAN.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'MWX' }">
            <%IMG_PATH2="/resources/img/MWX.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'CJU' }">
            <%IMG_PATH2="/resources/img/CJU.png"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'CNX' }">
            <%IMG_PATH2="/resources/img/CNX.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'XIY' }">
            <%IMG_PATH2="/resources/img/XIY.png"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'MNL' }">
            <%IMG_PATH2="/resources/img/MNL.jpg"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'YNJ' }">
            <%IMG_PATH2="/resources/img/YNJ.png"; %>
         </c:when>
         <c:when test="${item['도착공항'] eq 'TAE' }">
            <%IMG_PATH2="/resources/img/TAE.jpg"; %>
         </c:when>


         <c:otherwise>
            <%IMG_PATH1=""; %>
         </c:otherwise>
      </c:choose>
      
  
     
      <div style="display:flex; margin-bottom:25px;">
      
      <h2 style="line-height:200px; font-size:24px; margin-left:30px;">출발날짜 : ${item['출발날짜']}</h2>
      
      <div class="card mb-3"
         style="max-width: 1000px; flex-direction: column; margin: 0 auto; height:200px; margin-left:50px; display: flex;">
         
         <div class="row g-0"
            style="border: 2px solid black; height:100%; width:800px; display:flex;">
            <div class="col-md-4" style="height: 100% display:flex;">
               <img src="<%=IMG_PATH2%>" class="img-fluid rounded-start" alt="예?"
                  style="height: 195px; width:270px;">
            </div>
            <div class="col-md-8">
               <div class="card-body">
                  <h5 class="card-title"></h5>


                  <p class="card-text">
                  <div style="display: flex;">
                     <div style="margin-right: 35px; margin-left: 50px; margin-top:-10px;">
                        <h4 style="font-size:16px;">티켓번호 : ${item.ticketnum}</h4>
                        <h4 style="font-size:16px;">출발시간 : ${item['출발시간'] }</h4>
                        <h4 style="font-size:16px;">출발공항 : ${item['출발공항']}</h4>
                        <h4 style="font-size:16px;">도착시간 : ${item['도착시간']}</h4>
                        <h4 style="font-size:16px;">도착공항 : ${item['도착공항']}</h4>
                        <h4 style="font-size:16px;">   운항편명 : ${ item['운항편명']}</h4>
                     </div>
                     <div style="margin-top: 30px; margin-left: 5px;">
                        <img src="<%=IMG_PATH1%>"
                           style="height: 70px; width: 250px; object-fit: fill;" />
                     </div>
                  </div>
                  </p>
               </div>
            </div>
         </div>
         </div>
         </div>
       
   </c:forEach>
   </c:if>
   

<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
   crossorigin="anonymous"></script>

<script>

	function check(id, ticketnum){
		if(confirm("정말 삭제하시겠습니까?")){
			location.href='adminDelete?id='+id+'&ticketnum='+ticketnum
		} else return;
	
	}
</script>


</body>
</html>
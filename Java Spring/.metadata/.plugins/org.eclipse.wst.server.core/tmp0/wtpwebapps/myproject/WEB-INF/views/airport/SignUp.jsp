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
   text-align: center;
   color:red;
   font-weight:900;
}

table {
   margin-left: auto;
   margin-right: auto;
}

table, td, th {
   border-collapse: collapse;
   text-align: center;
   display: table;
}

;
.hasDatepicker {
   height: 50px;
}

.ui-datepicker-trigger {
   height: 52px;
}

.btn {
   heihgt: 50px;
}

nav {
   margin-left: auto;
   top: 0;
   right: 0;
   padding: 20px;
   display: flex;
   float: right;
   width: 100%;
   height: 100px;
}

.navbar {
   background-color: #000000;
   margin-bottom: 70px;
}
</style>


</head>
<body>

   <!--  navbar -->
   <nav class="navbar navbar-dark" float=right;>
      <div class="container-fluid">
       <div class="container-fluid">
      	<div style="display:flex; width:200px;">
         <a href="MainPage" class="navbar-brand"><h2 style=font-weight:800;>티켓 컴바인</h2></a>
			<img src="/resources/img/ramus.png" style="height:50px;"/>
			</div>
			
      </div>
   </nav>

   <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
      crossorigin="anonymous">


   <c:if test="${duple }">
      <h1 style="font-weight:900">아이디 중복입니다</h1>
   </c:if>
   
   <c:if test="${duple2 }">
   		<h1 style="font-weight:900">공백이 있습니다</h1>
   	</c:if>


   <table style="height:500px;">
      <tr>
         <form action="/SignUp" method="post">
            <td>아이디</td>
            <td><input type="text" name="id" class="form-control">
              </td>
      </tr>
      <tr>
         <td>비밀번호</td>
         <td><input type="password" name="pw" class="form-control"></td>
      </tr>
      <tr>
         <td>이름</td>
         <td><input type="text" name="name" class="form-control"></td>
      </tr>
      <tr style="margin-bottom:20px;">
         <td>성별</td>
         <td><label class="form-check-label" for="man"> <input
               type="radio" name="gender" value="man" class="form-check-input"
               id="man" checked > 남자
         </label> <label class="form-check-label" for="woman"> <input
               type="radio" name="gender" value="woman" class="form-check-input"
               id="woman" style="margin-left: 10px";> 여자</label> </td>
               
        
      </tr> 

     <tr style="margin-top:30px;">
         <td>나이</td>
         <td><input type="text" name="age" class="form-control"></td>
      </tr>

      <tr>
         <td><input type="submit" value="회원가입"
            class="btn btn-outline-success"></td>

      </tr>
      </form>
   </table>
   
</body>
</html>
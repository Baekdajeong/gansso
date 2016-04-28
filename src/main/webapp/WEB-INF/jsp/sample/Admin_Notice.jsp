<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <link rel="shortcut icon" href="img/tae.ico" type="image/x-icon">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
<title>동호회</title>
</head>
<style>
.jumbotron {
   margin-bottom:0px;
}
.left carousel-control, right carousel-control {
	background-image: none;
	}
#wrap{
	width:1000px;
	margin:auto;
	}
.table {
	text-align:left;
}

</style>

<body>
<!-- wrap start -->
<div id="wrap">

<!-- header start -->
<div id="header">
<!-- Jumbotron -->
	<div class="jumbotron">
	   <h1>동호회 </h1>      
	</div>
<!-- Navbar -->
	<nav class="navbar navbar-default">
    <div class="navbar-header">
      <a class="navbar-brand" href="Main.html">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">     
        <li><a href="#">팀소개</a></li>
        <li><a href="#">일정</a></li>
        <li><a href="Admin_PictureList.html">사진첩</a></li>
        <li><a href="#">가계부</a></li>
        <li><a href="Admin_Member.html">회원관리</a></li>
        <li><a href="Admin_Notice.html">공지사항</a></li>
        <li><a href="Join.html"><u>회원가입</u></a></li>
      </ul>
    </div>
	</nav>
</div>

<!-- First Container -->
<div class="container-fluid bg-1 text-center">
<div class="well" style="width:100%; height:500px; overflow:auto">
	<button type="button" class="btn btn-default btn-sm" style="float:right;">
         <span class="glyphicon glyphicon-plus"></span> 추가
    </button>
	<table class="table" style="width:100%">
	
	  <thead>
	  <tr>
	    <th>번호</th>
	    <th>게시자</th>
	    <th>제목</th>
	    <th>날짜</th>
	    <th></th>
	  </tr>
	  </thead>
	  <tbody>
	    <tr>
	    <td>1</td>
	    <td>백다정</td>
	    <td>회비관련 공지입니다.</td>
	    <td>16-04-15</td>
	    <td><button type="button" class="btn btn-default btn-sm">삭제</button></td>
	  </tr>
	  <tr>
	    <td>2</td>
	    <td>송경석</td>
	    <td>이번주 경기공지입니다.</td>
	    <td>16-04-15</td>
	    <td><button type="button" class="btn btn-default btn-sm">삭제</button></td>
	  </tr>
	  <tr>
	    <td>3</td>
	    <td>권혁진</td>
	    <td>다음주 경기공지입니다.</td>
	    <td>16-04-15</td>
	    <td><button type="button" class="btn btn-default btn-sm">삭제</button></td>
	  </tr>
	  <tr>
	    <td>4</td>
	    <td>김정현</td>
	    <td>안녕하세요 회장입니다.</td>
	    <td>16-04-18</td>
	    <td><button type="button" class="btn btn-default btn-sm">삭제</button></td>
	  </tr>
	  <tr>
	    <td>5</td>
	    <td>정하늘</td>
	    <td>필독 공지사항</td>
	    <td>16-04-15</td>
	    <td><button type="button" class="btn btn-default btn-sm">삭제</button></td>
	  </tr>
	  <tr>
	    <td>6</td>
	    <td>박용성</td>
	    <td>최종 회원명단</td>
	    <td>16-03-15</td>
	    <td><button type="button" class="btn btn-default btn-sm">삭제</button></td>
	  </tr>
	  <tr>
	    <td>7</td>
	    <td>타조</td>
	    <td>경기장 안내</td>
	    <td>15-09-10</td>
	    <td><button type="button" class="btn btn-default btn-sm">삭제</button></td>
	  </tr>
 	 
	  </tbody>
	</table>

	</div>

</div>

<!--  Footer  -->
<footer class="container-fluid bg-4 text-center">
   <a href=#>Copyright ⓒ Smerksth. All Rights Reserved.</a>
</footer>
</div>
</body>
</html>
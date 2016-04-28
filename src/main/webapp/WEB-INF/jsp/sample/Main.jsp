<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"> 
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<title>동호회</title>
</head>

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
      <a class="navbar-brand" href="Main.jsp">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">     
        <li><a href="#">팀소개</a></li>
        <li><a href="#">일정</a></li>
        <li><a href="#">사진첩</a></li>
        <li><a href="#">가계부</a></li>
        <li><a href="Admin_Member.do">회원관리</a></li>
        <li><a href="#">공지사항</a></li>
        <li><a href="#"><u>회원가입</u></a></li>
      </ul>
    </div>
	</nav>
</div>

<!-- First Container -->

<div class="container-fluid bg-1 text-center">
  <div class="row">
  <div class="col-sm-8">
    <div class="well">
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
<!--  Indicators  -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
<!--  Wrapper for slides  -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="/first/images/Sample01.jpg" alt="Sample01" height="400" width="600">
    </div>

    <div class="item">
      <img src="/first/images/Sample02.jpg" alt="Sample02" height="400" width="600">
    </div>

    <div class="item">
      <img src="/first/images/Sample03.jpg" alt="Sample03" height="400" width="600">
    </div>

  </div>

<!--  Left and right controls  -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="pre">
    <span class="glyphic glyphiconwchevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphic glyphiconwchevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
   </div>
</div>
   <div class="col-sm-4"> 
     <div class="well" style="height:230px">
       <p><a href="#">My profile</a></p>
       <button type="button" class="btn btn-default btn-sm">로그인</button>
       <button type="button" class="btn btn-default btn-sm">동아리 가입</button>
     </div>
     <div class="well" style="height:185px">
       <p><a href="#">다음 경기</a></p>
       <p>
       <img src="/first/images/Sample04.jpg" class="ing-circle" height="80" width="80" alt="앰블럼">
       <span class="label label-default">VS</span>
       <img src="/first/images/Sample05.png" class="ing-circle" height="80" width="80" alt="앰블럼">
       </p>
     </div>
   </div>
   </div>
</div>

<!--  Second Container  -->
<div class="container-fluid bg-2 text-center">
<div class="well" >
	<table class="table" style="width:100%">
	  <caption>공지사항</caption>
	  <thead>
	  <tr>
	    <th width="15%">번호</th>
	    <th width="15%">게시자</th>
	    <th width="50%">제목</th>
	    <th width="20%">날짜</th>
	  </tr>
	  </thead>
	  <tbody>
	  <tr>
	    <td>1</td>
	    <td>백다정</td>
	    <td>회비관련 공지입니다.</td>
	    <td>16-04-15</td>
	  </tr>
	  <tr>
	    <td>2</td>
	    <td>송경석</td>
	    <td>이번주 경기공지입니다.</td>
	    <td>16-04-15</td>
	  </tr>
	  <tr>
	    <td>3</td>
	    <td>권혁진</td>
	    <td>다음주 경기공지입니다.</td>
	    <td>16-04-15</td>
	  </tr>
	  <tr>
	    <td>4</td>
	    <td>김정현</td>
	    <td>안녕하세요 회장입니다.</td>
	    <td>16-04-18</td>
	  </tr>
	  <tr>
	    <td>5</td>
	    <td>정하늘</td>
	    <td>필독 공지사항</td>
	    <td>16-04-15</td>
	  </tr>
	  <tr>
	    <td>6</td>
	    <td>박용성</td>
	    <td>최종 회원명단</td>
	    <td>16-03-15</td>
	  </tr>
	  <tr>
	    <td>7</td>
	    <td>타조</td>
	    <td>경기장 안내</td>
	    <td>15-09-10</td>
	  </tr>
	  </tbody>
	  
	</table>
	<ul class="pagination">
	  	<li><a href="#">?</a></li>
	  	<li><a href="#">?</a></li>
	  </ul>
	</div>
</div>


<!--  Footer  -->
<footer class="container-fluid bg-4 text-center">
   <a href=#>Copyright ⓒ Smerksth. All Rights Reserved.</a>
</footer>
</div>
</body>
</body>
</html>
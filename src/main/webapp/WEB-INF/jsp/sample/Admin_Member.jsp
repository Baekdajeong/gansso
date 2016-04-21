<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="../css/style.css" type="text/css" rel="stylesheet"/>
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
        <li><a href="Admin_Member.jsp">회원관리</a></li>
        <li><a href="#">공지사항</a></li>
        <li><a href="#"><u>회원가입</u></a></li>
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
	    <th>이름</th>
	    <th>나이</th>
	    <th>포지션</th>
	    <th>등번호</th>
	    <th>연락처</th>
	    <th>회원등급</th>
	    <th></th>
	  </tr>
	  </thead>
	  <tbody>
	  <tr>
	    <td>백다정</td>
	    <td>23</td>
	    <td>골키퍼</td>
	    <td>13</td>
	    <td>010-4818-6646</td>
	    <td>A</td>
	    <td><button type="button" class="btn btn-default btn-sm">삭제</button></td>
	  </tr>
 	  <tr>
	    <td>백다정</td>
	    <td>23</td>
	    <td>골키퍼</td>
	    <td>13</td>
	    <td>010-4818-6646</td>
	    <td>A</td>
	    <td><button type="button" class="btn btn-default btn-sm">삭제</button></td>
	  </tr>
	   <tr>
	    <td>백다정</td>
	    <td>23</td>
	    <td>골키퍼</td>
	    <td>13</td>
	    <td>010-4818-6646</td>
	    <td>A</td>
	    <td><button type="button" class="btn btn-default btn-sm">삭제</button></td>
	  </tr>
	   <tr>
	    <td>백다정</td>
	    <td>23</td>
	    <td>골키퍼</td>
	    <td>13</td>
	    <td>010-4818-6646</td>
	    <td>A</td>
	    <td><button type="button" class="btn btn-default btn-sm">삭제</button></td>
	  </tr>
	   <tr>
	    <td>백다정</td>
	    <td>23</td>
	    <td>골키퍼</td>
	    <td>13</td>
	    <td>010-4818-6646</td>
	    <td>A</td>
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
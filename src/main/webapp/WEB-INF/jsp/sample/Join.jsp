<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
.form-control {
	width: 400px;
}
.form-group {
	text-align: left;
	padding-left: 250px;
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

<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">회원가입</div>
				<div class="panel-body">
					<form role="form" action="#" method="post">
						<div class="form-group">
							<label for="id">아이디:</label> <input type="text"
								class="form-control" id="id" name="id"
								placeholder="아이디 (영어 10자 이내)" maxlength="10" required="required">
						</div>
						<div class="form-group">
							<label for="pw">비밀번호:</label> <input type="text"
								class="form-control" id="pw" name="pw"
								placeholder="패스워드 입력" maxlength="30" required="required">
						</div>
						
						<div class="form-group">
							<label for="name">이름:</label> <input type="text"
								class="form-control" id="name" name="name"
								placeholder="이름 (30자 이내)" maxlength="30" required="required">
						</div>
						
						<div class="form-group">
							<label for="birthday">생년월일:</label> <input type="text"
								class="form-control" id="birthday" name="birthday"
								placeholder="생년월일 (YYYY-MM-DD)" required="required">
						</div>


						<div class="form-group">
							<label for="telephone">전화번호:</label> <input type="text"
								class="form-control" id="telephone" name="telephone"
								placeholder="전화번호 (30자 이내)" maxlength="30" required="required">
						</div>
						<div class="form-group">
							<label for="email">이메일:</label> <input type="text"
								class="form-control" id="email" name="email"
								placeholder="이메일" maxlength="30" required="required">
						</div>
						
						<button type="submit" class="btn btn-default">Submit</button>
					</form>

				</div>

</div>
</div>

</div>

<!--  Footer  -->
<footer class="container-fluid bg-4 text-center">
   <a href=#>Copyright ⓒ Smerksth. All Rights Reserved.</a>
</footer>
</div>
</body>
</html>
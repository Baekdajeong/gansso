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
				<div class="panel-heading">사진첩</div>
				<div class="panel-body">
					<div class="row">
						 
						
							<img src="img/Sample01.jpg" alt="Sample01" height="180" width="280">
							<button type="button" class="btn btn-default btn-xs btnPictureDelete" value="">삭제</button>
							<img src="img/Sample02.jpg" alt="Sample02" height="180" width="280">
							<button type="button" class="btn btn-default btn-xs btnPictureDelete" value="">삭제</button>
							<img src="img/Sample03.jpg" alt="Sample03" height="180" width="280">
							<button type="button" class="btn btn-default btn-xs btnPictureDelete" value="">삭제</button>
						
						
					</div>

				</div>
				<div class="panel-footer">
					<form class="form-inline" role="form" method="post">
						
						<button type="button" class="btn btn-default btn-sm"
							id="myPictureInsert">사진 업로드</button>
					</form>
				</div>
			</div>
		</div>



		<div id="myPictureInsertForm" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">사진 업로드</h4>
					</div>
					<div class="modal-body">

						<form role="form" action="AdminPictureInsert.it" method="post"
							enctype="multipart/form-data">
							<div class="form-group">
								<label for="birthday">사진등록 (only JPG, 500K byte 이내):</label> <input
									type="file" class="form-control" id="weddingboardPicFileName"
									name="weddingboardPicFileName" required="required">
							</div>
							<button type="submit" class="btn btn-default">Submit</button>
						</form>


					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
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
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
    
    
    $("#deleteBtn").click(function(){
        $("#deleteModal").modal();
    });
    
    $("#dBtn").click(function() {
    	
    	var memberid = $('input:radio[name="pointCheck"]:checked').val();
    	var check = confirm("강퇴하시겠습니까?");
    	if(check) {
    	$.get({
    		
    		data: {memberid: memberid},
    		url:"Member_Delete.do",
    			success : function(data) {
    				alert("강퇴되었습니다.");
    				location.reload();
    			}
    		
    	})}
    	
    	
    })
    
    $("#modifyBtn").click(function(){
    	
    	var memberid = $('input:radio[name="pointCheck"]:checked').val();
    	
    	var request = $.ajax({
    		
    		method: "POST",
    		dataType: 'xml',
    		 data: {memberid: memberid},
    		url:"Member_ModifyAjax.do"
    		
    		
    	
    	}
    	);
    	
    	request.done(function( data ) {
    		
    		var rootElement = $(data).find(":root");
    		var Lists = $(rootElement).find("List");
    		for(var i =0; i<$(Lists).length; ++i) {
    			var list = $(Lists).eq(i);
    			
    			var name = $(list).find("name").text();
    			var age = $(list).find("age").text();
    			var pos = $(list).find("pos").text();
    			var memberid = $(list).find("memberid").text();
    			var tel = $(list).find("tel").text();
    			var cla = $(list).find("class").text();
    			
    			$('input:text[name="mname"]').val(name);
    			$('input:text[name="mage"]').val(age);
    			$('input:text[name="mpos"]').val(pos);
    			$('input:text[name="mtel"]').val(tel);
    			$('input:text[name="mclass"]').val(cla);
    			$('input:hidden[name="h_memberid"]').val(memberid);
    			
    			
    		}
    		
    		
    			
    			   		
    		  
    		  
    		  $("#modifyModal").modal();
    		 	  
    		  
    		});
    		 
    	request.fail(function( jqXHR, textStatus ) {
    		  alert("데이터 로드 실패")
    		});
    	
    	
        
    });
    
});
</script>
<style>
  .modal-header, h4, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  </style>
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
<div class="well" style="width:100%; height:500px; overflow:auto" >
	
    <div>
	<button type="button" class="btn btn-default btn-sm" id="myBtn" style="float:right;">
	 	<span class="glyphicon glyphicon-plus"></span>Member Add
    </button>
    </div>
    
    <div>
	<button type="button" class="btn btn-default btn-sm" id="modifyBtn" style="float:right;">
	 	<span class="glyphicon glyphicon-edit"></span>Member Modify
    </button>
    </div>
    <div>
    <button type="button" class="btn btn-default btn-sm" id=deleteBtn name=deleteBtn style="float:right;"> 
    	<span class="glyphicon glyphicon-remove"></span>Member Delete</button>
    
    </div>
    
    
    
    
    
  	
    
    
    
	<table class="table" style="width:100%">
	
	  <thead>
	  <tr>
	  	<th></th>
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
	 	  <c:choose>
            <c:when test="${fn:length(list) > 0}">
                <c:forEach items="${list}" var="row">
                    <tr>
                       	<td><input type="radio" id="pointCheck" name="pointCheck" value="${row.MEMBERID}"></td>
                        <td>${row.NAME}</td>
                        <td>${row.AGE}</td>
                        <td>${row.POS}</td>
                        <td>${row.MEMBERID }</td>
                       <%--  <td>${row.TEAMID }</td> --%>
                       <%--  <td>${row.TEAMNAME }</td> --%>
                        <td>${row.TEL}</td>
                        <td>${row.CLASS}</td>
                        
                        
                    </tr>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="4">조회된 결과가 없습니다.</td>
                </tr>
            </c:otherwise>
        </c:choose>
	  </tbody>
	</table>

	</div>
	
	
	 <!-- 회원 추가 Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4>Member Add</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form" id="frm" name="frm" method="post" action="Member_Insert.do">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" id="name" name="name" placeholder="Enter Username">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-info-sign"></span> Tel</label>
              <input type="text" class="form-control" id="tel" name="tel" placeholder="Enter PhoneNumber">
            </div>
             <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-info-sign"></span> Age</label>
              <input type="text" class="form-control" id="age" name="age" placeholder="Enter Age">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-info-sign"></span> Position</label>
              <input type="text" class="form-control" id="pos" name="pos" placeholder="Enter Pos">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-info-sign"></span> Class</label>
              <input type="text" class="form-control" id="class" name="class" placeholder="Enter Class">
            </div>
           
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-plus-sign"></span>Add</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>2명이상의 팀원을 등록하고싶나요? <a href="#">Multi add</a></p>
          <p>팀원들이 말을 듣지않나요? <a href="#">Ear bat</a></p>
        </div>
      </div>
      
    </div>
  </div> 
  
  
  
   <!-- 회원 수정 Modal -->
  <div class="modal fade" id="modifyModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4>Member Modify</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form" id="frm" name="frm" method="post" action="Member_Modify.do">
            <div class="form-group">
              <input type=hidden id = h_memberid name = h_memberid value="">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control" id="mname" name="mname" value="">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-info-sign"></span> Tel</label>
              <input type="text" class="form-control" id="mtel" name="mtel" value="">
            </div>
             <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-info-sign"></span> Age</label>
              <input type="text" class="form-control" id="mage" name="mage" value="">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-info-sign"></span> Position</label>
              <input type="text" class="form-control" id="mpos" name="mpos" value="">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-info-sign"></span> Class</label>
              <input type="text" class="form-control" id="mclass" name="mclass" value="">
            </div>
           
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-plus-sign"></span>Modify</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>미 구현 <a href="#">Nonono</a></p>
          <p>미 구현 <a href="#">Nonono</a></p>
        </div>
      </div>
      
    </div>
  </div> 
  
  
  
  <div class="modal fade" id="deleteModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4>Member Delete</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form" id="frm" name="frm" method="post" action="Member_Modify.do">
          
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-info-sign"></span> 강퇴사유</label>
              <input type="text" class="form-control" id="bye" name="bye" value="">
            </div>
           
              <button type="button" class="btn btn-success btn-block" id=dBtn name=dBtn><span class="glyphicon glyphicon-remove"></span>Remove</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal" ><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>강퇴사유는 강퇴를 당한 유저에게 메세지로 전달됩니다.
          <p>독재정치는 몸에 해롭습니다.
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
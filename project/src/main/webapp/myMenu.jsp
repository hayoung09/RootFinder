<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<link rel="stylesheet" href="css/myMenu.css?v=1"/>
<div class="mypage_main_menu">
<form action="RootFinderServlet" name="myfrm" method="post">
	<div class="profile">
		<div id="profile_image" >
			
			<img style="border-radius: 40px" 
			src="image/${loginUser.profile_img}" width="80px" height="80px" style="float:left;"/>
			
			 <br>
			<input type="button" value = "프로필 사진 변경" onclick='location.href="RootFinderServlet?command=profileUpload"'>
	
		<h1 style="font-size: 32px; padding-top: 0; padding-bottom: 50px;">${loginUser.username}님의 마이페이지</h1>
		</div>
		
		
	</div>
	
	<div class="mypage">
		<div class="mypage_menu">
 			<a href="RootFinderServlet?command=my_cose&id=${loginUser.id}">내가 올린 코스 보기</a>
 		</div>
		  
		<div class="mypage_menu">
		    <a href="RootFinderServlet?command=my_view_cose&id=${loginUser.id}">내가 조회한 코스 보기</a>
		</div>
		  
		<div class="mypage_menu">
		    <a href="profileUpdate.jsp">프로필 수정</a>
		</div>
	</div>
</form>
</div>
</body>
</html>
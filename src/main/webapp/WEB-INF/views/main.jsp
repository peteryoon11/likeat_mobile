<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script
	src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>


<!-- <div data-role="page" data-dialog="true" id="loginForm"
 에서 클릭시에 로그인 이미지 확인하고  페이지 그려주는 js 파일  -->
<script src="resources/js/main_member_manag.js"></script>

</head>
<body>	
	<div data-role="page" id="main">
		<div data-role="header" data-position="fixed">
		
		<jsp:include page="main_header/main_header.jsp" />
		</div>

		<div data-role="main" class="ui-content">
		
			<jsp:include page="main_main/main_main.jsp" />
		</div>
		
		<div data-role="footer" class="ui-content" data-position="fixed">
			<jsp:include page="main_footer/main_footer.jsp" />
		</div>
				
			
	</div>
	
	
	<%-- <div data-role="page" id="main">
		<div data-role="header" data-position="fixed">
		header
		</div>

		<div data-role="main" class="ui-content">
		main
		</div>
		
		<div data-role="footer" class="ui-content" data-position="fixed">
			<jsp:include page="main_footer/main_footer.jsp" />
		</div>
				
			
	</div> --%>
	
	<div data-role="page" id="search_page">
		<div data-role="header" data-position="fixed">
				<jsp:include page="main_header/main_header.jsp" />
		</div>

		<div data-role="main" class="ui-content">
		#search_page
		</div>
		
		<div data-role="footer" class="ui-content" data-position="fixed">
			<jsp:include page="main_footer/main_footer.jsp" />
		</div>
				
			
	</div>
	
	<div data-role="page" id="likeat_page">
		<div data-role="header" data-position="fixed">
		header
		</div>

		<div data-role="main" class="ui-content">
		#likeat_page
		</div>
		
		<div data-role="footer" class="ui-content" data-position="fixed">
			<jsp:include page="main_footer/main_footer.jsp" />
		</div>
				
			
	</div>
	
	<div data-role="page" id="mypage_page">
		<div data-role="header" data-position="fixed">
		header
		</div>

		<div data-role="main" class="ui-content">
		#mypage_page
		</div>
		
		<div data-role="footer" class="ui-content" data-position="fixed">
			<jsp:include page="main_footer/main_footer.jsp" />
		</div>
				
			
	</div>
	
	<div data-role="page" id="detail_page">
		<div data-role="header" data-position="fixed">
		header
		</div>

		<div data-role="main" class="ui-content" id="detailpageMain">
			#detail_page
		</div>
		
		<div data-role="footer" class="ui-content" data-position="fixed">
			<jsp:include page="main_footer/main_footer.jsp" />
		</div>
				
			
	</div>
	
	<div data-role="page" data-dialog="true" id="loginForm">
  <div data-role="header">
    <h1>You Should Login! :)</h1>
  </div>

  <div data-role="main" class="ui-content" >
<!--    <form>
  	 ID<input name="userid" required title="tttt">
   	PW<input name="passwd" required title="tttt" pattern="[0-9][A-Z]{3}">
   	<a href="#main" id="LoginInfoSend">전송</a>
   
   </form> -->
     <label for="fname" style=' color=orange; '>함께해요 LIKEat</label>
 	 ID<input id ="userid" name="userid" required title="tttt">
   	PW<input type="password" required id="passwd" name="passwd" required pattern="[0-9][A-Z]{3}">
    
     <!--  <input type="text" name="fname" id="fname"> -->
      <a href="#main" id="LoginInfoSend"><input type="submit" value="로그인" data-icon="check" data-iconpos="right" data-inline="true">
  </a>
  </div>
 
  <div data-role="footer">
    <a href="#">아직 회원이 아니세요?</a>
  </div>
</div> 
		

</body>
</html>

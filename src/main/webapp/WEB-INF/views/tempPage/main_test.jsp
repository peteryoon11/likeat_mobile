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




<!-- Swiper 때문에 넣은  화면 슬라이드 -->

<link rel="stylesheet" href="resources/css/swiper.css">
<script type="text/javascript">
	/* $(document).ready(function() {
	
	 $.ajax({
	 type : "get",
	 url : "detail/Reply/ReplyResult.jsp",
	
	 data : {
	 //		v3 : 's0016',
	 sid : $("#sid").val()
	 , rid : $("#rid").val(),
	 rcontent : $("#rcontent").val(),
	 rappr : $("#rappr").val(),
	 userid : $("#userid").val()
	 },
	 success : function(html) {
	 $("#replylist_loc").html(html);
	 //(responseData);
	 console.log("success")
	 },
	 error : function(error) {
	 console.log(error);
	 }
	 });


	 } */
	$(function() {
		$("#datepicker1").datepicker(
				{
					dateFormat : 'yy-mm-dd',
					prevText : '이전 달',
					nextText : '다음 달',
					monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
							'8월', '9월', '10월', '11월', '12월' ],
					monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
							'7월', '8월', '9월', '10월', '11월', '12월' ],
					dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
					dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
					dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
					showMonthAfterYear : true,
					changeMonth : true,
					changeYear : true,
					yearSuffix : '년'
				});
	});
	var userAgent = navigator.userAgent;
	console.log(userAgent);
	console.log("--");
	// console.log(userAgent[browser]);
	var isMobile = {
		Android : function() {
			return navigator.userAgent.match(/Android/i);
		},
		BlackBerry : function() {
			return navigator.userAgent.match(/BlackBerry/i);
		},
		iOS : function() {
			return navigator.userAgent.match(/iPhone|iPad|iPod/i);
		},
		Opera : function() {
			return navigator.userAgent.match(/Opera Mini/i);
		},
		Windows : function() {
			return navigator.userAgent.match(/IEMobile/i);
		},
		any : function() {
			return (isMobile.Android() || isMobile.BlackBerry()
					|| isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
		}
	};
	console.log(isMobile);
	console.log(isMobile.Android());
	console.log(isMobile.BlackBerry());

	/* 출처: http://fonch.tistory.com/entry/javascript-모바일-기기-구분하기 [Fonch의 블로그!]
	 */

	/*   */
	$(document).ready(function() {
		$("#loginForm").on("submit", function(event) {
			//				event.preventDefault();
			var result = false;

			if ($("#userid").val().trim().length == 0) {
				$(".userid").text("아이디를 입력해주세요");
			} else if ($("#userpw").val().trim().length == 0) {
				$(".userpw").text("비밀번호를 입력해주세요");
			} else {
				result = true;
			}
			return result;
		});

		$("#userid").on("focus", function() {
			$(".userid").text("");
		});//focus
		$("#userpw").on("focus", function() {
			$(".userpw").text("");
		});//focus

	});//ready
</script>
<style type="text/css">
html, body {
	position: relative;
	height: 100%;
}

body {
	background: #eee;
	font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
	font-size: 14px;
	color: #000;
	margin: 0;
	padding: 0;
}
</style>
</head>
<body>
	
	
	
	
	<div data-role="page" id="main">

		<div data-role="panel" id="left-mypage">
			<c:if test="${ loginfo!=null}">
      
      		안녕하세요 ${loginfo.username } 님 
     			 <a href="#">로그아웃 하기</a>





			</c:if>
			<c:if test="${ loginfo==null}">
				<a href="#loginDial">로그인 하실래요? ${loginfo}</a>
			</c:if>

			<p>왼쪽 패널 메뉴</p>
		
		</div>
		
		
		<div data-role="header" data-position="fixed">
	

		<h1>
		<c:if test="${ loginfo!=null}">
      
  				  		  안녕하세요 ${loginfo.username } 님 
					</c:if> 
					<c:if test="${ loginfo==null}">
							<a href="#loginDial" data-rel="popup">로그인 하실래요? ${loginfo}</a>
					</c:if>
					</h1>
					<a href="#left-mypage" data-icon="arrow-/">Back</a>
					<a href="#" data-icon="home" class="ui-btn-right">Back</a>

		</div>

		<div data-role="main" class="ui-content">
		<!-- 
			popup menu 가 안먹음.. data-role 이랑 data-rel 위치 확인하고 id 랑 href 확인 했는데.  예제에서 위치도  main 안에 있는거 확인하고 
				위치도 옮겼는데 -->
	<div data-role="popup" id="NEWeat">
		
						<p>새로운 음식점들이에요</p>
		</div>
		
		<div data-role="popup" id="TOPeat">
		
						<p>순위가 높은 음식점들이에요</p>
		</div>




			<a href="#TOPeat" data-rel="popup"
				class="ui-btn ui-btn-inline ui-corner-all">TOPEat</a>

			<table border="2">
				<c:forEach items="${topList}" var="topDTO" begin="0" end="3"
					varStatus="i">
					<c:if test="${(i.count%2)==1 }">
						<tr>
							<%-- ${ i.count} --%>

							<td><a href="#detail_page"> <img
									src="${topDTO.imgSrc1}" class="landscape"
									style="max-width: 100%; max-height: 100%;">
							</a></td>
					</c:if>
					<c:if test="${(i.count%2)==0 }">


						<td><a href="${topDTO.imgSrc1}"> <img
								src="${topDTO.imgSrc1}" class="landscape"
								style="max-width: 100%; max-height: 100%;">
						</a></td>
						</tr>
					</c:if>


				</c:forEach>
			</table>

			<a href="#NEWeat" data-rel="popup" 	class="ui-btn ui-btn-inline ui-corner-all">NEWeat</a>
			
			<table border="2">
				<c:forEach items="${newList}" var="newDTO" begin="0" end="3"
					varStatus="i">
					<c:if test="${(i.count%2)==1 }">
						<tr>
							<%-- ${ i.count} --%>

							<td><a href="${newDTO.imgSrc1}"> 
							<img src="${newDTO.imgSrc1}" class="landscape"
									style="max-width: 100%; max-height: 100%;">
							</a></td>
					</c:if>
					<c:if test="${(i.count%2)==0 }">


						<%-- ${topDTO}
						 --%>
						<td><a href="${newDTO.imgSrc1}"> <img
								src="${newDTO.imgSrc1}" class="landscape"
								style="max-width: 100%; max-height: 100%;">
						</a></td>
						</tr>
					</c:if>


				</c:forEach>
			</table>
		</div>
		<div data-role="footer" data-position="fixed">
			<jsp:include page="main_footer/main_footer.jsp" />
		</div>
	</div>



<div data-role="page" id="search_page">
  <div data-role="header">
    <h1>Welcome To My Homepage</h1>
  </div>

  <div data-role="main" class="ui-content">
    <p>I Am Now A Mobile Developer!!</p>
  </div>

  <div data-role="footer">
	  <jsp:include page="main_footer/main_footer.jsp" />
  </div>
</div> 


<div data-role="page" id="likeat_page">
  <div data-role="header">
    <h1>likeat_page</h1>
  </div>

  <div data-role="main" class="ui-content">
    <p>I Am Now A Mobile Developer!!</p>
  </div>

  <div data-role="footer">
    <jsp:include page="main_footer/main_footer.jsp" />
  </div>
</div> 

<!-- <div data-role="page" id="latest_page">
  <div data-role="header">
    <h1> latest_page</h1>
  </div>

  <div data-role="main" class="ui-content">
    <p>I Am Now A Mobile Developer!!</p>
  </div>

  <div data-role="footer">
    <h1>Footer Text</h1>
  </div>
</div>  -->


<div data-role="page" id="mypage_page">
  <div data-role="header">
    <h1>mypage_page</h1>
  </div>

  <div data-role="main" class="ui-content">
    <p>I Am Now A Mobile Developer!!</p>
  </div>

  <div data-role="footer">
   <jsp:include page="main_footer/main_footer.jsp" />
  </div>
</div> 
	
	
	<div data-role="page" id="detail_page">
  <div data-role="header">
    <h1>detail_page</h1>
  </div>

  <div data-role="main" class="ui-content">
    <p>I Am Now A Mobile Developer!!</p>
  </div>

  <div data-role="footer">
   <jsp:include page="main_footer/main_footer.jsp" />
  </div>
</div> 

</body>
</html>

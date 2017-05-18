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

<style type="text/css">
.bottom_icon_custom {
	font-size: 40px;
	color: orange;
}
/* 안됨..  */
</style>
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

.swiper-container {
	width: 100%;
	height: 100%;
}

.swiper-slide {
	text-align: center;
	font-size: 18px;
	background: #fff;
	/* Center slide text vertically */
	display: -webkit-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	-webkit-justify-content: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	-webkit-align-items: center;
	align-items: center;
}
</style>
</head>
<body>

	<div data-role="page" id="first_main">
		<div data-role="header" data-position="fixed">


			<h1>
				<c:if test="">
				</c:if>
				<!--  추후 로그인 명 가지고 들어갈 예정  -->
				안녕하세요 Test 님
			</h1>
			<!-- 	<a href="#first_main" class="ui-btn ui-btn-right ui-corner-all ui-shadow ui-icon-search ui-btn-icon-left">Search</a>
		 -->


		</div>

		<div data-role="main" class="ui-content">

			<!--  <div class="swiper-wrapper">
        Slides
        <div class="swiper-slide">Slide 1</div>
        <div class="swiper-slide">Slide 2</div>
        <div class="swiper-slide">Slide 3</div>
        
    </div>
		 -->

	
		
			
			<a href="#tutorial" data-rel="popup"
				class="ui-btn ui-btn-inline ui-corner-all">NEWeat</a>
				
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<c:forEach items="${topList}" var="topDTO" begin="0" end="3"
						varStatus="i">
						<div class="swiper-slide">
							<a href="${topDTO.imgSrc1}"> <img src="${topDTO.imgSrc1}"
								class="landscape" style="max-width: 100%;">
							</a>
						</div>
						<%-- 
								  	<div class="col-md-3">
								  		<a href="DetailPageController?sid=${topDTO.sid}" class="portfolio-box">
											<div class="thumbnail-wrap">
												<div class="thumbnail" style="overflow: hidden">
													<div class="centered">
														<img src="${topDTO.imgSrc1}" class="landscape" style="max-width:100%;">
													</div>
												</div>
											</div>
										<div class="portfolio-box-caption">
											<div class="portfolio-box-caption-content">
												<div class="project-name">
													${topDTO.sname}
												</div>
												<div class="project-category text-faded">
													<c:choose>
														<c:when test="${0 eq topDTO.ratingCnt}">
															"아직 별점이 없습니다"							
														</c:when>
														<c:otherwise>
															<c:set value="${topDTO.rating / topDTO.ratingCnt}" var="rate"/>
							 								<fmt:formatNumber value="${rate }" pattern=".0"/>
														</c:otherwise>
													</c:choose>
													${topDTO.sid}
						          	 			</div>
							           		</div>
						       			</div>
										</a>
									</div> --%>
					</c:forEach>
				</div>
				<!-- Add Pagination -->
				<div class="swiper-pagination"></div>
				<!-- Add Arrows -->
				<div class="swiper-button-next"></div>
				<div class="swiper-button-prev"></div>

				<!-- 		<img src="https://mp-seoul-image-production-s3.mangoplate.com/2989/136334_1490074030393_4535"> -->
			</div>
			
			
			<div data-role="popup" id="tutorial">
				<p>This is a simple popup.</p>
			</div>
		</div>


		<div data-role="footer" data-position="fixed">

			<jsp:include page="main_footer/main_footer.jsp" />

		</div>


	</div>
		
	<script src="resources/js/swiper.js"></script>

	<!-- Initialize Swiper -->
	<script>
		/* var swiper = new Swiper('.swiper-container');
		 */
		var swiper = new Swiper('.swiper-container', {
			pagination : '.swiper-pagination',
			paginationClickable : true,
			nextButton : '.swiper-button-next',
			prevButton : '.swiper-button-prev',
			spaceBetween : 30
		});
	</script>
</body>
</html>

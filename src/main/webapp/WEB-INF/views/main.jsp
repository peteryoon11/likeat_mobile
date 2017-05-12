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
</script>
</head>
<body >

	<div data-role="page" id="first_main">
		<div data-role="header" data-position="fixed">

			
			<h1>
<c:if test="">
</c:if><!--  추후 로그인 명 가지고 들어갈 예정  -->
			안녕하세요 Test 님 
			</h1>
		<!-- 	<a href="#first_main" class="ui-btn ui-btn-right ui-corner-all ui-shadow ui-icon-search ui-btn-icon-left">Search</a>
		 -->

	
		</div>

		<div data-role="main" class="ui-content">
		
<!-- 		<img src="https://mp-seoul-image-production-s3.mangoplate.com/2989/136334_1490074030393_4535"> -->
		</div>



		<div data-role="footer" data-position="fixed">
		
		<jsp:include page="main_footer/main_footer.jsp" />
		
		</div>


	</div>


</body>
</html>

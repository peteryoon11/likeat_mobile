<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script
	src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<!-- <link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
 -->
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
<body>
<!-- <div data-role="page" id="pageone">
  <div data-role="header">
    <h1>Expanded Collapsible Blocks</h1>
  </div>

  <div data-role="main" class="ui-content">
    <div data-role="collapsible" data-collapsed="false">
      <h1>Click medd - I'm collapsible!</h1>
      <p>I'm now expanded by default.</p>
    </div>
  </div>

  <div data-role="footer">
    <h1>Insert Footer Text Here</h1>
  </div>
</div>  -->
	<div data-role="page" id="main_lastest">
		<div data-role="header" data-position="fixed">


			<h1>안녕하세요 Test 님</h1>
			<!-- 	<a href="#first_main" class="ui-btn ui-btn-right ui-corner-all ui-shadow ui-icon-search ui-btn-icon-left">Search</a>
		-->

		</div>

		<div data-role="main" class="ui-content">
		main_lastest page
			
			
		</div>



		<div data-role="footer" data-position="fixed">
			<jsp:include page="main_footer/main_footer.jsp" />
			<!-- 	<div data-role="navbar">
				<ul>
					<li><a href="/likeat_verM/" data-icon="search"
						data-role="button">탐색하기</a></li>
					<li><a href="#main_save_list" data-icon="heart"
						data-role="button">저장목록</a></li>
					<li><a href="#main_went_place" data-icon="star"
						data-role="button">LIKEat </a></li>

					<li><a href="main_profile" data-icon="gear"
						data-role="button">마이페이지</a></li>
				</ul>
			</div> -->
		</div>


	</div>


</body>
</html>

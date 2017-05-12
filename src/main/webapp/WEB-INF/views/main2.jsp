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
<body>

	<div data-role="page" id="first_main">
		<div data-role="header" data-position="fixed">
			<div data-role="main" class="ui-content">
				<!-- data-collapsed="false" -->
				<div data-role="navbar" data-iconpos="left">
					<ul>
						<li><a href="#first_main" data-icon="search"
							data-role="button" >탐색하기</a></li>
					</ul>
				</div>

			</div>
			<!-- 
		패널을 누름으로서 추가하는 부분 -->
			<div data-role="panel" id="myPanel">
				<h2>Panel Header</h2>
				<p>You can close the panel by clicking outside the panel,
					pressing the Esc key or by swiping.</p>
			</div>

			<div data-role="main" class="ui-content">

				<div data-role="content">
					content 들어갈 예정
					<!-- 	<div data-role="main" class="ui-content">
					<div data-role="collapsible" data-collapsed="false">
						<h1>Click me - I'm collapsible!</h1>
						<p>I'm now expanded by default.</p>
					</div>
				</div> -->

					<table data-role="table" data-mode="columntoggle"
						class="ui-responsive" id="myTable"
						data-column-btn-text="column 을 넣고 빼기 ">
						<thead>
							<tr>
								<th data-priority="6">CustomerID</th>
								<th>CustomerName</th>
								<th data-priority="1">ContactName</th>
								<th data-priority="2">Address</th>
								<th data-priority="3">City</th>
								<th data-priority="4">PostalCode</th>
								<th data-priority="5">Country</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Alfreds Futterkiste</td>
								<td>Maria Anders</td>
								<td>Obere Str. 57</td>
								<td>Berlin</td>
								<td>12209</td>
								<td>Germany</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Antonio Moreno Taquería</td>
								<td>Antonio Moreno</td>
								<td>Mataderos 2312</td>
								<td>México D.F.</td>
								<td>05023</td>
								<td>Mexico</td>
							</tr>
							<tr>
								<td>3</td>
								<td>Around the Horn</td>
								<td>Thomas Hardy</td>
								<td>120 Hanover Sq.</td>
								<td>London</td>
								<td>WA1 1DP</td>
								<td>UK</td>
							</tr>
							<tr>
								<td>4</td>
								<td>Berglunds snabbköp</td>
								<td>Christina Berglund</td>
								<td>Berguvsvägen 8</td>
								<td>Luleå</td>
								<td>S-958 22</td>
								<td>Sweden</td>
							</tr>
							<tr>
								<td>4</td>
								<td>Berglunds snabbköp</td>
								<td>Christina Berglund</td>
								<td>Berguvsvägen 8</td>
								<td>Luleå</td>
								<td>S-958 22</td>
								<td>Sweden</td>
							</tr>
							<tr>
								<td>4</td>
								<td>Berglunds snabbköp</td>
								<td>Christina Berglund</td>
								<td>Berguvsvägen 8</td>
								<td>Luleå</td>
								<td>S-958 22</td>
								<td>Sweden</td>
							</tr>
							<tr>
								<td>4</td>
								<td>Berglunds snabbköp</td>
								<td>Christina Berglund</td>
								<td>Berguvsvägen 8</td>
								<td>Luleå</td>
								<td>S-958 22</td>
								<td>Sweden</td>
							</tr>
							<tr>
								<td>4</td>
								<td>Berglunds snabbköp</td>
								<td>Christina Berglund</td>
								<td>Berguvsvägen 8</td>
								<td>Luleå</td>
								<td>S-958 22</td>
								<td>Sweden</td>
							</tr>
							<tr>
								<td>4</td>
								<td>Berglunds snabbköp</td>
								<td>Christina Berglund</td>
								<td>Berguvsvägen 8</td>
								<td>Luleå</td>
								<td>S-958 22</td>
								<td>Sweden</td>
							</tr>

						</tbody>
					</table>
				</div>
			</div>



			<div data-role="footer" data-position="fixed">
				<div data-role="navbar">
					<ul>
						<li><a href="#first_main" data-icon="search"
							data-role="button">탐색하기</a></li>
						<li><a href="#main_save_list" data-icon="heart"
							data-role="button">저장목록</a></li>
						<li><a href="#main_went_place" data-icon="star"
							data-role="button">LIKEat </a></li>

						<li><a href="#main_profile" data-icon="gear"
							data-role="button">마이페이지</a></li>
					</ul>
				</div>
			</div>

		</div>

		<!-- dialogue 형식으로 검색 형태 부르는 부분 , 장소 묻기  -->
		<div data-role="page" data-dialog="true" id="search_loca">
			<div data-role="header">
				<h1>어디로 가세요?</h1>
			</div>

			<div data-role="main" class="ui-content">
				<p></p>
				<a href="#first_main">Go to Page One</a>
			</div>

			<div data-role="footer" data-position="fixed">
				<div data-role="navbar">
					<ul>
						<li><a href="#" data-icon="plus" data-role="button">Button1</a></li>
						<li><a href="#" data-icon="minus" data-role="button">Button2</a></li>
						<li><a href="#" data-icon="check" data-role="button">Button3</a></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- dialogue 형식으로 검색 형태 부르는 부분 , 날짜 묻기  -->
		<div data-role="page" data-dialog="true" id="search_date">
			<div data-role="header">
				<h1>얼마나 가시나요?</h1>
			</div>

			<div data-role="main" class="ui-content">
				<p></p>
				<a href="#first_main">Go to Page One</a>
			</div>

			<div data-role="footer" data-position="fixed">
				<h1>Footer Text In Dialog</h1>
			</div>
		</div>

		<!-- dialogue 형식으로 검색 형태 부르는 부분 , 인원 묻기  -->

		<div data-role="page" data-dialog="true" id="search_p_count">
			<div data-role="header">
				<h1>몇명이나 가시나요?</h1>
			</div>

			<div data-role="main" class="ui-content">
				<p></p>
				<a href="#first_main">Go to Page One</a>
			</div>

			<div data-role="footer" data-position="fixed">
				<h1>Footer Text In Dialog</h1>
			</div>
		</div>
		<!-- 2. 저장목록 불러오기 페이지 -->
		<div data-role="page" id="main_save_list">
			<div data-role="header">
				<h1>저장 목록</h1>
			</div>

			<div data-role="main" class="ui-content">
				<p></p>
				<a href="#first_main">Go to Page One</a>
			</div>

			<div data-role="footer" data-position="fixed">
				<div data-role="navbar">
					<ul>
						<li><a href="#first_main" data-icon="search"
							data-role="button">탐색하기</a></li>
						<li><a href="#main_save_list" data-icon="heart"
							data-role="button">저장목록</a></li>
						<li><a href="#main_went_place" data-icon="star"
							data-role="button">여행 </a></li>
						<li><a href="#main_message" data-icon="comment"
							data-role="button">메시지</a></li>
						<li><a href="#main_profile" data-icon="gear"
							data-role="button">프로필</a></li>
					</ul>
				</div>
			</div>
		</div>


		<!-- 3. 여행 -->
		<div data-role="page" id="main_went_place">
			<div data-role="header">
				<h1>갔던 여행들</h1>
			</div>

			<div data-role="main" class="ui-content">
				<p></p>
				<a href="#pageone">Go to Page One</a>
			</div>

			<div data-role="footer" data-position="fixed">
				<div data-role="navbar">
					<ul>
						<li><a href="#first_main" data-icon="search"
							data-role="button">탐색하기</a></li>
						<li><a href="#main_save_list" data-icon="heart"
							data-role="button">저장목록</a></li>
						<li><a href="#main_went_place" data-icon="star"
							data-role="button">여행 </a></li>
						<li><a href="#main_message" data-icon="comment"
							data-role="button">메시지</a></li>
						<li><a href="#main_profile" data-icon="gear"
							data-role="button">프로필</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- 	4. 메시지 -->
		<div data-role="page" id="main_message">
			<div data-role="header">
				<h1>메시지</h1>
			</div>

			<div data-role="main" class="ui-content">

				<h2>메시지 리스트</h2>
				<form class="ui-filterable">
					<input id="myFilter" data-type="search"
						placeholder="이야기 했던 호스트를 찾으세요">
				</form>
				<ul data-role="listview" data-filter="true" data-input="#myFilter"
					data-autodividers="true" data-inset="true">
					<li><a href="#">Adele</a></li>
					<li><a href="#">Agnes</a></li>
					<li><a href="#">Albert</a></li>
					<li><a href="#">Billy</a></li>
					<li><a href="#">Bob</a></
					<li><a href="#">Calvin</a></li>
					<li><a href="#">Cameron</a></li>
					<li><a href="#">Chloe</a></li>
					<li><a href="#">Christina</a></li>
					<li><a href="#">Diana</a></li>
					<li><a href="#">Gabriel</a></li>
					<li><a href="#">Glen</a></li>
					<li><a href="#">Ralph</a></li>
					<li><a href="#">Valarie</a></li>
				</ul>
			</div>


			<div data-role="footer" data-position="fixed">
				<div data-role="navbar">
					<ul>
						<li><a href="#first_main" data-icon="search"
							data-role="button">탐색하기</a></li>
						<li><a href="#main_save_list" data-icon="heart"
							data-role="button">저장목록</a></li>
						<li><a href="#main_went_place" data-icon="star"
							data-role="button">여행 </a></li>
						<li><a href="#main_message" data-icon="comment"
							data-role="button">메시지</a></li>
						<li><a href="#main_profile" data-icon="gear"
							data-role="button">프로필</a></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- 	5. 프로필 -->
		<div data-role="page" id="main_profile">
			<div data-role="header">
				<h1>프로필 수정</h1>
			</div>

			<div data-role="main" class="ui-content">
				<p></p>
				<a href="#pageone">Go to Page One</a> <input type="text"
					data-role="date" data-inline="true"> < <input type="text"
					id="datepicker1">
			</div>

			<div data-role="footer" data-position="fixed">
				<div data-role="navbar">
					<ul>
						<li><a href="#first_main" data-icon="search"
							data-role="button">탐색하기</a></li>
						<li><a href="#main_save_list" data-icon="heart"
							data-role="button">저장목록</a></li>
						<li><a href="#main_went_place" data-icon="star"
							data-role="button">여행 </a></li>
						<li><a href="#main_message" data-icon="comment"
							data-role="button">메시지</a></li>
						<li><a href="#main_profile" data-icon="gear"
							data-role="button">프로필</a></li>
					</ul>
				</div>
			</div>
		</div>
</body>
</html>

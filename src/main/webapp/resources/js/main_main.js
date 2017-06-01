/* $.ajax({
	type : "get",
	url : 'https://maps.googleapis.com/maps/api/geocode/json?latlng='+latitude+','+longitude+'&key=AIzaSyBoZh37iCcliE5MToxbnSTtnWSpjs_zBbw',
			success : function(html) {
		$("#replylist_loc").innerHTML=html;
		//(responseData);
		console.log(html);
		console.log(html.results);
		console.log(html.results[0]);
		console.log(html.results[0].address_components[1]);
		console.log(html.results[0].address_components[1].long_name);
		document.getElementById("replylist_loc").innerHTML=html.results[0].address_components[1].long_name;
		console.log("success")
	},
	error : function(error) {
		console.log(error);
	}
}); */
var page = 1;
$(window).scroll(function() {
	console.log($(window).scrollTop(),'scrollTop');
	console.log($(document).height(),'docum height');
	console.log($(window).height(),'window height');
	
	console.log($(document).height()-$(window).height()-2);
	console.log('--------------');
	
    if ($(window).scrollTop() > ($(document).height() - $(window).height() -1 )) {
      console.log(++page);
     // $("#enters").append("<h1>Page " + page + "</h1><BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~<BR/>So<BR/>MANY<BR/>BRS<BR/>YEAHHH~");
  		
    }
});
$(document).ready(function (){

	$("a[href='#detail_page']").click(function ()
			{// detail page href 있는 객체만 걸러서 실행 시킴 
		console.log($(this).attr("id"));
		
		$.ajax({
			type : "get",
			data : {"sid":$(this).attr("id")},
			url : 'detail',
			dataType:'json',
			success : function(result) {
				//console.log($('#tttttt').text() ,'<><>');
				
				//console.log($('#detail_page').text() ,'<><>');
				//console.log($('#detail_page').innerHTML ,'<><>');
			//	console.log($('#detail_page').html() ,'<><>'); // 초기화 ? 아니
				
				//	console.log($('#detail_page .ui-content').append("") ,'<><>');
			//	$('#detail_page .ui-content').html("test");
		//	console.log($('#detail_page .ui-content').innerHTML);
		//	$('#detail_page .ui-content').innerHTML="";
	//	$('#detail_page .ui-content').text("");
	$('#detailpageMain').html(detailPageCreate(result));	
	//		$('#detail_page .ui-content').append("<table border='2'> <tr><td>table</td></tr></table>")
				//console.log($('#detail_page').text() ,'<><>');
			//	console.log(result);
			//	console.log(something1);
			//	console.log(something2);
				
				
				console.log("success")
			},
			error : function(error) {
				console.log('error a click main_main.js');
				console.log(error);
			}
		});
		
		console.log('aaa finished');
		});
	
	
	//<button id="requestRe"
	// detail 페이지에서 댓글 다는 메소드 
	$("body").on('click',"button[id='requestRe']",function (){
		console.log("detail  !! 받음");
		//console.log($("#userid").val(),$("#passwd").val());
		
		// logout 관련 js 
		$.ajax({
			type : "get",
			data : {
				"userid":$("#Ruserid").val(),
				"sid":$("#sid").val()
				,"rid":$("#rid").val()
				,"rcontent":$("#rcontent").val()
				,"rappr":$("#rappr").val()
				
				}
			,
			url : 'appendReply',
			dataType:'text',
			success : function(result) {
			console.log('--------------');
					console.log(result);
					console.log('--------------');	
					$('#main_header_login_state').html(logout_state_PageCreate(result));
			//		window.location.reload(true); // 강제로 화면 재전환
				//	history.go(0);
				console.log("success main_logout.js");
				
			},
			error : function(error) {
				console.log('error a click main_logout main_member_manag.js');
				console.log(error);
			}
		});
		
		
		
	});	
	
});

function detailPageCreate(result)
{	
	
	console.log('Call detailPageCreate ');
	//console.log(result);
	//console.log(result.sid);
	console.log('-------');
	var sid=result.storeDTO.sid;
	let sname = result.storeDTO.sname;
	
	//let imgSrc1=result.imgSrc1;
	
	let a='홍길동';
	let b=`20`;
	console.log(`a는 ${a} b는 ${b} test`);
	
	console.log(result);
/*	<div class="slider">
	<div class="controller">
		<button class="next">&gt;</button>
		<button class="prev">&lt;</button>
	</div>

	<div class="list">
		<ul>
			<li><a href=""><img src="img/1.png" alt=""></a></li>
			<li><a href=""><img src="img/2.png" alt=""></a></li>
			<li><a href=""><img src="img/3.png" alt=""></a></li>
			<li><a href=""><img src="img/4.png" alt=""></a></li>
			<li><a href=""><img src="img/1.png" alt=""></a></li>
			<li><a href=""><img src="img/2.png" alt=""></a></li>
			<li><a href=""><img src="img/3.png" alt=""></a></li>
			<li><a href=""><img src="img/4.png" alt=""></a></li>
			<li><a href=""><img src="img/1.png" alt=""></a></li>
			
		</ul>
	</div>
</div>*/
	
	
	var inn_imageSrc1='<img src="'+result.storeDTO.imgSrc1+'" style="max-width: 100%; max-height: 100%;"/>';
	var inn_imageSrc2='<img src="'+result.storeDTO.imgSrc2+'" style="max-width: 100%; max-height: 100%;"/>';
	var inn_imageSrc3='<img src="'+result.storeDTO.imgSrc3+'" style="max-width: 100%; max-height: 100%;"/>';
	
	
	
	
	var slideSource =`
		<table border ="2">
			<tr>
				<td colspan="2">
				${inn_imageSrc1}
				</td>
			</tr>
			<tr>
				<td>
				${inn_imageSrc2}
				</td>
				<td>
				${inn_imageSrc3}
				</td>
			</tr>
		</table>
		
			`;
	
	var inn_infoTable=`
	<table  style="max-width: 100%;">
					<tr>
						<td>주소 :</td>
						<td><span> ${result.storeDTO.addr1} , ${result.storeDTO.addr2} </span> </td>
					</tr>
					<tr>
						<td>영업시간 :</td>
						<td> <span>${result.storeDTO.shour1} ~ ${result.storeDTO.shour2}</span></td>
					</tr>
					<tr>
						<td>대표 메뉴 : </td>
						<td> <span>${result.storeDTO.menu}</span></td>
					</tr>
					<tr>
						<td>종류:</td>
						<td> ${result.storeDTO.scategory}</td>
					</tr>
					<tr>
						<td>전화번호 :</td>
						<td><span>${result.storeDTO.sphone1}-${result.storeDTO.sphone2}-${result.storeDTO.sphone3}</span></td>
					</tr>
					<tr>
						<td>가격대 :</td>
						<td>${result.storeDTO.sprice}</td>
					</tr>
				

				</table>
	`;
	// 로그인  부분 추가 한 이후에 추가 할까? 
	// 
	var store_ana_data=`
	<table border="2"  width="100%">
		<tr>
			<td>view 수 
			</td>
			<td>${result.sad_dto.vi_cou}
			</td>		
		</tr>
		<tr>
			<td>review 수 
			</td>
			<td>${result.sad_dto.re_cou}
			</td>		
		</tr>
		<tr>
			<td>like 수 
			</td>
			<td>${result.sad_dto.li_cou}
			</td>		
		</tr>
	</table>
	`;
	var replyForm =
		//`<br><br><button id="requestRe">보내기</button><br><br>`;
		 `	
				<div>
					<div>
						<input id="sid" type="hidden" value="${result.storeDTO.sid}"> 
						<input
							id="rid" type="hidden" value="${result.storeDTO.sid}-${result.sad_dto.re_cou+1}">
						<textarea id="rcontent" rows="5" cols="40"></textarea>
					
					 	<select id="rappr">
							<option value="5">5</option>
							<option value="3">3</option>
							<option value="1">1</option>
						</select> userid <input id="userid" value="${result.sessionLogin.username}" readonly>
					</div>
				</div>
				<button id="requestRe">보내기</button>`;
	
	
	var replyList=``;
	
	
	for (let number in result.sReDTOList)
		{
		
		console.log(result.sReDTOList[number]);
		
		replyList+=`		
	 <div class="ui-grid-b">
      <div class="ui-block-a">
				<div>
					<img src="resources/detail/image/prosam.png" width="60px" height="60px">
			    </div>
			    <div>
			    ${result.sReDTOList[number].userid}
			    </div>
	  </div>
      <div class="ui-block-b">
				<div>날짜 ${result.sReDTOList[number].rwrda }</div>
				내용 <br><input value="${result.sReDTOList[number].rcontent}"  readonly="readonly"/>
				<div class="ui-grid-a">
					<div class="ui-block-a">
					<img src="${result.sReDTOList[number].rwrda.img2}" width="100px" height="100px">
					</div>
					<div class="ui-block-b">
					<img src="${result.sReDTOList[number].rwrda.img2}" width="100px" height="100px">
					</div>
				</div>
	  </div>
      <div class="ui-block-c">
		<!-- 평점 이미지가 들어가는 부분 --> 
    
`;

		
		if(result.sReDTOList[number].rappr=="5")
		{
			replyList+=`<img  src="resources/detail/image/good.png" width="50px"
				height="100px">

			<br>`;
		}
		else if(result.sReDTOList[number].rappr=="3")
		{
			replyList+=`<img  src="resources/detail/image/low.png" width="50px"
				height="100px">

			<br>`;
		}
		else if(result.sReDTOList[number].rappr=="1")
		{
			replyList+=`<img src="resources/detail/image/avr.png" width="50px"
				height="100px">

			<br>`;
		}
		else
		{
			console.log("평점 없는 ");
		}
		
		
		console.log("나오나?");
		replyList+=`  </div>
						</div>`;
	}
	
		
		/*
		
		`
					<div>${result.sReDTOList }</div>


					<div class="row">
						<div class="col-sm-2">
							<div>
								<img src="detail/image/prosam.png" width="100px" height="100px">
							</div>
							<div>프로맛집러 ${abc.rwrda }</div>
							<span class="glyphicon glyphicon-pencil"></span> <input
								type="hidden" value="리뷰"> :30
							<div></div>
						</div>
						<div class="col-sm-7">
							<div>날짜 ${abc.rwrda }</div>
							내용 <br>${abc.rcontent}
							<div class="row">
								<div>
									<img class="img-responsive col-sm-6" src="${abc.img1}">
								</div>

								<div>

									<img class="img-responsive col-sm-6" src="${abc.img2}">
								</div>
							</div>
						</div>

						<div class="col-sm-3">
							<c:if test="${abc.rappr eq "1"}">
								<img class=" col-sm-6" src="detail/image/low.png" width="100px"
									height="100px">

								<br>
							</c:if>
							<c:if test="${abc.rappr eq "3"}">
								<img class=" col-sm-6" src="detail/image/avr.png" width="100px"
									height="100px">
								<br>
							</c:if>
							<c:if test="${abc.rappr eq "5"}">
								<img class=" col-sm-6" src="detail/image/good.png" width="100px"
									height="100px">
								<br>
							</c:if>

						</div>
					</div>
					<hr>
				
	`;*/
	

	
	
	
/*	<div class="row">
	<div class="col-sm-2">식당의 리뷰 갯수(<span id="countreview_">${recount}</span>)</div>

	<div class="col-sm-6">

		<div>
			<div>
				<input id="sid" type="hidden" value="${storeOne.sid}"> <input
					id="rid" type="hidden" value="${storeOne.sid}-${recount+1}">
				<!-- 	<input id="rcontent" value="conten conten">
			 -->
				<textarea id="rcontent" rows="5" cols="40"></textarea>
				<!-- <input id="rappr" value="5">
				 -->
			<%-- 	 ${loginfo}
			 --%>
			 	<select id="rappr">
					<option value="5">5</option>
					<option value="3">3</option>
					<option value="1">1</option>
				</select> userid <input id="userid" value="${loginfo.userid}">
			</div>
		</div>
		<button id="requestRe">보내기</button>

	</div>
	<!--  -->
	<div class="col-sm-4">

		<!-- 전체 (33) 맛있다 (20) 괜찮다 (10) 별로 (2)
			 -->
		<ul class="breadcrumb">
			<li><a  href="#">전체(<span id="totalReply">${recount}</span>)</a></li>

			<li><a  href="#">맛있다(<span id="HighReply">${countcarr.recountHigh}</span>)</a></li>

			<li><a  href="#">괜찮다(<span id="MiddleReply">${countcarr.recountMiddle}</span>)</a></li>

			<li> <a  href="#">별로(<span id="LowReply">${countcarr.recountLow}</span>)</a></li>
		</ul>

	</div>
</div>*/
	
	
	var detailPageSource=slideSource
	+store_ana_data
	+inn_infoTable 
	+replyForm
	+replyList
	;
	
	
	
	console.log(result);
	console.log(result.storeDTO);
	console.log(result.sReDTOList);
	
	//var detailPageSource="test tt";
	console.log(detailPageSource);
	console.log('detailPageSource 출력');
	return detailPageSource;
	
}
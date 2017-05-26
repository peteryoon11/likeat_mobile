/**
 * 
 */
$(document).ready(function (){
	
	$("a[id='LoginInfoSend']").click(function (){
		console.log("LoginInfoSend!! 받음");
		console.log($("#userid").val(),$("#passwd").val());
		
		// login 관련 js 
		$.ajax({
			type : "get",
			data : {
				"userid":$("#userid").val(),
			
				"passwd":$("#passwd").val()
				}
			,
			url : 'login',
			dataType:'json',
			success : function(result) {
					console.log('--------------');
					console.log(result);
					console.log('--------------');	
					//$('#detailpageMain').html(detailPageCreate(result));
					
					$('#main_header_login_state').html(login_state_PageCreate(result));
//					window.location.reload(true); // 강제로 화면 재전환
				//	history.go(0);
				console.log("success main_login.js");
			},
			error : function(error) {
				console.log('error a click LoginInfoSend main_member_manag.js');
				console.log(error);
			}
		});
		
		
		
	});	
/*	<script type="text/javascript">
	window.location.reload(true);
	</script>*/
	
	function login_state_PageCreate(result)
	{
		
		console.log("call login_state_PageCreate");
		console.log(result);
		console.log("-----------------------");
		//var login_state="test tt"; // ${result.username} 
		var login_state=`
	
		<div data-role="navbar" class="ui-navbar" role="navigation">
   	  	<ul class="ui-grid-b">     		
       		 <li class="ui-block-a"><a href="#" class="ui-link ui-btn">${result.username}  님 안녕하세요 </a></li>
        	 <li class="ui-block-b"><a href="#" class="ui-link ui-btn">설정ff</a></li>
         	 <li class="ui-block-c"><a href="#main" id="main_logout" class="ui-link ui-btn">Logout</a></li>
      	</ul>
   	 </div>
		`;
		
		
		/*${result.username} 
		 * <div data-role="navbar" class="ui-navbar" role="navigation">
   	  	<ul class="ui-grid-b">     		
       		 <li class="ui-block-a"><a href="#" class="ui-link ui-btn">프로맛집러 님 안녕하세요 </a></li>
        	 <li class="ui-block-b"><a href="#" class="ui-link ui-btn">설정</a></li>
         	 <li class="ui-block-c"><a href="#main" id="main_logout" class="ui-link ui-btn">Logout</a></li>
      	</ul>
   	 </div>*/
		var login_state_PageSource=login_state;
		
		return login_state_PageSource;
		
	}

	
	$("body").on('click',"a[id='main_logout']",function (){
		console.log("main_logout !! 받음");
		//console.log($("#userid").val(),$("#passwd").val());
		
		// logout 관련 js 
		$.ajax({
			type : "get",
		/*	data : {
				"userid":$("#userid").val(),
			
				"passwd":$("#passwd").val()
				}
			,*/
			url : 'logout',
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
	
	function logout_state_PageCreate(result)
	{
		
		console.log("call login_state_PageCreate");
		console.log(result);
		console.log("-----------------------");
		//var login_state="test tt"; // ${result.username} 
		var logout_state=`
		
			<div data-role="navbar" class="ui-navbar" role="navigation">
				<ul class="ui-grid-a">
					<li class="ui-block-a"><a href="#loginForm" class="ui-link ui-btn">Sign In</a></li>
					<li class="ui-block-b"><a href="#" class="ui-link ui-btn">Register</a></li>
				</ul>
			</div>
		`;
		var logout_state_PageSource=logout_state;
		
		return logout_state_PageSource;
		
	}
	
	
});

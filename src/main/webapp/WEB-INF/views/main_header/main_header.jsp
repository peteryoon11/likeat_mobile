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


<script type="text/javascript">



(function geoFindMe() {
	  var output = document.getElementById("out");

	  if (!navigator.geolocation){
	    output.innerHTML = "<p>사용자의 브라우저는 지오로케이션을 지원하지 않습니다.</p>";
	    return;
	  }
		var lat_map,long_map;
	  function success(position) {
	    var latitude  = position.coords.latitude;
	    var longitude = position.coords.longitude;
		
	    lat_map=latitude;
	    long_map=longitude;
	    
	//    output.innerHTML = '<p>위도 : ' + latitude + '° <br>경도 : ' + longitude + '°</p>';

	   // console.log();
	    
	    $.ajax({
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
				console.log("success");
			},
			error : function(error) {
				console.log('error main_header');
				console.log(error);
			}
		});
	    var img = new Image();
	  //  img.src = "http://maps.googleapis.com/maps/api/staticmap?center=" + latitude + "," + longitude + "&zoom=13&size=300x300&sensor=false";

	 //   output.appendChild(img);
	  };

	  function error(error) {
	  //  output.innerHTML = '사용자의 위치를 찾을 수 없습니다.';
	  console.log(error);
	  console.log('navigator geolcation error!!! check main_header');
	  };

	 // output.innerHTML = "<p>Locating…</p>";

	  navigator.geolocation.getCurrentPosition(success, error);
	  
	  //https://maps.googleapis.com/maps/api/geocode/json?latlng=40.714224,-73.961452&key=AIzaSyBoZh37iCcliE5MToxbnSTtnWSpjs_zBbw
	


	  
	
})();


(function()
		{
	console.log("fdfdf");
//	console.log(${mdtoInfo}); // session 단에서 잘 작동하는지 확인 
	//loginInfo
//	console.log(${loginInfo});
		}
)();

</script>
</head>
<body>


		<div data-role="header" >
		<div>나의 위치는 <span id="replylist_loc"></span></div>

		<!-- <h1>Welcome To My Homepage</h1> -->
 	 <%--  <c:if test="${mdtoInfo!=null}"> --%>
 	<!--  <div id ="main_header_login_state">
 	  <div data-role="navbar" id ="">
		   	   <ul>
		        <li><a href="#loginForm">Sign In</a></li>
		        <li><a href="#">Register</a></li>
		      </ul>
	   	  </div>
 	 </div> -->
 	 <div id="main_header_login_state">
 	
 	  <c:if test="${sessionScope.loginInfo!=null}"> 
	 	 <div data-role="navbar" id ="">
	   	  	<ul>     		
	       		 <li><a href="#">${mdtoInfo.username} 님 안녕하세요 </a></li>
	        	 <li><a href="#">설정dd</a></li>
	         	 <li><a href="#main" id="main_logout">Logout</a></li>
	      	</ul>
	   	 </div>
 	   </c:if>
 	   
 	   <c:if test="${sessionScope.loginInfo==null }">
	 	   <div data-role="navbar" id ="">
		   	   <ul>
		        <li><a href="#loginForm">Sign In</a></li>
		        <li><a href="#">Register</a></li>
		      </ul>
	   	  </div>
      </c:if> 
       </div>
	</div>



</body>
</html>

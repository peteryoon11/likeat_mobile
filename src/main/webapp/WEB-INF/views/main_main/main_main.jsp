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

<link href="resources/bootstrap/startbootstrap-4-col-portfolio-gh-pages/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/bootstrap/startbootstrap-4-col-portfolio-gh-pages/css/4-col-portfolio.css" rel="stylesheet">




<script type="text/javascript">

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

	$("a").click(function ()
			{
		console.log($(this).attr("id"));
		
		$.ajax({
			type : "get",
			data : {"sid":$(this).attr("id")},
			url : 'detail',
			dataType:'json',
			success : function(html) {
				//console.log($('#tttttt').text() ,'<><>');
				
				//console.log($('#detail_page').text() ,'<><>');
				//console.log($('#detail_page').innerHTML ,'<><>');
				console.log($('#detail_page').html() ,'<><>');
			//	$('#detail_page .ui-content').remove();
				console.log($('#detail_page .ui-content').append("") ,'<><>');
				$('#detail_page .ui-content').appendTo("<table border='2'> <tr><td>table</td></tr></table>")
				//console.log($('#detail_page').text() ,'<><>');
				console.log(html);
				
				console.log("success")
			},
			error : function(error) {
				console.log('error a click');
				console.log(error);
			}
		});
		
		console.log('aaa finished');
		});
	
});
</script>
</head>
<body>
<div id ="tttttt">
<table>
<tr>
<td>test</td>
</tr>
</table>
</div>
<div>TOPEat</div>
	
			<table border="2">
				<c:forEach items="${topList}" var="topDTO" begin="0" end="3"
					varStatus="i">
					<c:if test="${(i.count%2)==1 }">
						<tr>
							<%-- ${ i.count} --%>

							<td><a href="#detail_page" id="${topDTO.sid}"> 
							<img
									src="${topDTO.imgSrc1}" class="landscape"
									style="max-width: 100%; max-height: 100%;">
							</a></td>
					</c:if>
					<c:if test="${(i.count%2)==0 }">


						<td><a href="#detail_page" id="${topDTO.sid}">
						<img
								src="${topDTO.imgSrc1}" class="landscape"
								style="max-width: 100%; max-height: 100%;">
						</a></td>
						</tr>
					</c:if>
					

				</c:forEach>
			</table>
			
			<div>NEWeat</div>
			<table border="2">
				<c:forEach items="${newList}" var="newDTO" begin="0" end="3"
					varStatus="i">
					<c:if test="${(i.count%2)==1 }">
						<tr>
							<%-- ${ i.count} --%>

							<td><a href="#detail_page" id="${newDTO.sid}">
							<img
									src="${newDTO.imgSrc1}" class="landscape"
									style="max-width: 100%; max-height: 100%;">
							</a></td>
					</c:if>
					<c:if test="${(i.count%2)==0 }">


						<td><a href="#detail_page" id="${newDTO.sid}">
						<img
								src="${newDTO.imgSrc1}" class="landscape"
								style="max-width: 100%; max-height: 100%;">
						</a></td>
						</tr>
					</c:if>
					

				</c:forEach>
			</table>
			<div id="enters">ddd</div>
	



</body>
</html>

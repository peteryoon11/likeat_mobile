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



 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- main_main 페이지에서 클릭시에 detail 페이지 그려주는 js 파일  -->
<script src="resources/js/main_main.js"></script>

<!-- custom slide js css  -->
<script src="resources/js/jqueryslide.js"></script>
<link href="resources/css/jqueryslide.css" rel="stylesheet">
<script type="text/javascript">

</script>
</head>
<body>
<!-- <div id ="tttttt">
<table>
<tr>
<td>test</td>
</tr>
</table>
</div> -->
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

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




</head>
<body>	
	<div data-role="page" id="main">
		<div data-role="header" data-position="fixed">
		
		<jsp:include page="main_header/main_header.jsp" />
		</div>

		<div data-role="main" class="ui-content">
		
			<jsp:include page="main_main/main_main.jsp" />
		</div>
		
		<div data-role="footer" class="ui-content" data-position="fixed">
			<jsp:include page="main_footer/main_footer.jsp" />
		</div>
				
			
	</div>
	
	
	<%-- <div data-role="page" id="main">
		<div data-role="header" data-position="fixed">
		header
		</div>

		<div data-role="main" class="ui-content">
		main
		</div>
		
		<div data-role="footer" class="ui-content" data-position="fixed">
			<jsp:include page="main_footer/main_footer.jsp" />
		</div>
				
			
	</div> --%>
	
	<div data-role="page" id="search_page">
		<div data-role="header" data-position="fixed">
				<jsp:include page="main_header/main_header.jsp" />
		</div>

		<div data-role="main" class="ui-content">
		#search_page
		</div>
		
		<div data-role="footer" class="ui-content" data-position="fixed">
			<jsp:include page="main_footer/main_footer.jsp" />
		</div>
				
			
	</div>
	
	<div data-role="page" id="likeat_page">
		<div data-role="header" data-position="fixed">
		header
		</div>

		<div data-role="main" class="ui-content">
		#likeat_page
		</div>
		
		<div data-role="footer" class="ui-content" data-position="fixed">
			<jsp:include page="main_footer/main_footer.jsp" />
		</div>
				
			
	</div>
	
	<div data-role="page" id="mypage_page">
		<div data-role="header" data-position="fixed">
		header
		</div>

		<div data-role="main" class="ui-content">
		#mypage_page
		</div>
		
		<div data-role="footer" class="ui-content" data-position="fixed">
			<jsp:include page="main_footer/main_footer.jsp" />
		</div>
				
			
	</div>
<div data-role="page" id="detail_page">
		<div data-role="header" data-position="fixed">
		header
		</div>

		<div data-role="main" class="ui-content" id="detailpageMain">
			#detail_page
		</div>
		
		<div data-role="footer" class="ui-content" data-position="fixed">
			<jsp:include page="main_footer/main_footer.jsp" />
		</div>
				
			
	</div>
		

</body>
</html>

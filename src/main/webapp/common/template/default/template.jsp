<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html lang="en">
	
	<head>
		<!-- Basic -->
		<title>Stay Connected With our Mobile Plans | StarHub</title>
		
		<!-- Define Charset -->
		<meta charset="utf-8">
		
		<!-- Responsive Metatag -->
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		
		<!-- Page Description and Author -->
		<meta name="description" content="StarHub - Responsive HTML5 Template">
		<meta name="author" content="Tu Nguyen">
		
		<!-- Bootstrap CSS  -->
		<link rel="stylesheet" href="<c:url value="/resources/asset/css/bootstrap.min.css"/>" media="screen">
		
		<!-- Font Awesome CSS -->
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/font-awesome.min.css"/>" media="screen">
		
		<!-- Margo CSS Styles  -->
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>" media="screen">
		
		<!-- Responsive CSS Styles  -->
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/responsive.css"/>" media="screen">
		
		<!-- Css3 Transitions Styles  -->
		<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/animate.css"/>" media="screen">
		
		<!-- JS  -->
		<script type="text/javascript" src="<c:url value="/resources/asset/js/jquery.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/asset/js/bootstrap.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/asset/js/angular.min.js"/>"></script>
	 	<script type="text/javascript" src="<c:url value="/resources/asset/js/angular-route.min.js"/>"></script>
		<script type="text/javascript" src="<c:url value="/resources/asset/js/angular-resource.js"/>"></script>
		
		<!-- Main JS  -->
		<script type="text/javascript" src="<c:url value="/resources/js/main.js"/>"></script>
	
	</head>
	
	<body ng-app="starhubApp">
		<div class="wrapper">
			<!-- Full Body Container -->
			<div id="container">
				<!-- Start Header Section -->
				<div class="hidden-header"></div>
				<tiles:insertAttribute name="header"/>
				<tiles:insertAttribute name="page-content" />
				<tiles:insertAttribute name="breadcrumb"/>
				<tiles:insertAttribute name="footer" />
				<a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>
			</div>
		</div>
	</body>
</html>
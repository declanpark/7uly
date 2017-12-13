<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><tiles:getAsString name="title" ignore="true" /></title>
<link href="<c:url value='/resources/css/layout.css' />" rel="stylesheet"></link>
<script type="text/javascript" src="<c:out value='/resources/js/jquery/1.12.4/jquery-1.12.4.min.js'/>"></script>
<script type="text/javascript" src="<c:out value='/resources/js/ax5/ax5ui.all.min.js'/>"></script>
<link rel="stylesheet" type="text/css" href="<c:out value='/resources/css/common.css' />">
<link rel="stylesheet" type="text/css" href="<c:out value='/resources/css/ax5/AXJ.min.css' />">
<link rel="stylesheet" type="text/css" href="<c:out value='/resources/css/ax5/ax5ui.all.css' />">
</head>
<body>
	<div class="wrap">
		<header>
			<tiles:insertAttribute name="header" />
		</header>
		<nav class="nav">
			<tiles:insertAttribute name="nav" />
		</nav>
		<main role="main" class="main"> 
			<tiles:insertAttribute name="main" />
		</main>
		<footer>
			<tiles:insertAttribute name="footer" />
		</footer>
	</div>
</body>
</html>


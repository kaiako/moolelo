<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${assetPath(src: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${assetPath(src: 'apple-touch-icon-retina.png')}">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDu-axp4_eBr8-YWQQ3ax6pHpW-xvLxNlQ" />
<asset:javascript src="googlemap.js" />
<asset:stylesheet src="application.css" />
<asset:javascript src="application.js" />
<g:layoutHead />
</head>
<body>
	<%--		<div id="map"></div>		--%>
	<g:applyLayout name="navbar"/>	
	<g:layoutBody />
	<g:applyLayout name="footer"/>
	
</body>
</html>

<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!--[if IE 7]>
<html id="ie7" dir="ltr" lang="ko-KR">
<![endif]-->
<!--[if !(IE 7) ]><!-->
<html dir="ltr" lang="ko-KR">
<!--<![endif]-->
<head>
	<meta charset="UTF-8" />
	<title>녹색성장위원회</title>
	
	<link rel="stylesheet" type="text/css" href="<c:url value="/css/style.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="/css/layout.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="/css/green.css" />">
	<style type="text/css">
		#navcats .nav_cats .sub-menu {
			display: block;
			/* The way to change overlay opacity is the follow properties. Opacity is a tricky issue due to
					longtime IE abuse of it, so opacity is not offically supported - use at your own risk. 
					To play it safe, disable overlay opacity in IE. */
			/* For Firefox/Opera/Safari/Chrome */
			opacity: 10;
			/* For IE 5-7 */
			filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=100);
			/* For IE 8 */
			-MS-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=100)";
		}
		
		/*#navcats .nav_cats .sf-sub-1 .sub-width1-1 a{color:red;}*/
		
		html {
			overflow:hidden;
		}
	</style>
</head>
<body>
	<img src="<c:url value="/images/main/noticePop.jpg" />" alt="녹색성장위원회 홈페이지가 내부 전기공사로 인하여 아래 일정과 같이 서비스 중단 가능성이 있음을 알려드립니다. 일시: 2015.10.08(목) 18:00 ~ 2015.10.11(일) 24:00" />
	<div style="right: 0px; top: 0px; position: absolute; width: 30px; height: 30px; cursor: pointer;" onclick="window.close();"></div>
</body>
</html>
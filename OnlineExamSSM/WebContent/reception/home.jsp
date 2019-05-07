<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Insert title here</title>
	<%
    	String path = request.getContextPath();
	    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    %>
	<c:set var="path" value="<%=basePath %>"></c:set>
 	<link href="${path }/css/bootstrap/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background-color: #EEEEEE;">
	<div class="jumbotron" style="height: 630px;padding-top: 50px; padding-bottom: 0px; margin-bottom: 0px;">
		<div style="padding: 10px;">
			<span style="margin-top: 25px;width: 211px; height: 350px; line-height: 35px;text-align: center;" id="date_time" style="color: #000;"></span>
			<img style="background" src="${path }/images/reception/home-bg.png" width="100%"/>
		</div>
	</div>

	<!-- js引入 -->
    <script src="${path }/js/jquery.js"></script>
    <script src="${path }/js/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript">
		date_time();
		setInterval("date_time()", 1000);
		function date_time() {
    		var date = new Date();
    		var year = date.getFullYear();
    		var month = date.getMonth()+1;
    		var day = date.getDate();
    		var hour = date.getHours();
    		var minutes = date.getMinutes();
    		var seconds = date.getSeconds();
    		if(parseInt(seconds) >= 0 && parseInt(seconds) < 10) {
    			seconds = "0"+seconds;
    		}
    		$("#date_time").text(year+"年"+month+"月"+day+"日"+hour+"时"+minutes+"分"+seconds+"秒");
    	}
	</script>
</body>
</html>
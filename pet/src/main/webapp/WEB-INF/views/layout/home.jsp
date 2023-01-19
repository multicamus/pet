<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
	<div>
		<tiles:insertAttribute name="top" />
	</div>
	
	<div>
		<tiles:insertAttribute name="content" />
 	</div>
 	
 	<div>
 		<tiles:insertAttribute name="footer" />	
 	</div>
</body>
</html>
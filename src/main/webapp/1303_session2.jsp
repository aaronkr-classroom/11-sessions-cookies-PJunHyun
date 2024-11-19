<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session 2</title>
</head>
<body>
<%
	// session.invalidate();
	//세션이 제거되거나 없으면 500오류 발생
	
	String user_id = (String) session.getAttribute("userID");
	String user_pw = (String) session.getAttribute("userPW");
	
	out.println("설정된 세션의 속성값[0]:" + user_id + "<br>");
	out.println("설정된 세션의 속성값[1]:" + user_pw + "<br>");
%>
</body>
</html>
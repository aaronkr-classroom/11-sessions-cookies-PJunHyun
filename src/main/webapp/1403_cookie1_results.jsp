<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Results</title>
</head>
<body>
<%
	out.println("쿠키 설정이 성공했습니다!</h3>");
	Cookie[] cookies = request.getCookies();
	
	out.println("현재 설정된 쿠키의 개수 = " + cookies.length + "<br>");
	out.println("=====================================<br>");
	
	for (Cookie c : cookies) {
		out.println("<ul>");
		out.println("<li>쿠키의 이름 (키): " +c.getName() + "</li>");
		out.println("</ul>");
		out.println("=====================================<br>");
	}
%>
</body>
</html>
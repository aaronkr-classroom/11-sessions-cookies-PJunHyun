<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Processing</title>
</head>
<body>
<%
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("pw");
	String user_cookie = request.getParameter("cookie");
	
	if (user_id.equals("admin") && user_pw.equals("1234")) {
		Cookie cookie_id = new Cookie("UserID", user_id);
		Cookie cookie_pw = new Cookie("UserPW", user_pw);
		Cookie cookie_ck = new Cookie("UserCK", user_cookie);
		
		response.addCookie(cookie_id);
		response.addCookie(cookie_pw);
		response.addCookie(cookie_ck);
		
		response.sendRedirect("1403_cookie1_results.jsp");
		
		out.println("쿠키 생성이 성공했습니다!<br>");
		out.println(user_id + "님 환영합니다!<br>");
	} else {
		out.println("쿠키 생성이 실패하였습니다.");
	}
%>
</body>
</html>
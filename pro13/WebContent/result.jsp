<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13장 jsp:forward 태그 사용2</title>
</head>
<body>
	<%
	String userID = request.getParameter("user_ID");
	if (userID.length() == 0) {
		/* 예전에 배운 방식
		RequestDispatcher dispatch = request.getRequestDispatcher("login.jsp");
		dispatch.forward(request, response);	
		
		*/
	%>
	<jsp:forward page="login.jsp" />

	<%
	}
	%>
	<h1>
		환영합니다
		<%=userID%>님!!
	</h1>

</body>
</html>
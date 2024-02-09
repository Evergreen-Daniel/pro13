<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>13장 jsp:forward 태그 사용3</title>
</head>
<body>
	<%
	String msg = request.getParameter("msg");
	if (msg != null) {
	%>
	<h1><%=msg%></h1>
	<%
	}
	%>
	<form action="result2.jsp" method="post">
		<fieldset>
			<legend> 로그인 정보</legend>
			<ul>
				<li>아이디: <input type="text" name="user_ID"><br></li>
				<li>비밀번호: <input type="password" name="userPw"></li>
				<br>
			</ul>

			<ul>
				<li><input type="submit" value="로그인"> <input
					type="reset" value="다시입력"></li>
			</ul>
		</fieldset>
	</form>
</body>
</html>
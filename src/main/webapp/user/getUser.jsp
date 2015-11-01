<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/addUser" method="post">
		<fieldset>
			<legend>회원가입</legend>
			<p>아이디 : <input type="text" size="12" maxlength="8">
			<p>비밀번호 : <input type="password" size="12" maxlength="8">
			<p>비밀번호 : <input type="password" size="12" maxlength="8">
			<input type="submit" value="전송">
		</fieldset>
	</form>
</body>
</html>
<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
>>>>>>> f2f14405ccf28cdb84981b464be06c1cc7c137ca
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<style type="text/css">
<<<<<<< HEAD
	#cl-dashboard{display:none;}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String key=request.getParameter("key");
	//hidden처리를 통해서 한페이지에 form작성 가능(key값이용)
	if(key==null){
	%>
		<form action="formpage12.jsp" method="post">
			<b>메세지 입력 : </b>
			<input type="text" name="msg">
			<br><br>
			<input type="hidden" name="key" value="result">
			<input type="image" src="../image/chr08.gif">
		</form>
	<%
	} else if(key.equals("result")){
		String msg=request.getParameter("msg");
	%>
		<br>
		<h2>전달받은 메세지</h2>
		<%=msg%><br><br>
		<input type="button" value="종료화면으로 이동" onclick="location.href='formpage12.jsp?key=exit'">
		<input type="button" value="초기화면으로 이동" onclick="location.href='formpage12.jsp'">
	<%
	} else if(key.equals("exit")){
	%>
		<h2>종료화면</h2>
		<img src="../image/chr09.gif" width="300"><br><br>
		<input type="button" value="초기화면으로 이동" onclick="location.href='formpage12.jsp'">
	<%
	} 
%>
=======
#cl-dashboard {
	display: none;
}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String key = request.getParameter("key");
		if (key == null) {
	%>
	<form action="formpage12.jsp" method="post">
		<b>메세지 입력 : </b> <input type="text" name="msg"> <br>
		<br> <input type="hidden" name="key" value="result"> 
		<input type="image" src="../image/chr08.gif">
	</form>
	<%
		} else if (key.equals("result")) {
			String msg = request.getParameter("msg");
	%>
	<br>
	<h2>전달받은 메세지</h2>
	<%=msg%><br>
	<br>
	<input type="button" value="종료화면으로 이동" onclick="location.href='formpage12.jsp?key=exit'">
	<input type="button" value="초기화면으로 이동" onclick="location.href='formpage12.jsp'">
	<%
		} else if (key.equals("exit")) {
	%>
	<h2>종료화면</h2>
	<img src="../image/chr09.gif" width="300">
	<br>
	<br>
	<input type="button" value="초기화면으로 이동" onclick="location.href='formpage12.jsp'">
	<%
		} else {
		}
	%>
>>>>>>> f2f14405ccf28cdb84981b464be06c1cc7c137ca
</body>
</html>
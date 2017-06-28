<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<style type="text/css">
	#cl-dashboard{display:none;}
</style>
</head>
<body>
<%
	int year=Integer.parseInt(request.getParameter("year"));
	int month=Integer.parseInt(request.getParameter("month"));
	int day=Integer.parseInt(request.getParameter("day"));
	
	Calendar cal=Calendar.getInstance();
	//폼에 입력한 값으로 년월일 셋팅하기
	cal.set(year,month-1,day);
	//요일숫자구하기(1:일....7:토)
	int w=cal.get(Calendar.DAY_OF_WEEK);
	String filename="";
	String s="";
	switch(w){
	case 1: s="sun";
	break;
	case 2: s="mon";
	break;
	case 3: s="tue";
	break;
	case 4: s="wed";
	break;
	case 5: s="thu";
	break;
	case 6: s="fri";
	break;
	case 7: s="sat";
	break;
	}
	
	filename="week_"+s+".jsp";  //이동할 파일명
	//이동하기
	response.sendRedirect(filename+"?myimg="+s);
%>
</body>
</html>
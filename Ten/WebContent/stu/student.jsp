<%@ page language="java" import="java.util.*,com.ten.user.Student" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
	<title>Homepage</title>
	<link href="style_1.css" type="text/css" rel="stylesheet"/>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <body>
  <% 	Student stu = null;
  		if(session.getAttribute("student")==null){
  			response.sendRedirect("../Login.jsp");
  		}else{
  			stu = (Student)session.getAttribute("student");}
  %>
<div class="top">
	<div class="title"><p>System of students' course selection </p></div>
</div>
<div class="main">
	<div class="main_left">
		<div class="main_left_class00"><img src=img/touxiang.png></div>
		<div class="main_left_class01"><a href="stu/choiceCou.jsp">Course Select</a></div>
		<div class="main_left_class02"><a href="stu/showCou.jsp">My Course</a></div>
		<div class="main_left_class03"><a href="stu/stuInfo.jsp">Student Info</a></div>
		<div class="main_left_class100">
		<input class="reset" type="button" value="Quit" onClick="window.location.href=('/Ten/servlet/serDoLogout')">
		</div>
	</div>
	<div class="main_right">
		<div class="info">
			<p>Dear <%= stu.getSname() %>, Good Morning</p>
		</div>
		<div class="box">
			<div class="function"><p>The course selection of 2021 1th semester is open.</p></div>
			<div class="form">
			<table class="news">
			<tr><td><h2>Notice on the arrangement of courses in this semester</h2></td></tr>
			<tr><td>Ever students:</td></tr>
			<tr><td>This semester will officially begin on March 1, and the course selection will begin on February 16.</td></tr>
			<tr><td>1. Course selection time：February 16 - February 28</td></tr>
			<tr><td>2. After logging in to the course selection information management system, students enter the course selection process.</td></tr>
			<tr><td>3. The course selection must be completed within the course selection time. After the course selection is over, no course selection will be conducted. Students are requested to pay attention to the selection time.</td></tr>
			<tr><td align="right">2017-06-10</td></tr>
			</table>
			</div>
		</div>
	</div>
</div>
</body>

</html>

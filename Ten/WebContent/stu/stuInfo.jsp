<%@ page language="java" import="java.util.*,com.ten.dao.*,com.ten.user.Student,com.ten.user.SedCou" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <meta charset="UTF-8">
	<title>Student Info</title>
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
<div class="top">
	<div class="title"><p>System of students' course selection</p></div>
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
					<%
			    	Student stu = null;
			    	if(session.getAttribute("student")==null){
			    		response.sendRedirect("/Ten/Login.jsp");
			    	}else{
			    		stu = (Student)session.getAttribute("student");%>
	<div class="main_right">
		<div class="info">
			<p>Dear <%= stu.getSname() %>, Good Morning</p>
		</div>
		<div class="box">
			<div class="function"><p>The course selection of 2021 1th semester is open.</p></div>
			<div class="form">
			<div class="form_1">
				<table class="info">
				<%
			  			DaoStu select1 = new DaoStu();
			   		%>
  					<tr><td></td></tr>
  					<tr><td></td><td><input class="text" type="text" value="<%= stu.getSname() %>" readonly="true"></td><td></td><td></td><td></td><td rowspan="2"><img src="/Ten/img/touxiang.png"/></td></tr>
  					<tr><td></td><td><input class="text" type="text" value="Student number：<%= stu.getSNo() %>" readonly="true"></input></td></tr>
  						<tr><td></td><td><input class="text" type="text" value="Password：<%= stu.getSpassword() %>" readonly="true"></td></tr>
  						<tr><td></td><td><input class="text" type="text" value="Gender：<%= stu.getSsex() %>" readonly="true"></td></tr>
  						<tr><td></td><td><input class="text" type="text" value="班级：<%= stu.getSclass() %>" readonly="true"></td></tr>
  						<tr><td></td><td><input class="text" type="text" value="总学分：<%= select1.selectScre(stu).getScredit() %>" readonly="true"></td>
  					</tr>
  					
			  		
		  				<%
		   			}
		    %>
  				</table>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
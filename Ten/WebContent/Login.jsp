<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <link href="style.css" type="text/css" rel="stylesheet"/>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<script type="text/javascript">
function check(r) { 
　　if (isNaN(r.username.value)) { 
　　　　alert("Pelease enter your student number"); 
　　　　r.username.focus();
　　　　return false;
　　} 
}
</script>
  </head>
  <body>
  <div class="login_bg">
			<div class="login_box">
					<img class="login_logo" src="img/LOGO_UON.png" alt=""/>			
				<div class="login_line"></div>
				<div class="login_content">
					<h2>Uni of Newcastle</h2>
					<p>Student Selection Management System</p>
					<form action="servlet/serDoLogin?type=stu" method="post" onsubmit = "return check(this)">
						<div class="login_input">
							<input type="text" placeholder="Student Number" class="login_username" name="username">
						</div>
		
						<div class="login_input">
							<input type="password" placeholder="PassWord" class="login_password"  name="password">
						</div>
						
						<div class="">
							<input class="login_btn sure" type="submit" value="Login">							
						</div>
					</form>
				</div>
			</div>
			<div class="text"><p>Copyright ©2020 Student Course Selection Information System All rights reserved</p></div>
		</div>
	</body>
</html>

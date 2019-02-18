<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>漫漫登陆</title> 
      <link rel="stylesheet" href="css/Loginstyle.css"> 
      <script type="text/javascript" src="js/jquery-1.6.1.min.js"></script>
      <script type="text/javascript">
		function operation(val){
			var form = document.getElementById("myform");
			form.action = "login.do?param="+val;
			form.method="post";
			form.submit();
		}
	</script>
      
</head>

<body>

  <body>
  <form action="login.do" id="myform">
	<div class="login">
		<div class="login-screen">
			<div class="app-title">
				<h1>漫漫登陆</h1>
			</div>
			<div class="login-form">
				<div class="control-group">
				<input type="text" class="login-field" value="" placeholder="手机/电话号码" name="tel" id="login-name">
				<label class="login-field-icon fui-user" for="login-name"></label>
				</div></br>
				<div class="control-group">
				<input type="password" class="login-field" value="" placeholder="用户密码" name="upass" id="login-pass">
				<label class="login-field-icon fui-lock" for="login-pass"></label>
				</div></br>
                <input type="button" class="btn btn-primary btn-large btn-block" onclick="operation('login')"  value="登录"/>
				</br>
				<a class="login-link" href="#">忘记密码?</a>&nbsp <a class="login-link" href="http://localhost:8080/mmp/register.jsp">没有账号？前往注册！</a>
			</div>
		</div>
	</div>
	</form>
</body>
  
  

</body>

</html>

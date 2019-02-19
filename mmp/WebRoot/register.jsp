<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="UTF-8">
		<title>Sign-Up/Login Form</title>
		<link
			href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600'
			rel='stylesheet' type='text/css'>
		<link rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


		<link rel="stylesheet" href="css/Registerstyle.css">
		<script type="text/javascript">
		function operation(val) {
			var form = document.getElementById("myform");
			form.action = "register.do?param=" + val;
			form.method = "post";
			form.submit();
		}
		/**
 		*图片预览
 		*/
		function showimg(o) {
			var fr = new FileReader();
			var f = o.files[0];
			fr.readAsDataURL(f);
			fr.onload = function() {
				alert(fr.result);
				document.getElementById("img").src = fr.result;
			}
		}
		</script>
	</head>
	<body>
		<div class="form">
			<ul class="tab-group">
				<li class="tab active">
					<a href="#signup">漫漫注册</a>
				</li>
				&nbsp &nbsp
				<a href="http://localhost:8080/mmp/login.jsp">返回登陆</a>
			</ul>

			<div class="tab-content">
				<div id="signup">
					<h1>
						免费注册
					</h1>
					<form id="myform">
						<div class="field-wrap">
							<label>
								昵称
								<span class="req">*</span>
							</label>
							<input type="text" name="uname" required autocomplete="off" />
						</div>
						<div class="field-wrap">
							<label>
								手机号/电话
								<span class="req">*</span>
							</label>
							<input type="text" name="tel" required autocomplete="off" />
						</div>

						<div class="field-wrap">
							<label>
								选择头像
								<span class="req">*</span>
							</label>
							<input type="file" onchange="showimg(this)" name="headimage"
								required autocomplete="off" />
							<img src="" id="img" width="50px" height="40px" />
						</div>

						<div class="field-wrap">
							<label>
								设置密码
								<span class="req">*</span>
							</label>
							<input type="password" name="upass" required autocomplete="off" />
						</div>
						<div class="field-wrap">
							<label>
								确认密码
								<span class="req">*</span>
							</label>
							<input type="password" name="repass" required autocomplete="off"/>
						</div>
						<button type="submit" class="button button-block" onclick="operation('register')"/>
							注册
						</button>
					</form>

				</div>
			</div>
			<!-- tab-content -->
		</div>
		<!-- /form -->
		<script
			src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'>
</script>



		<script src="js/index.js">
</script>




	</body>

</html>

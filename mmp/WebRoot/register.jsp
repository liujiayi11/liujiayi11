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
		<script type="text/javascript" src="js/jquery-1.6.1.min.js">
</script>
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

function show(tel) {
	if (tel == "") {
		document.getElementById("kkk").innerHTML = "该电话不能为空";
	} else {
		var request = new XMLHttpRequest(); // 新建XMLHttpRequest对象
		request.onreadystatechange = function() { // 状态发生变化时，函数被回调
			if (request.readyState == 4) { // 成功完成
				// 判断响应结果:
				if (request.status == 200) {
					// 成功，通过responseText拿到响应的文本:
					if (request.responseText == "cw") {
						document.getElementById("kkk").innerHTML = "该电话已注册";
					} else {
						document.getElementById("kkk").innerHTML = "该电话可以注册";
					}
				}
			}
		}
		// 发送请求:
		request.open('POST', 'register.do?param=checktel&tel=' + tel);
		request.send();
	}

}
function change() {
	var error = document.getElementById("kkk").innerHTML;
	if (error != null) {
		document.getElementById("kkk").innerHTML = "";
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
					<span style="color: red" id="kkk"></span>
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
							<input type="text" name="tel" required autocomplete="off"
								onblur="show(this.value)" onfocus="change()" />
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
							<input type="password" name="repass" required autocomplete="off" />
						</div>
						<button type="submit" class="button button-block"
							onclick="operation('register')" />
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

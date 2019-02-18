<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>个人中心-基本资料</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link
			href="http://static.u17i.com/v2/common/css/common.css?t1535523360"
			rel="stylesheet" type="text/css" />
		<link href="http://static.u17i.com/v2/common/css/datepicker.css"
			rel="stylesheet" type="text/css" />
		<script src="http://static.u17i.com/v4/js/all-min.js?t1437463353"
			type="text/javascript">
</script>
		<script src="http://static.u17i.com/v4/js/u17.js?t1526437697"
			type="text/javascript">
</script>
		<script src="http://static.u17i.com/v2/js/project/user.js?t1477047507"
			type="text/javascript">
</script>
		<script src="http://static.u17i.com/common/js/jquery.validate.js"
			type="text/javascript">
</script>
		<script src="http://static.u17i.com/v2/js/jquery-datepicker.js"
			type="text/javascript">
</script>
		<script src="http://static.u17i.com/v2/js/module/city.js"
			type="text/javascript">
</script>
		<script type="text/javascript">
var v1 = "14";
var v2 = "197";
var sending = false;
$(function() {
	$("#profile_form").validate( {
		rules : {
			qq : {
				qq : true
			},
			mobile : {
				isMobile : true
			},
			realname : {
				rangelength : [ 0, 10 ]
			},
			address : {
				rangelength : [ 0, 150 ]
			},
			zipcode : {
				isZipCode : true
			},
			email : {
				email : true
			}
		},
		submitHandler : function(form) {
			form.submit();
		},
		success : function(label) {
			label.html("&nbsp;").addClass("lf ico_check");
		},
		errorElement : 'dd',
		errorClass : 'ico_error',
		errorPlacement : function(error, element) {
			p = element;
			if (p.parent().find('dd.ico_error').length == 0)
				p.after(error);
		}
	});
});
function check_email_bind() {
	$
			.ajax( {
				url : '/passport/ajax.php?mod=member&act=send_email_check',
				type : 'get',
				dataType : 'json',
				success : function(o) {
					showMsg(o.message);
					if (o.code > 0) {
						$('#email_check_bind')
								.html(
										'等待验证&nbsp;&nbsp;<a href="javascript:void(0);" onclick="check_email_bind()">重新验证</a>');
					}
				}
			})
}

function update_email_show() {
	$('#email_show').remove();
	var email_show_dialog = $('<div id="email_show"></div>');
	$('body').append(email_show_dialog);
	var html = '<div style="width:340px;" class="pd_20 clearfix"><form id="form_email_update">'
	//         +'<div class="height_23 pd_b_20 txt_lf"><span style="width:60px;" class="ve_m in_blo">用户密码：</span><input type="password" id="password" name="password" class="input_txt_160 ve_m" value="">'
	//         +'</div>'
	+ '<div class="height_23 pd_b_20">' + '<span style="width:60px;" class="ve_m in_blo">新email：</span><input type="text" id="new_email" name="new_email" class="input_txt_160 ve_m" value=""></div>' + '<div class="txt_lf pd_lf_60 pd_b_10"><input type="submit" id="dialog_submit" class="btn submit" value="确定">&nbsp;<input type="button" id="dialog_reset" class="btn reset" value="取消" //onclick="email_edit_close()"></div></form></div>';
	email_show_dialog.html(html);
	$('#form_email_update').validate( {
		rules : {
			//    password:{required:true,rangelength:[5,16]},
		new_email : {
			email : true,
			required : true
		}
	},
	messages : {
		//    password: {required:"密码不能为空",rangelength: "密码长度5-16"},
		new_email : {
			required : "邮箱不能为空",
			email : "邮箱格式错误"
		}
	},
	submitHandler : function() {
		//    var password = $('#password').val();
		var new_email = $('#new_email').val();

		if (sending) {
			showMsg('邮件发送中,请不要重复点击');
			return;
		}
		$.ajax( {
			url : '/passport/ajax.php?mod=member&act=update_member_email',
			type : 'post',
			dataType : 'json',
			data : {
				new_email : new_email
			},
			success : function(o) {
				email_edit_close();
				showMsg(o.message);
			},
			beforeSend : function() {
				sending = true;
			},
			complete : function() {
				sending = false;
			}
		})
	},
	success : function(label) {
		label.html("&nbsp;").addClass("ico_check");
	},
	errorElement : 'span',
	errorClass : 'ico_error',
	errorPlacement : function(error, element) {
		if (element.find('span.ico_error').length == 0)
			element.after(error);
	}
	});
	$('#email_show').dialog( {
		width : 380,
		modal : true,
		title : '更改邮箱'
	}).dialog('autoHeight').dialog('open');
}
function email_edit_close() {
	$('#email_show').dialog('close');
}

$(function() {
	var len_num = 300;
	var txt = $('#introduce').val().replace(/\n/g, "\r\n");
	var len = txt.length;
	$('.red_e5').html(len_num - len);
	$('#introduce').keyup(function() {
		var txt = $('#introduce').val();
		var len = txt.length;
		if (len > len_num) {
			len = len_num;
			$('#introduce').val(txt.substring(0, len_num));
		}
		$('.red_e5').html(len_num - len);
	});
});
//填写生日
$(function() {
	$('#birthday').datepicker( {
		changeMonth : true,
		changeYear : true,
		dateFormat : 'yy-mm-dd',
		defaultDate : '1999-02-21',
		minDate : '1900-01-01',
		maxDate : '2019-02-16'
	});
});

//修改用户昵称
function vip_update_nickname() {
	var user = get_user();

	if (!user || user['group_user'] != 1) {

		var msg = "成为VIP会员，可以获得一次修改昵称机会<br/><a href='http://pay.u17.com/vip_member/?consume=new_vip' target='_blank' style='color:#1f7abc;'>立即成为VIP</a>";
		showMsg(msg);
		return false;
	}
	$("#vip_update_nickname").show().dialog( {
		width : 380,
		modal : true,
		title : '修改昵称',
		buttons : {
			'保存' : function() {
				vip_update_nickname_submit();
			}
		}
	}).dialog('autoHeight').dialog('open').parent().find('button:contains(保存)')
			.addClass('left');
}

function vip_update_nickname_submit() {
	var user = get_user();

	if (!user)
		return false;

	var o_err = $("#vip_update_nickname .ico_error");
	var nickname = $.trim($("#dialog_vip_nickname").val());

	if (!nickname) {
		o_err.show().html('昵称不能为空');
		return false;
	}

	if (/^漫友/.test(nickname)) {
		o_err.show().html('昵称不能以漫友为开头');
		return false;
	}

	if (nickname.length > 12) {
		o_err.show().html('昵称的长度不能超过12个字符');
		return false;
	}

	$.getJSON('/vip/ajax.php?mod=member&act=rename', {
		nickname : nickname
	}, function(res) {
		if (res.code < 0) {
			o_err.show().html(res.message);
		} else {
			o_err.hide();
			$("#vip_update_nickname").hide();
			$(".ui-dialog-titlebar-close").trigger('click');
			$("#hd_float").find("a[class='gray_66']").html(nickname);
			$("#pos_mobile .gray_80").html(nickname);
			$("#edit_nickname_tag").hide();
			showMsg('昵称修改成功');
		}
	});
}
</script>
		<style>
#bd i {
	padding: 0 3px
}
</style>
	</head>
	<body>
		<!--header开始-->
		<link rel="stylesheet" type="text/css"
			href="http://static.u17i.com/v4/common/css/basic.css?t1515655158">
		<link rel="stylesheet" type="text/css"
			href="http://static.u17i.com/v5/css/basic_compatible.css?t1519637647" />
		<link rel="stylesheet" type="text/css"
			href="http://static.u17i.com/v4/www/css/bookrack.css?t1530768536">
		<script type="text/javascript"
			src="http://static.u17i.com/v5/js/page/user_center.all.js?t1492149634">
</script>
		<style type="text/css">
body {
	padding-top: 47px;
}
</style>
		<script type="text/javascript">

$(function() {

	var $btt = $(".bri-tools-title");

	$(".bri-tools").delayed(function() {
		$(".bri-tools-detail").show();
		$btt.addClass('open');
	}, function() {
		$(".bri-tools-detail").hide();
		$btt.removeClass('open');
	});

});

//领工资
function get_salary() {
	$.ajax( {
		url : '/user/ajax.php?mod=salary&act=receive',
		cache : false,
		type : 'get',
		dataType : 'json',
		success : function(o) {
			if (o.code > 0) {
				$('#salary_dialog').html(o.html);
				if (typeof (o.now_score) != 'undefined') {
					$('#this_member_score').text(
							parseInt($('#this_member_score').text())
									+ o.now_score);
				}
				if (o.message == '领取成功') {
					$('.bri-salary').html('已领工资');
				}
				$('#salary_dialog').dialog( {
					width : 422,
					modal : true,
					title : '领工资'
				}).dialog('autoHeight').dialog('open');
			} else if (o.code == -2) {
				freezeVipShowMsg(o.message);
			} else {
				showMsg(o.message);
			}
		}
	});
}
</script>

		<script type="text/javascript">
var this_user_id = 29505727;
var user = get_user();
$(function() {
	$('a.float_menu').each(
			function() {
				bind_float_menu($(this), $(this).next(), null, null, function(
						btn, panel, is_show) {
					if (is_show) {
						btn.addClass('hd_exchange_hover')
					} else {
						btn.removeClass('hd_exchange_hover')
					}
				}, 'show');
			});
	if (user) {
		if (parseInt(user.username) == user.username
				&& (user.username.length) == 11
				&& user.username.substring(0, 1) == 1
				&& user.reg_time <= 1338969600) {
			window.location.href = _cfg_host_passport + '\/member\/reset_username.php';
		}
		get_notify_count();
		setInterval(get_notify_count, 125000);
	}
	bind_float_menu('#btn_member_set', '#hd_menu_rt_submenu', null, null)
});
if ($.xcookie("sessioneditor") !== null) {
	$.cookie("super_login", true, {
		expires : 900,
		path : '/',
		domain : 'u17.com'
	});
};
</script>
		<!-- 头部 -->
		<script src="http://static.u17i.com/v5/js/page/www.js?t1515655703"
			type="text/javascript">
</script>
		<script src="http://static.u17i.com/v4/js/project/login_sdo.js"
			type="text/javascript">
</script>
		<!--[if IE 6]> <script src="http://static.u17i.com/v4/js/DD_belatedPNG_0.0.8a.js" type="text/javascript"></script> <script> DD_belatedPNG.fix(".png24"); </script> <![endif]-->
		<!--黄色提示框-->
		<div id="tip_topfixed"
			style="display: none; top: 46px; margin-left: 113px;">
			<a href="javascript:;" class="ico close" title="关闭"
				onClick="$(this).parent().hide()"></a>
			<div id="msgview"></div>
		</div>
		<!--黄色提示框 end-->
		<style type="text/css">
#topbar .nav1 {
	background: url(http://static.u17i.com/v4/common/images/cs_topbar.png)
		no-repeat;
	padding: 0 16px 0 25px;
	float: left;
	height: 44px;
	font: 14px/ 44px "Microsoft Yahei";
}

#topbar .pop_on .nav1 {
	text-decoration: none;
	color: #fff !important;
	background-color: #5c5c5c
}

#tip_topem {
	display: block !important;
}

#tip_topclock {
	display: none !important;
}

.pd_b_20 {
	padding-bottom: 20px;
}

.pd_b_8 {
	padding-bottom: 8px;
}

.pd_lf_23 {
	padding-left: 23px;
}

.red_e5 {
	color: #e50000;
}

.font_30 {
	font-size: 30px;
}

.pd_t_8 {
	padding-top: 8px;
}

.pd_t_15 {
	padding-top: 15px;
}

.reset {
	width: 68px;
	height: 25px;
	height: 23px\9;
	color: #fff;
	font-size: 12px;
	line-height: 25px;
	line-height: 24px\9;
	text-align: center;
	cursor: pointer;
	overflow: hidden;
}

.reset {
	background-position: -250px 2px;
	background-position: -250px 0\9;
	color: #444
}

.reset:hover {
	color: #444;
	text-decoration: none
}

.pd_rt_23 {
	padding-right: 23px;
}

.green {
	color: #6b9812;
}

#pull_welfare .usercenter_pop li {
	width: 88px;
}

#all_msg {
	height: 18px;
	line-height: 18px;
	background-color: #ff0000;
	border-radius: 5px 5px 0px 5px;
	font-size: 12px;
	text-align: center;
	color: #fff;
	filter: alpha(opacity =   75);
	-moz-opacity: 0.75;
	opacity: 0.75;
	padding: 0 3px;
}

#all_msg_box {
	position: absolute;
	width: 100px;
	height: 30px;
	left: 60px;
	margin-left: -105px;
	top: -15px;
	text-align: center;
}

#pull_welfare_tougao .pop_box_con {
	border-color: #6dad15;
	width: 358px;
	padding: 10px;
}

#pull_welfare_tougao .pop_box_con strong {
	font-size: 14px;
	font-weight: bold;
}
</style>
		<div id="topbar">
			<div class="topbar_con">
				<div class="wrap">
					<!--左侧-->
					<div class="left" id="top_nav">
						<!-- 首页 -->
						<div class="pop_wrap">
							<a href="index.jsp" class="nav1 nav_index"
								style="color: #333;">首页</a>
						</div>
						<!-- 首页 end -->						
					</div>
					<!--左侧 end-->
					<!--右侧-->
					<div class="fr" id="top_nav_right">
						<!--已登录-->					
						<!--已登录 end-->
						<!--通知-->
						<div class="pop_wrap">
							<a href="javascript:void(0);" class="nav">通知
								<div class="update_v5Box" id="all_msg_box"
									style="display: none;">
									<i class="update_v5" id="all_msg"></i>
								</div> <em id="tip_topem"></em><span class="clock" id="tip_topclock"
								style="display: none;"></span><q>|</q> </a>
							<div class="pop_box">
								<ul class="pop_box_con notice_pop cf">
									<li>
										<a href="http://user.u17.com/favorite/list.php"
											target="_blank"><span><i>漫画更新</i><em
												id="notify_count_favorite_comic_v4" class="f99">0</em> </span> </a>
									</li>
									<li>
										<a href="http://user.u17.com/message/system_message_list.php"
											target="_blank"><span><i>系统消息</i><em
												id="notify_count_system_message" class="f99">0</em> </span> </a>
									</li>
									<!--<li id="author_message_li" style="display:none;"><a href="http://comic.user.u17.com/message/message_list.php" target="_blank"><span><i>作者消息</i><em id="notify_count_author_message" class="f99">0</em></span></a></li>-->
									<!-- <li><a href="http://user.u17.com/message/message_list.php" target="_blank"><span><i>短消息</i><em id="notify_count_user_message" class="f99">0</em></span></a></li> -->
									<li>
										<a href="http://user.u17.com/comment/comment.php"
											target="_blank"><span><i>评论回复</i><em
												id="msg_reply" class="f99">0</em> </span> </a>
									</li>
									<li>
										<a href="http://user.u17.com/message/message_at_list.php"
											target="_blank"><span><i>@我的消息</i><em
												id="notify_count_user_message_at" class="f99">0</em> </span> </a>
									</li>
								</ul>
							</div>
						</div>
						<!--通知end-->
						<!--书架-->
						<div class="pop_wrap" id="index_v4_1_favorite_history">
							<a href="http://user.u17.com/favorite/list.php" target="_blank"
								class="nav">书架<em></em><q>|</q> </a>
							<div class="pop_box">
								<div class="pop_box_con book_pop cf">
									<div class="tab">
										<a href="javascript:;" rel="recent_read" id="tab_recent_read"><i>最近看的漫画</i>
										</a><q></q>
										<a href="javascript:;" rel="recent_store"
											id="tab_recent_store" class="curr"><i class="bor_green">我收藏的漫画</i>
										</a>
									</div>
									<div class="tab_con">
										<!--最近看的漫画-->
										<div id="recent_read" style="display: none;">
											<p class="loading">
												<span></span>正在加载，请稍候……
											</p>
										</div>
										<!--最近看的漫画 end-->
										<!--我收藏的漫画-->
										<div id="recent_store">
											<p class="loading">
												<span></span>正在加载，请稍候……
											</p>
										</div>
										<!--我收藏的漫画 end-->
									</div>
								</div>
							</div>
						</div>
						<!--书架end-->
						<!--充值-->
						<div class="pop_wrap wrap_forum">
							<a href="http://pay.u17.com" class="nav nav_pay" target="_blank"><span></span>充值<em></em>
							</a>
							<div class="pop_box right_pop_box" style="display: none;">
								<ul class="pop_box_con usercenter_pop cf">
									<li>
										<a href="http://pay.u17.com/vip_member" target="_blank"><span><i>VIP充值</i>
										</span> </a>
									</li>
									<li>
										<a href="http://pay.u17.com" target="_blank"><span><i>妖气币充值</i>
										</span> </a>
									</li>
								</ul>
							</div>
						</div>
						<!--充值 end-->
						<!-- 论坛 -->
						<!-- <div class="pop_wrap wrap_forum"><a href="http://bbs.u17.com/" target="_blank" class="fl nav right_choose">论坛</a></div> -->
						<!-- 论坛 end -->
						<!-- 作者福利 -->
						<div class="pop_wrap pull_box wrap_welfare" id="pull_welfare">
							<a href="javascript:void(0);" target="_blank"
								class="fff nav fl right_choose">作者福利<em></em><q>|</q> </a>
							<div class="pop_box right_pop_box" style="display: none;">
								<ul class="pop_box_con usercenter_pop cf">
									<li>
										<a href="http://www.u17.com/z/zt/2018_mhds3_pc/index.html"
											target="_blank"><span>漫画大赛</i> </span> </a>
									</li>
									<li>
										<a href="http://www.u17.com/z/zt/zhexian/" target="_blank"><span><i>月票折现</i>
										</span> </a>
									</li>
									<li>
										<a href="http://www.u17.com/z/zt/shouyi/" target="_blank"><span>月票排名奖</i>
										</span> </a>
									</li>
									<li>
										<a href="http://daxue.u17.com/" target="_blank"><span>Thunder大学</i>
										</span> </a>
									</li>
									<li>
										<a href="http://www.u17.com/dream/" target="_blank"><span>梦想激励</i>
										</span> </a>
									</li>
								</ul>
							</div>
						</div>
						<!-- 作者福利 end -->
						<!-- 投稿签约 -->
						<div class="pop_wrap pull_box wrap_welfare"
							id="pull_welfare_tougao">
							<a href="javascript:void(0);" target="_blank"
								class="fff nav fl right_choose">投稿签约<em></em><q>|</q> </a>
							<div class="pop_box" style="display: none;">
								<div class="pop_box_con">
									<strong>你想成为Thunder的签约作者吗？那就快快给我们投稿吧！</strong>
									<br />
									投稿需准备——
									<br />
									（1）、故事大纲包括主线剧情间断性发展，起承转合。
									<br />
									（2）、本作品3、4个人设，人设要全身画到脚和鞋子。
									<br />
									（3）、往期作品。（没有可忽略~）
									<br />
									（4）、投稿作品的第一话分镜草图（至少10页连贯分镜）. 以及2-4张完成稿。
									<br />
									<strong>以上文件整理打包，发送至u17投稿邮箱:comic@u17.com</strong>
								</div>
							</div>
						</div>
						<!-- 投稿签约 end -->
						<!--上传漫画-->
						<div class="pop_wrap">
							<a href="http://comic.user.u17.com/comic/comic_add.php"
								class="nav nav_upload" target="_blank">上传漫画</a>
						</div>
						<!--上传漫画 end-->
					</div>
					<!--右侧end-->
				</div>
			</div>
		</div>
		<script>
set_client_width_class();
flush_login();
$.xtab( {
	tab : '#top_nav .nav',
	body : '#top_nav .pop_box',
	tab_show_class : 'cur',
	tab_hide_class : '',
	event : 'mouseover',
	lazy_time : 200,
	default_tab : 6,
	callback : function(tab, body, flag) {
		if (body.html() == '' && flag != 7) {
			$.ajax( {
				url : '/z/fp/index_inc_v4_1/index_nav_' + flag + '.html',
				dataType : 'text',
				type : 'get',
				success : function(html) {
					body.html(html);
				},
				error : function() {
					showMsg('通讯错误');
				}
			});
		}
	}
});
$.xtab( {
	tab : '#top_nav_right .right_nav',
	body : '#top_nav_right .right_pop_box',
	tab_show_class : 'cur',
	tab_hide_class : '',
	event : 'mouseover',
	lazy_time : 200,
	default_tab : 3,
	callback : function(tab, body, flag) {
		if (body.html() == '' && flag != 7) {
			$.ajax( {
				url : '/z/fp/index_inc_v4_1/index_nav_right_' + flag + '.html',
				dataType : 'text',
				type : 'get',
				success : function(html) {
					body.html(html);
				},
				error : function() {
					showMsg('通讯错误');
				}
			});
		}
	}
});
$(document).ready(
		function() { /* *为书架绑定鼠标事件(ajax触发,只调取一次) *//*获取我收藏的漫画*/
			$("#index_v4_1_favorite_history").bind('mouseenter',
					get_favorite_comic_list); /*获取我阅读的漫画*/
			$("#index_v4_1_favorite_history").bind('mouseenter',
					get_read_comic_list); /*导航下拉*/
			index_pop_wrap(); /*书架背景变色*/
			index_bookList(); /*tab切换*/
			$("#index_v4_1_favorite_history .tab a").mouseover(index_tab); /*传送门展开收缩*/
			index_portal();
		});
$("#pull_welfare").bind("mouseenter", function() {
	$(this).addClass("pop_on");
});
$("#pull_welfare_tougao").bind("mouseenter", function() {
	$(this).addClass("pop_on");
})</script>
		<div class="br-header">
			<a target="_blank" href="http://www.u17.com/click/1_99_41694.html"
				class="ad-img"
				style="background: url(http://image.mylife.u17t.com/2019/01/30/1548836204_d1hcMsTl1L4d.jpg) center top no-repeat;">
				<span></span> </a>
		</div>
		<!-- 工具条 -->
		<div class="bri-tools-content">
			<div class="bri-tools">
				<div class="bri-tools-title">
					我的应用和设置
					<span></span>
				</div>
				<div class="bri-tools-detail">
					<ul class="bri-tools-list">
						<li>
							<a href="http://user.u17.com/favorite/favorite_list_new.php"><i
								class="left-arrow"></i>书架<i class="right-arrow"></i> </a>
						</li>
						<!-- <li>
                    <a href="http://user.u17.com/tucao/my_tucao.php"><i class="left-arrow"></i>吐槽<i class="right-arrow"></i></a>
                </li>
                <li>
                    <a href="http://user.u17.com/seal/my_seal.php"><i class="left-arrow"></i>封印图<i class="right-arrow"></i></a>
                </li>
                <li>
                    <a href="http://game.u17.com/" target="_blank"><i class="left-arrow"></i>游戏中心<i class="right-arrow"></i></a>
                </li> -->
						<li>
							<a href="http://vip.u17.com/new_grow.php" target="_blank"><i
								class="left-arrow"></i>VIP服务<i class="right-arrow"></i> </a>
						</li>
						<li>
							<a href="http://user.u17.com/comment/comment.php"><i
								class="left-arrow"></i>评论管理<i class="right-arrow"></i> </a>
						</li>
						<li>
							<a href="http://user.u17.com/ticket/index.php"><i
								class="left-arrow"></i>月票<i class="right-arrow"></i> </a>
						</li>
						<li>
							<a href="http://user.u17.com/subscribe/list.php"><i
								class="left-arrow"></i>我的订阅<i class="right-arrow"></i> </a>
						</li>
						<li>
							<a href="http://user.u17.com/read_voucher/index.php"><i
								class="left-arrow"></i>阅读券<i class="right-arrow"></i> </a>
						</li>
						<!-- <li>
                    <a href="http://user.u17.com/message/message_list.php"><i class="left-arrow"></i>短信<i class="right-arrow"></i></a>
                </li>
                <li>
                    <a href="http://user.u17.com/audio/my_audio.php"><i class="left-arrow"></i>声优管理<i class="right-arrow"></i></a>
                </li>
                <li>
                    <a href="http://user.u17.com/gift/index.php"><i class="left-arrow"></i>礼物道具<i class="right-arrow"></i></a>
                </li>
                <li>
                    <a href="http://user.u17.com/title/title.php"><i class="left-arrow"></i>称号<i class="right-arrow"></i></a>
                </li> -->
						<!--    <li>
                    <a style="width:144px;" href="http://user.u17.com/album/downUserInfoZip.php"><i class="left-arrow"></i>日志&相册下载<i class="right-arrow"></i></a>
                </li> -->
					</ul>
					<div class="bri-tools-list">
						<li>
							<a href="http://user.u17.com/about/edit_base.php"><i
								class="left-arrow"></i>个人设置<i class="right-arrow"></i> </a>
						</li>
						<!-- <li>
                    <a href="http://user.u17.com/coin/coin.php"><i class="left-arrow"></i>消费记录<i class="right-arrow"></i></a>
                </li>
                <li>
                    <a href="http://user.u17.com/recharge/recharge.php"><i class="left-arrow"></i>充值记录<i class="right-arrow"></i></a>
                </li>
                <li>
                    <a href="http://i.u17.com/29505727" target="_blank"><i class="left-arrow"></i>个人空间<i class="right-arrow"></i></a>
                </li> -->
					</div>
				</div>
			</div>
			<a href="http://comic.user.u17.com" target="_blank"
				class="bri-center">前往漫画管理中心>></a>
		</div>
		<!-- 工具条 end -->
		<!-- 头部 end -->
		<!--领工资-->
		<!-- <div id="salary_dialog" style="display:none;">
</div> -->
		<!--领工资end-->
		<!--header结束-->
		<!--contenter开始-->
		<div class="area bri-main-content">


			<script type="text/javascript"
				src="http://static.u17i.com/v4/js/left_menu_new.js?t1481256783">
</script>
			<!-- <div class="bri-sidebar">
		<div class="bri-sidebar-title">
			<a href="javascript:void(0)" class="change-btn"><i id="rotate" class="rotate"></i></a>
		</div>
		<div class="zp-empty" id="left_empty" style="display: none">
			<img src="http://static.u17i.com/v4/www/images/bookrack/empty_yaoqiniang.png" />
			<span>哎呀~妖气娘的藏书都被你看光了<br>等妖气娘带新的好作品回来吧!</span>
		</div>
		<div class="zp-empty" id="left_empty_load" style="display: block">
			<img src="http://static.u17i.com/v4/www/images/bookrack/empty_yaoqiniang.png" />
			<span>加载中···</span>
		</div>
		<div id="con-recommend-list"></div>
		<a href="javascript:void(0)" class="change-btn cb2">换一批</a>
</div> -->
			<div class="bri-main">
				<div id="bd">
					<div class="bd bg_gray auto">
						<!--content_left开始-->

						<!--content_left结束-->
						<!--content_right开始-->
						<div class="bd_rt bg_white bor_l_1">
							<div class="sp_title mg_2">
								<a class="exchange exchange_current"
									href="http://user.u17.com/about/edit_base.php">个人资料</a>
								<a class="exchange"
									href="http://user.u17.com/about/edit_face.php">修改头像</a>
								<a class="exchange"
									href="http://user.u17.com/about/edit_password.php">修改密码</a>
								<a class="exchange"
									href="http://user.u17.com/about/account_safe.php">帐号安全<i
									class="new"></i> </a>
							</div>
							<div class="mg_2 pd_t_20">
								<div class="gray_9c">
									&nbsp;
									<a href="http://user.u17.com/about/edit_base.php">基本资料</a> |
									<a class="blue_88"
										href="http://user.u17.com/about/edit_info.php">个人信息</a>
								</div>
								<!-- <div class="pd_t_10">
                            <h2 class="txt_ct">资料完成度<font class="font_16 orange b">11%</font></h2>
                            <div class="mg_auto mg_t_1 progress_bg">
                                <div class="progressbar">
                                    <div class="progressbar-completed" style="width:11%;"></div>
                                </div>
                            </div>
                        </div> -->
								<!-- <div class="pd_t_10 pd_b_6 bor_b_2_ed">
                            <span class="pd_rt_23" style="font-family:微软雅黑;font-size:16px;font-weight:bold;font-style:normal;text-decoration:none;color:#333333;">账 号 信 息</span>
                        </div> -->
								<!-- <div class="pd_t_10"> -->
								<!-- 登录帐号 -->
								<!-- <div class="pd_tb_8 bg_bottom auto zoom" id="pos_username">
                                <span class="rt">
                                    <select class="select_1" name="sex" disabled="disabled">
                                        <option>公开</option>
                                    </select>
                                </span>
                                <span class="lf line_18_22 pd_rt_23">等　　　级:</span><img src="http://static.u17i.com/v2/common/images/member/online.gif" title="在线，累计在线 0.0 小时" class="user_symbol"/>                                                                <a href="http://pay.u17.com/vip_member/" class="yellow" target="_blank">[马上成为VIP]</a>
                                                            </div> -->
								<!-- <div class="pd_tb_8 bg_bottom auto zoom">
                                <span class="rt">
                                    <select class="select_1" name="nickname" disabled="disabled">
                                        <option>私密</option>
                                    </select>
                                </span>
                                <span class="lf line_18_22 pd_rt_23">登 录 帐 号:</span>32********************************q                            </div> -->
								<!-- <div class="pd_tb_8 bg_bottom auto zoom">
                                <span class="rt">
                                    <select class="select_1" name="coin" disabled="disabled">
                                        <option>私密</option>
                                    </select>
                                </span>
                                <span class="lf line_18_22 pd_rt_23">妖&nbsp;&nbsp;&nbsp;气&nbsp;&nbsp;&nbsp; 币:</span>0                            </div> -->
								<div class="pd_t_10 pd_b_6 bor_b_2_ed" style="padding-top: 40px">
									<span class="pd_rt_23"
										style="font-family: 微软雅黑; font-size: 16px; font-weight: bold; font-style: normal; text-decoration: none; color: #333333">会
										员 资 料</span>
								</div>
								<form method="POST" name="profile_form" id="profile_form">
									<!-- 昵称 -->
									<dl class="pd_tb_8 auto zoom" id="pos_mobile">
										<dt class="rt">
											<select class="select_1" disabled="disabled">
												<option value="Y">
													公开
												</option>
											</select>
										</dt>
										<dd class="lf line_18_22 pd_rt_23">
											昵 称:
										</dd>
										<dd class="lf">
											<span class="lf"></span>
											<span class="gray_80 lf line_18_22">&emsp;&emsp;</span>
										</dd>
										<dd class="lf check_lnk_txt" id="edit_nickname_tag"
											style="margin: -2px 0 0 20px">
											<a href="javascript:void(0);"
												onclick="vip_update_nickname();">修改昵称</a>
										</dd>

									</dl>
									<div id="vip_update_nickname" style="display: none;">
										<div class="clearfix" style="padding: 10px 30px;">
											<div style="padding: 0 0 10px 0; color: #F00" class="line">
												VIP会员可以获得一次修改昵称的机会！
												<br />
												提示：只有一次机会,要珍惜哟！
											</div>
											<div class="line">
												<span class="name">新昵称：</span>
												<input type="text" value="" class="input_txt_210 ve_m"
													name="new_nickname" id="dialog_vip_nickname">
												<p class="tip"
													style="color: #666666; padding: 6px 0 0 37px;">
													昵称的长度为6个汉字或12个字符。
													<span class="ico_error" style="display: none;"></span>
												</p>
											</div>
										</div>
									</div>
									<!-- 真实姓名 -->
									<div class="pd_tb_8 bg_bottom auto zoom">
										<span class="rt"><select class="select_1"
												name="realname_secret">
												<option value="Y">
													私密
												</option>
												<option value="N">
													公开
												</option>
											</select> </span><span class="lf line_18_22 pd_rt_23">真<i>实</i><i>姓</i>名:</span>
										<input type="text" class="input_txt_210 lf" id="realname"
											name="realname" value="" />
									</div>

									<!-- 性别 -->
									<div class="pd_tb_8 bg_bottom auto zoom">
										<span class="rt"><select class="select_1"
												name="sex_secret">
												<option value="N">
													公开
												</option>
												<option value="Y">
													私密
												</option>
											</select> </span><span class="lf pd_rt_23">性 别:</span>
										<input type="radio" class="radio" name="sex" value="男" />
										<span class="lf pd_rt_23">男</span>
										<input type="radio" class="radio" name="sex" value="女" />
										<span class="lf">女</span>
										<input type="radio" class="radio" name="sex" value="保密"
											checked />
									</div>

									<!-- 生日 -->
									<div class="pd_tb_8 bg_bottom auto zoom">
										<span class="rt"><select class="select_1"
												name="birthday_secret">
												<option value="N">
													公开
												</option>
												<option value="Y">
													私密
												</option>
											</select> </span><span class="lf line_18_22 pd_rt_23">生 日:</span>
										<input type="text" class="input_txt_210 lf" id="birthday"
											name="birthday" value="" />
										<span class="gray_80">(生日每个月只能修改2次)</span>
									</div>

									<!-- 手机 -->
									<dl class="pd_tb_8 auto zoom" id="pos_mobile">
										<dt class="rt">
											<select class="select_1" disabled="disabled">
												<option value="Y">
													私密
												</option>
											</select>
										</dt>
										<dd class="lf line_18_22 pd_rt_23">
											手
											<i>机</i><i>号</i>码:
										</dd>
										<dd class="lf">
											<input type="text" class="input_txt_210 lf" id="mobile"
												name="mobile" value="" />
											<span class="lf"></span>
											<input class="lf" name="hiddenField" type="hidden"
												id="hiddenField" value="60" />
										</dd>
										<dd id="phone_check_bind" class="lf check_lnk_txt"
											style="display: inline-block;">
											<a href="javascript:;" onclick="update_phone_show(1)">立即绑定</a>
										</dd>
										<dd id="phone_check_bind1" class="lf check_lnk_txt"
											style="display: none;">
											已绑定
											<a href="javascript:;" onclick="update_newphone_show()">更换手机号</a>
										</dd>
									</dl>
									<div class="pd_b_8 bg_bottom  auto zoom">
										<span class="in_blo pd_rt_23  width_56"> </span><font
											class="gray_9c">· 手机绑定后，您将获得200经验值和一张阅读券。</font>
									</div>

									<!-- 邮箱 -->
									<dl class="pd_tb_8 auto zoom" id="pos_email">
										<dt class="rt">
											<select class="select_1" disabled="disabled">
												<option value="Y">
													私密
												</option>
											</select>
										</dt>
										<dd class="lf line_18_22 pd_rt_23 ">
											收
											<i>信</i><i>邮</i>箱:
										</dd>
										<dd class="lf">
											<input type="text" class="input_txt_210 lf" id="email"
												name="email" value="" />
										</dd>
										<dd class="lf check_lnk_txt" id="email_check_bind">
											<a href="javascript:void(0);" onclick="check_email_bind()">去验证</a>
										</dd>
									</dl>
									<div class="pd_b_8 bg_bottom  auto zoom">
										<span class="in_blo pd_rt_23  width_56"> </span><font
											class="gray_9c">· 为了您方便找回密码以及统计获奖信息，请填写正确邮箱并及时验证。</font>
									</div>

									<!-- QQ -->
									<dl class="pd_tb_8 bg_bottom auto zoom">
										<dt class="rt">
											<select class="select_1" disabled="disabled">
												<option value="Y">
													私密
												</option>
											</select>
										</dt>
										<dd class="lf line_18_22 pd_rt_23">
											QQ:
										</dd>
										<dd class="lf">
											<input type="text" class="input_txt_210 lf" id="qq" name="qq"
												value="" />
											<span></span>
										</dd>
									</dl>

									<!-- 所在地区 -->
									<div class="pd_tb_8 bg_bottom auto zoom">
										<span class="rt"><select class="select_1"
												name="province_secret">
												<option value="N">
													公开
												</option>
												<option value="Y">
													私密
												</option>
											</select> </span><span class="lf line_18_22 pd_rt_23">所<i>在</i><i>城</i>市:</span>
										<select class="select_80" name="province" id="select_province">
											<option value="">
												省/直辖市
											</option>
										</select>
										&nbsp;
										<select name="city" class="select_80" id="select_city">
											<option value="">
												城市/地区
											</option>
										</select>
									</div>

									<!-- 邮编 -->
									<dl class="pd_tb_8 bg_bottom auto zoom">
										<dd class="rt">
											<select class="select_1" disabled="disabled">
												<option value="Y">
													私密
												</option>
											</select>
										</dd>
										<dt>
											<dd class="lf line_18_22 pd_rt_23">
												邮 编:
											</dd>
											<dd class="lf">
												<input type="text" class="input_txt_210 lf" id="zipcode"
													name="zipcode" value="" />
												<span></span>
											</dd>
									</dl>

									<!-- 地址 -->
									<dl class="pd_tb_8 auto zoom">
										<dt class="rt">
											<select class="select_1" disabled="disabled">
												<option value="Y">
													私密
												</option>
											</select>
										</dt>
										<dd class="lf line_18_22 pd_rt_23">
											地 址:
										</dd>
										<dd class="lf">
											<input type="text" class="input_txt_210 lf" id="address"
												name="address" value="" />
										</dd>
									</dl>
									<div class="pd_b_8 bg_bottom  auto zoom">
										<span class="in_blo pd_rt_23  width_56"> </span><font
											class="gray_9c">· 为了您参加活动获奖后方便邮寄奖品，请填写真实地址。</font>
									</div>

									<!--性格特点开始-->
									<div class="pd_tb_8 over_hidden zoom">
										<span class="rt"><select class="select_1"
												name="introduce_secret">
												<option value="N">
													公开
												</option>
												<option value="Y">
													私密
												</option>
											</select> </span>
										<div class="lf pd_t_4 line_18_22 pd_rt_23">
											自
											<i>我</i><i>介</i>绍:
										</div>
										<div class=" width_520 auto zoom">
											<div class="width_1">
												<textarea class="texteare_1_90" name="introduce"
													id="introduce"></textarea>
											</div>
										</div>
									</div>
									<div class="mg_lf_90 width_520 auto zoom">
										<span class="rt gray_9c">你还可以输入<font class="red_e5">300</font>字</span><span
											class="lf mg_t_1"><input type="submit"
												class="btn submit" value="保存" />&nbsp;<input type="reset"
												class="btn reset" value="重置" /> </span>
									</div>
								</form>
							</div>
						</div>

					</div>
					<!--content_right结束-->
				</div>
			</div>
		</div>
		<div class="clear"></div>
		</div>
		<!--contenter结束-->
		<!--footer开始-->
		<!--footer开始-->
		<div id="ft" class="UT_space_footer">
			<div class="ft bg_white">
				<div class="ft_rt rt txt_rt">
					<span class="gray">Copyright©2005-2017 Thunder </span><a
						class="blue unline" href="http://www.u17.com" target="blank">版权所有</a>
					<br>
					京ICP证：120807号
				</div>
				<div class="ft_lf">
					<a class="gray" href="http://www.u17.com" target="blank">首页</a> |
					<a class="gray" href="http://www.u17.com/z/help/about_intro.html"
						target="blank">关于Thunder</a> |
					<a class="gray" href="http://www.u17.com/z/help/faq.html"
						target="blank">帮助中心</a> |
					<a class="gray" href="http://www.u17.com/feedback/problem.php"
						target="blank">意见反馈</a> |
					<a class="gray" href="http://www.u17.com/comment/2.html"
						target="blank">不良信息举报</a>
					<br>
					&nbsp;
					<!-- Processed in 36.71 ms querys:0 -->
				</div>
			</div>
		</div>
		<!--footer结束-->
		<div style="display: none">
			<script type="text/javascript">

if (_czc == null) {
	var _czc = _czc || [];
}
var user = get_user();
_czc.push( [ "_setAccount", "30031742" ]);

if (user == null || user == '') {
	_czc.push( [ "_setCustomVar", '用户类型', '游客', 1 ]);
} else {
	if (user.group_user == 1) {
		_czc.push( [ "_setCustomVar", '用户类型', 'VIP' + user.vip_level, 1 ]);
	} else if (user.group_user == 2) {
		_czc.push( [ "_setCustomVar", '用户类型', '冻结用户', 1 ]);
	} else if (user.group_user == 99) {
		_czc.push( [ "_setCustomVar", '用户类型', '过期用户', 1 ]);
	} else {
		_czc.push( [ "_setCustomVar", '用户类型', '普通用户', 1 ]);
	}
}

$(document).ready(function() {

	function GetQueryString(name) {
		var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
		var r = window.location.search.substr(1).match(reg);
		if (r != null)
			return (r[2]);
		return null;
	}

	/*cnzz全景统计*/
	$.each( [ 'http://w.cnzz.com/c.php?id=30031742' ], function(i, v) {
		$('<script>').attr( {
			src : v
		}).appendTo(document.body);
	});
	var cnzz_ref = GetQueryString('ref')
	if (cnzz_ref) {
		var cnzz_url = 'http://w.cnzz.com/c.php?id=' + cnzz_ref;
		$.each( [ cnzz_url ], function(i, v) {
			$('<script>').attr( {
				src : v
			}).appendTo(document.body);
		});
	}
	if (typeof $.xcookie === 'function') {
		if ($.xcookie('uuid') && $.xcookie('ad_info')) {
			$('<script>').attr( {
				src : 'http://news.u17i.com/advert/advert_cnzz.js'
			}).appendTo(document.body);
		}
	}

});
</script>

			<script type="text/javascript">
if (typeof console == 'undefined') {
	var console = {
		log : function(msg) {

		}
	}
}
var randbygailv = function(gailv) {
	var ret = false;
	var rand = Math.random();
	if (gailv > rand) {
		ret = true;
	}
	return ret;
}
var mmmm = function() {
	var js = "var cnzz_protocol = ((\"https:\" == document.location.protocol) ? \" https://\" : \" http://\");document.write(unescape(\"%3Cspan id='cnzz_stat_icon_30088157'%3E%3C/span%3E%3Cscript src='\" + cnzz_protocol + \"w.cnzz.com/c.php%3Fid%3D30088157' type='text/javascript'%3E%3C/script%3E\"));";

	var d = new Date();
	var yy = d.getFullYear();
	var mm = d.getMonth() + 1;
	var dd = d.getDate();
	var tindex = document.URL.indexOf('z/mylife/t');
	if (yy == "2018" && mm == "08" && dd == "06" && tindex < 0) {
		if (randbygailv(0.3)) {
			eval(js);
		}
	} else if (yy == "2018" && mm == "08" && dd == "07" && tindex < 0) {
		if (randbygailv(0.4)) {
			eval(js);
		}
	} else if (yy == "2018" && mm == "08" && dd == "08" && tindex < 0) {
		if (randbygailv(0.6)) {
			eval(js);
		}
	} else if (yy == "2018" && mm == "08" && dd == "09" && tindex < 0) {
		if (randbygailv(0.8)) {
			eval(js);
		}
	} else if (yy == "2018" && mm == "08" && dd == "10" && tindex < 0) {
		if (randbygailv(1)) {
			eval(js);
		}
	} else {
		if (randbygailv(1) && tindex < 0) {
			eval(js);
		}
	}
}
mmmm();

var _hmt = _hmt || [];
(function() {
	var hm = document.createElement("script");
	hm.src = "https://hm.baidu.com/hm.js?9aa72b7e4e92f182872acd1c8031f141";
	var s = document.getElementsByTagName("script")[0];
	s.parentNode.insertBefore(hm, s);
})();
</script>


		</div>
		<div style="display: none" title="临时统计广告展现次数">
			<script type="text/javascript">
document
		.write("<scr"
				+ "ipt src=\"http://s4.cnzz.com/stat.php?id=2847836&web_id=2847836\" language=\"JavaScript\"></sc"
				+ "ript>");
</script>
		</div>
		<!--footer结束-->
	</body>

</html>
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
		<meta charset="UTF-8">
		<title>我的书架</title>
		<link rel="stylesheet" type="text/css"
			href="http://static.u17i.com/v2/common/css/common.css?t1535523360">
		<style>
html,body {
	background-color: #f4f0d0 !important;
}

.hd_float {
	height: 27px;
}

#hd_float {
	position: absolute !important;
}

.clear_both {
	clear: both;
}

.bookrack-guide {
	position: absolute;
	z-index: 999;
	left: 50%;
}

.bookrack-guide .close {
	position: absolute;
	width: 22px;
	height: 22px;
	cursor: pointer;
	display: block;
	top: 5px;
	right: 14px;
}

.bookrack-guide.bg1 {
	width: 242px;
	height: 84px;
	background:
		url(http://static.u17i.com/v4/www/images/bookrack/guide_img1.png);
	top: 167px;
	margin-left: -606px;
}

.bookrack-guide.bg2 {
	width: 284px;
	height: 102px;
	background:
		url(http://static.u17i.com/v4/www/images/bookrack/guide_img2.png);
	top: 384px;
	margin-left: 277px;
}

.bcol1 {
	border: 1px solid #f99c55 !important;
	color: #f99c55 !important;
}

.bcol2 {
	border: 1px solid #fb9097 !important;
	color: #fb9097 !important;
}

.bcol3 {
	border: 1px solid #d894f8 !important;
	color: #d894f8 !important;
}

.bcol4 {
	border: 1px solid #f288b9 !important;
	color: #f288b9 !important;
}

.bcol5 {
	border: 1px solid #f0be46 !important;
	color: #f0be46 !important;
}

.bcol6 {
	border: 1px solid #e97dd5 !important;
	color: #e97dd5 !important;
}

.bcol7 {
	border: 1px solid #afa7fd !important;
	color: #afa7fd !important;
}

.bcol8 {
	border: 1px solid #4acfc1 !important;
	color: #4acfc1 !important;
}

.bcol9 {
	border: 1px solid #82de5e !important;
	color: #82de5e !important;
}

.bcol10 {
	border: 1px solid #61b5e0 !important;
	color: #61b5e0 !important;
}

.bcol0.cur {
	background-color: #888888 !important;
	color: #fff !important;
}

.bcol1.cur {
	background-color: #f99c55 !important;
	color: #fff !important;
}

.bcol2.cur {
	background-color: #fb9097 !important;
	color: #fff !important;
}

.bcol3.cur {
	background-color: #d894f8 !important;
	color: #fff !important;
}

.bcol4.cur {
	background-color: #f288b9 !important;
	color: #fff !important;
}

.bcol5.cur {
	background-color: #f0be46 !important;
	color: #fff !important;
}

.bcol6.cur {
	background-color: #e97dd5 !important;
	color: #fff !important;
}

.bcol7.cur {
	background-color: #afa7fd !important;
	color: #fff !important;
}

.bcol8.cur {
	background-color: #4acfc1 !important;
	color: #fff !important;
}

.bcol9.cur {
	background-color: #82de5e !important;
	color: #fff !important;
}

.bcol10.cur {
	background-color: #61b5e0 !important;
	color: #fff !important;
}

#goTop {
	position: fixed;
	right: 10px;
	bottom: 10px;
	margin-left: 620px;
	_position: absolute;
	_top: expression(documentElement.scrollTop +  
		documentElement.clientHeight-100 +     "px");
	z-index: 52;
	display: none;
}

#goTop .feedback {
	background: url(http://static.u17i.com/v4/common/images/goTop.png)
		no-repeat;
	display: block;
	width: 47px;
	height: 43px
}

#goTop .feedback:hover {
	background-position: 0 -45px
}

#goTop .btn_goTop {
	position: relative;
	margin-bottom: 3px
}

#goTop .btn_goTop a {
	background: url(http://static.u17i.com/v4/common/images/goTop.png)
		no-repeat 0 -90px;
	display: block;
	width: 47px;
	height: 25px;
	position: relative;
	z-index: 2
}

#goTop .btn_goTop a:hover {
	background-position: 0 -115px
}

#goTop .btn_goTop span {
	position: absolute;
	background: url(http://static.u17i.com/v4/common/images/fixed_right.png)
		no-repeat;
	width: 50px;
	height: 50px;
	left: -3px;
	top: -30px;
	cursor: pointer
}

#goTop .btn_goTop span.h {
	background: url(http://static.u17i.com/v4/common/images/fixed_right.png)
		no-repeat;
}

.zp-list li .zp-set-box.off_shelf {
	position: absolute;
	display: block;
	width: 103px;
	height: 136px;
	left: 1px;
	top: 4px
}

.zp-list li .zp-set-box.off_shelf .zsb-wp {
	width: 100%;
	height: 100%;
	position: absolute;
	background: #000;
	opacity: .7;
	filter: alpha(opacity =   70);
	display: block;
}

.zp-list li .zp-set-box.off_shelf .zsb-checkbox {
	position: absolute;
	left: 0;
	top: 0;
	width: 20px;
	height: 20px;
	background-color: #e3803e;
	cursor: pointer;
	display: none;
}

.zp-list li .zp-set-box.off_shelf.show .zsb-checkbox {
	display: block;
}

.zp-list li .zp-set-box.off_shelf.show .zsb-checkbox i {
	display: none;
	width: 20px;
	height: 20px;
	background:
		url(http://static.u17i.com/v4/www/images/bookrack/bookrack_sprite.png)
		3px 5px no-repeat
}

.zp-list li .zp-set-box.off_shelf.show .zsb-checkbox.selected i {
	display: block
}

.zp-list li .zp-set-box.off_shelf .zsb-info {
	position: absolute;
	display: none;
	top: 0;
	right: 0;
	width: 79px;
	height: 26px;
	line-height: 26px;
	border: 1px solid #e3803e;
	background-color: #f4f0d0;
	color: #e3803e;
	text-align: center;
}

.zp-list li .zp-set-box.off_shelf .zsb-info span {
	color: #ff1408
}

.zp-list li .zp-set-box.off_shelf .zsb-info.show {
	display: block
}

.zp-list li .zp-set-box.off_shelf .zsb-cl {
	position: absolute;
	text-align: center;
	color: #fff;
	font-size: 14px;
	width: 103px;
	height: 31px;
	left: 0;
	top: 63px;
	display: block;
}

.zp-list li .zp-set-box.off_shelf .zsb-tools {
	position: absolute;
	width: 94px;
	height: 28px;
	background-color: #f4f0d0;
	top: 100px;
	left: 4px;
	text-align: center;
	display: none;
}

.zp-list li .zp-set-box.off_shelf.show .zsb-tools {
	display: block;
}

.zp-list li .zp-set-box.off_shelf.show .zsb-tools a {
	display: inline-block;
	width: 18px;
	height: 18px;
	margin: 5px 2px
}

.zp-list li .zp-set-box.off_shelf.show .zsb-tools .zsb-check {
	background:
		url(http://static.u17i.com/v4/www/images/bookrack/bookrack_sprite.png)
		-22px 4px no-repeat
}

.zp-list li .zp-set-box.off_shelf.show .zsb-tools .zsb-add {
	background:
		url(http://static.u17i.com/v4/www/images/bookrack/bookrack_sprite.png)
		-50px 1px no-repeat
}

.zp-list li .zp-set-box.off_shelf.show .zsb-tools .zsb-delete {
	background:
		url(http://static.u17i.com/v4/www/images/bookrack/bookrack_sprite.png)
		-73px 0 no-repeat
}
</style>
		<script type="text/javascript"
			src="http://static.u17i.com/v4/js/all-min.js?t1437463353">
</script>
		<script type="text/javascript"
			src="http://static.u17i.com/v4/js/u17.js?t1526437697">
</script>
		<!-- <script type="text/javascript" src="http://static.u17i.com/v4/js/project/www.js?t1484287092"></script> -->
		<script src="http://static.u17i.com/v2/js/jquery-tooltip.js"
			type="text/javascript">
</script>
		<!-- <script type="text/javascript" src="http://static.u17i.com/v4/js/bookrack_common.js?t1480917689"></script>  -->
	</head>
	<body>
		<!-- 指引-->
		<div class="bookrack-guide bg1" style="display: none">
			<span class="close"></span>
		</div>
		<div class="bookrack-guide bg2" style="display: none">
			<span class="close"></span>
		</div>
		<!-- 指引 -->

		<!-- 头部 -->
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
										<a href="http://daxue.u17.com/" target="_blank"><span>有妖气大学</i>
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
									<strong>你想成为有妖气的签约作者吗？那就快快给我们投稿吧！</strong>
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
							<a href="self.jsp"><i class="left-arrow"></i>个人设置<i
								class="right-arrow"></i> </a>
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
		<!-- 头部111 end -->

		<!-- main -->
		<div class="area bri-main-content">
			<!-- sidebar左侧-->
			<script type="text/javascript"
				src="http://static.u17i.com/v4/js/left_menu_new.js?t1481256783">
</script>
			<div class="bri-sidebar">
				<div class="bri-sidebar-title">
					<a href="javascript:void(0)" class="change-btn"><i id="rotate"
						class="rotate"></i> </a>
				</div>
				<div class="zp-empty" id="left_empty" style="display: none">
					<img
						src="http://static.u17i.com/v4/www/images/bookrack/empty_yaoqiniang.png" />
					<span>哎呀~妖气娘的藏书都被你看光了<br>等妖气娘带新的好作品回来吧!</span>
				</div>
				<div class="zp-empty" id="left_empty_load" style="display: block">
					<img
						src="http://static.u17i.com/v4/www/images/bookrack/empty_yaoqiniang.png" />
					<span>加载中···</span>
				</div>
				<div id="con-recommend-list"></div>
				<a href="javascript:void(0)" class="change-btn cb2">换一批</a>
			</div>
			<!-- sidebar -->
			<!-- 书架，最近阅读-->
			<div class="bri-main">
				<!-- 导航 -->
				<div class="bri-main-nav">
					<div id="my_shelf_tab" class="bmn-tab bmnt1">
						<a id="my_shujia" href="javascript:void(0)">我的书架</a>
						<i></i>
					</div>
					<div id="lately_read_tab" class="bmn-tab bmnt1">
						<a href="javascript:void(0)">最近阅读</a>
						<i></i>
					</div>
					<span class="bmn-link"> <a href="http://comic.u17.com/rank/"
						target="_blank">不知道还有哪些好作品？去看看排行榜吧</a> </span>
				</div>
				<!-- 导航 end -->
				<!-- 加载中 -->
				<div class="zp-empty" id="loading"
					style="display: block; position: absolute; top: 36px; left: 50%; margin-left: -32px;">
					<img
						src="http://static.u17i.com/v4/www/images/bookrack/empty_yaoqiniang.png" />
					<span>加载中···</span>
				</div>
				<!-- 加载中 end -->
				<!-- 选项卡切换 -->
				<div class="bri-card-content" style="min-height: 814px;">
					<!-- 我的书架 -->
					<div id="my_shelf" class="bri-card shujia">
						<!-- 书架顶部 -->
						<div class="bri-top-content">
							<ul class="bri-tag-list">
								<!-- 分组 -->
							</ul>
							<a href="javascript:void(0)" class="jiantou"></a>
							<a href="javascript:void(0)" class="bri-add" title="新增分组"></a>
							<a href="javascript:void(0)" onclick="manage_group()"
								class="bri-set" title="管理分组"></a>
							<div class="bri-search">
								<input type="text" class="bri-search-input">
								<input type="button" class="bri-search-btn">
							</div>
						</div>
						<!-- 书架顶部000 end -->
						<!-- 作品为空时 -->
						<div class="zp-empty" id="zp-empty-shujia" style="display: none">
							<img
								src="http://static.u17i.com/v4/www/images/bookrack/empty_yaoqiniang.png" />
							<span>没有相关藏书呦！</span>
						</div>
						<!-- 作品为空时 end -->
						<!-- 有更新 -->
						<!-- 有未读 -->
						<!-- 已读完 -->
					</div>
					<!-- 我的书架 end -->
					<!-- 最近阅读 -->
					<div id="lately_read" class="bri-card zuijin">
						<div class="zp-empty" id="zp-empty-zuijin" style="display: none">
							<img
								src="http://static.u17i.com/v4/www/images/bookrack/empty_yaoqiniang.png" />
							<span>最近没有阅读呦！</span>
						</div>
						<!-- 本周记录 -->
						<!-- 上一周记录 -->
						<!-- 更早 -->
					</div>
					<!-- 最近阅读end -->
					<!-- loading -->
					<div class="br-loading-yaoqiniang">
						<img
							src="http://static.u17i.com/v4/www/images/bookrack/br_loading.gif">
						<span>加载中...</span>
					</div>
					<!-- loading end -->
				</div>
				<!-- 选项卡切换 end -->
			</div>
			<!-- 书架，最近阅读 end -->
			<!-- sidebar end -->
			<div class="clear"></div>
		</div>
		<!-- main end -->
		<!--footer开始-->
		<div id="ft" class="UT_space_footer">
			<div class="ft bg_white">
				<div class="ft_rt rt txt_rt">
					<span class="gray">Copyright©2005-2017 有妖气 </span><a
						class="blue unline" href="http://www.u17.com" target="blank">版权所有</a>
					<br />
					京ICP证：120807号
				</div>
				<div class="ft_lf">
					<a class="gray" href="http://www.u17.com" target="blank">首页</a> |
					<a class="gray" href="http://www.u17.com/z/help/about_intro.html"
						target="blank">关于有妖气</a> |
					<a class="gray" href="http://www.u17.com/z/help/faq.html"
						target="blank">帮助中心</a> |
					<a class="gray" href="http://www.u17.com/feedback/problem.php"
						target="blank">意见反馈</a> |
					<a class="gray" href="http://www.u17.com/comment/2.html"
						target="blank">不良信息举报</a>
					<br />
					&nbsp
					<!-- Processed in 29.57 ms querys:0 -->
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
		<!-- 悬浮工具条 -->
		<div class="top-tools-bar">
			<a href="javascript:void(0)" class="refresh-btn" title='刷新'></a>
			<a href="javascript:void(0)" class="set-btn" title='管理藏书'></a>
		</div>
		<!-- 悬浮工具条 end -->
		<!-- 返回顶部 -->
		<div id="goTop">
			<div class="btn_goTop">
				<span style="top: -30px; display: block;"></span>
				<a href="javascript:void(0);" title="回顶部"></a>
			</div>
		</div>
		<!-- 返回顶部 end -->
		<!-- 弹窗 -->
		<div class="br-dialog-content">
			<div class="br-dialog-box">
				<div class="br-dialog-title">
					提示
					<span class="br-dialog-close"></span>
				</div>
				<div class="br-dialog-str">
					确定要将选中漫画移除书架么？
				</div>
				<a href="javascript:void(0)" class="br-dialog-confirm">确定</a>
				<a href="javascript:void(0)" class="br-dialog-cancel">取消</a>
			</div>
		</div>
		<!-- 弹窗 end -->
		<!--选择分组弹框 开始-->
		<div id="alert_sel_group" onclick="stop_propagation(event)">
			<h5>
				请选择分组：
			</h5>
			<div class="suc_creat" style="display: none">
				已成功添加漫画到
				<span class="b red_f0">1</span>个分组
			</div>
			<div class="clearfix" id="select_favorite_group_list">
			</div>
			<div class="creat_box" id="select_favorite_group_add">
				<p class="title" onclick="$(this).hide();$(this).siblings().show()">
					创建新分组
				</p>
				<div style="display: none; margin-top: 10px">
					<input type="text" class="group_name text" value="请输入分组名称，最多8个字"
						onclick="if(this.value=='请输入分组名称，最多8个字')this.value=''"
						onfocus="$(this).css('color','#333');"
						onblur="$(this).css('color','#ccc')" color="1" />
					<span class="choose_col col1"
						onmouseover="show_color_options(this,'0',event)"
						onmouseout="hide_color_options(this,'0',event)">
						<div class="col_box" style="display: none;"
							onmouseover="show_color_options(this,1,event)"
							onmouseout="hide_color_options(this,1,event)">
							<em></em>
							<a href="javascript:;" class="col1"
								onclick="select_group_color1(1, '#select_favorite_group_add')"><span></span>
							</a>
							<a href="javascript:;" class="col2"
								onclick="select_group_color1(2, '#select_favorite_group_add')"><span></span>
							</a>
							<a href="javascript:;" class="col3"
								onclick="select_group_color1(3, '#select_favorite_group_add')"><span></span>
							</a>
							<a href="javascript:;" class="col4"
								onclick="select_group_color1(4, '#select_favorite_group_add')"><span></span>
							</a>
							<a href="javascript:;" class="col5"
								onclick="select_group_color1(5, '#select_favorite_group_add')"><span></span>
							</a>
							<a href="javascript:;" class="col6"
								onclick="select_group_color1(6, '#select_favorite_group_add')"><span></span>
							</a>
							<a href="javascript:;" class="col7"
								onclick="select_group_color1(7, '#select_favorite_group_add')"><span></span>
							</a>
							<a href="javascript:;" class="col8"
								onclick="select_group_color1(8, '#select_favorite_group_add')"><span></span>
							</a>
							<a href="javascript:;" class="col9"
								onclick="select_group_color1(9, '#select_favorite_group_add')"><span></span>
							</a>
							<a href="javascript:;" class="col10"
								onclick="select_group_color1(10, '#select_favorite_group_add')"><span></span>
							</a>
						</div> </span>
					<input type="button" class="btn" value=""
						onclick="select_add_group('#select_favorite_group_add')" />
					<a href="javascript:;" class="cancel"
						onclick="$(this).parent().hide();$(this).parent().siblings().show()">取消</a>
				</div>
			</div>
		</div>
		<!--选择分组弹框 结束-->
		<!--创建分组弹出-->
		<div id="form_add_group">
			<div class="row">
				<label>
					<i class="red_f0">*</i>分组名：
				</label>
				<input type="text" class="text" id="favorite_group_name"
					value="请输入分组名称，最多8个字"
					onclick="if(this.value=='请输入分组名称，最多8个字')this.value=''"
					onkeydown="if(this.value=='请输入分组名称，最多8个字')this.value=''" color="" />
			</div>
			<div class="row name_error" id="favorite_group_name_err"
				style="visibility: hidden;">
				您输入的分组名称已存在！
			</div>
			<div class="row sel_col clearfix">
				<label>
					选择分组颜色：
				</label>
				<div class="col_box">
					<a href="javascript:;" class="col1" title="桔黄"
						onclick="select_group_color(this,1)"><span></span> </a>
					<a href="javascript:;" class="col2" title="粉红"
						onclick="select_group_color(this,2)"><span></span> </a>
					<a href="javascript:;" class="col3" title="紫色"
						onclick="select_group_color(this,3)"><span></span> </a>
					<a href="javascript:;" class="col4" title="梅红"
						onclick="select_group_color(this,4)"><span></span> </a>
					<a href="javascript:;" class="col5" title="黄色"
						onclick="select_group_color(this,5)"><span></span> </a>
					<a href="javascript:;" class="col6" title="紫红"
						onclick="select_group_color(this,6)"><span></span> </a>
					<a href="javascript:;" class="col7" title="紫蓝"
						onclick="select_group_color(this,7)"><span></span> </a>
					<a href="javascript:;" class="col8" title="青色"
						onclick="select_group_color(this,8)"><span></span> </a>
					<a href="javascript:;" class="col9" title="草绿"
						onclick="select_group_color(this,9)"><span></span> </a>
					<a href="javascript:;" class="col10" title="蓝色"
						onclick="select_group_color(this,10)"><span></span> </a>
				</div>
			</div>
			<div class="row btn_box">
				<a href="javascript:;" title="确定" onclick="add_group()"></a>
				<a href="javascript:;" title="取消" class="cancel"
					onclick="$('#form_add_group').dialog('close')"></a>
			</div>
		</div>
		<!--创建分组弹出结束-->
		<!--管理分组弹窗-->
		<div id="form_manage_group">
			<!--内容-->
			<div class="clearfix" id="manage_favorite_group_list">
				<p class="none" id="no_group">
					您还未创建分组哦～～
				</p>
			</div>

			<div class="creat_box" id="manage_favorite_group_add">
				<p onclick="$(this).hide();$(this).siblings().show()" class="title"
					style="display: block;">
					创建新分组
				</p>
				<div style="margin-top: 10px; display: none">
					<input type="text" value="请输入分组名称，最多8个字"
						onclick="if(this.value=='请输入分组名称，最多8个字')this.value=''"
						onfocus="$(this).css('color','#333');"
						onblur="$(this).css('color','#ccc')" class="group_name text"
						color="1">
					<span class="choose_col col1"
						onmouseover="show_color_options(this,'0',event)"
						onmouseout="hide_color_options(this,'0',event)">
						<div class="col_box" style="display: none;"
							onmouseover="show_color_options(this,1,event)"
							onmouseout="hide_color_options(this,1,event)">
							<em></em>
							<a class="col1" href="javascript:;"
								onclick="select_group_color1(1, '#manage_favorite_group_add')"><span></span>
							</a>
							<a class="col2" href="javascript:;"
								onclick="select_group_color1(2, '#manage_favorite_group_add')"><span></span>
							</a>
							<a class="col3" href="javascript:;"
								onclick="select_group_color1(3, '#manage_favorite_group_add')"><span></span>
							</a>
							<a class="col4" href="javascript:;"
								onclick="select_group_color1(4, '#manage_favorite_group_add')"><span></span>
							</a>
							<a class="col5" href="javascript:;"
								onclick="select_group_color1(5, '#manage_favorite_group_add')"><span></span>
							</a>
							<a class="col6" href="javascript:;"
								onclick="select_group_color1(6, '#manage_favorite_group_add')"><span></span>
							</a>
							<a class="col7" href="javascript:;"
								onclick="select_group_color1(7, '#manage_favorite_group_add')"><span></span>
							</a>
							<a class="col8" href="javascript:;"
								onclick="select_group_color1(8, '#manage_favorite_group_add')"><span></span>
							</a>
							<a class="col9" href="javascript:;"
								onclick="select_group_color1(9, '#manage_favorite_group_add')"><span></span>
							</a>
							<a class="col10" href="javascript:;"
								onclick="select_group_color1(10, '#manage_favorite_group_add')"><span></span>
							</a>
						</div> </span>
					<input type="button" value="" class="btn"
						onclick="select_add_group('#manage_favorite_group_add')">
					<a class="cancel" href="javascript:;"
						onclick="$(this).parent().hide();$(this).parent().siblings().show()">取消</a>
				</div>

			</div>
			<!--内容 结束-->
		</div>
		<!--管理分组弹窗end-->

		<script type="text/javascript"
			src="http://static.u17i.com/v4/js/bookrack.js?t1534144758&99996989898">
</script>
		<script type="text/javascript">
//选择颜色
function select_group_color(o, n) {
	$(o).addClass('curr').siblings().removeClass('curr');
	$('#favorite_group_name').attr('color', n);
}

function select_group_color1(color, o) {
	$(o).find('input.group_name').attr('color', color);
	$(o).find('span.choose_col').attr('class', 'choose_col col' + color);
}

//添加分组form_manage_group
function add_group() {
	if ($('#favorite_group_name').data('posting') == 0) {
		$('#favorite_group_name').data('posting', 1);
		var favorite_group_name = filter_html($.trim($('#favorite_group_name')
				.val()));
		if (favorite_group_name == '' || favorite_group_name == '请输入分组名称，最多8个字') {
			$('#favorite_group_name_err').html('请输入分组名称').css('visibility',
					'visible');
			$('#favorite_group_name').data('posting', 0);
			return false;
		} else if (get_byte_length(favorite_group_name) > 16) {
			$('#favorite_group_name_err').html('最多允许输入8个汉字').css('visibility',
					'visible');
			$('#favorite_group_name').data('posting', 0);
			return false;
		}

		var query = {
			group_name : favorite_group_name,
			color : $('#favorite_group_name').attr('color')
		};
		$.ajax( {
			url : "/user/ajax.php?mod=favorite&act=group_add",
			data : query,
			type : "GET",
			cache : false,
			dataType : 'json',
			success : function(o) {
				if (o.code < 0) {
					$('#favorite_group_name_err').html(o.message).css(
							'visibility', 'visible');
				} else {
					$('#favorite_group_name_err').css('visibility', 'hidden');

					append_group_display(o.group_id, query.group_name, o.color,
							o.sort);

					$('#form_add_group').dialog('close');
					$('#favorite_group_name').attr('color', '').val('');
					$('#form_add_group .sel_col .col_box').removeClass('curr');

					popMsg('创建成功');

					$('#group_caption').remove();
					$('#no_group').remove();
				}

				$('#favorite_group_name').data('posting', 0);

			}
		});
	}
}

//对分组名称进行处理
function filter_html(content) {
	content = content.replace(/<\/?[A-Z-a-z^>]+>/g, '');
	return content;
}

//管理分组 
function manage_group() {
	$('#manage_favorite_group_add').find('input.group_name').data('posting', 0);
	$('#form_manage_group').dialog( {
		width : 390,
		height : 'auto',
		maxHeight : 100,
		title : '管理分组',
		resizable : false,
		modal : true
	}).dialog('open');
	if (!isIE6)
		$('.ui-dialog-bg').css('height', '');

	if (typeof $('#manage_favorite_group_add').find('input.group_name').data(
			'binded') == 'undefined') {
		$('#manage_favorite_group_add').find('input.group_name').data( {
			'binded' : 1,
			'value' : $('#chapter_name').val()
		}).keydown(function() {
			var strlen = get_byte_length($(this).val());
			if (strlen > 16) {
				$(this).val($(this).data('value'));
				$(this).focus();
				return false;
			} else {
				$(this).next('span').find('.forg').html(strlen);
				$(this).data('value', $(this).val());
			}
		}).keyup(function() {
			if (get_byte_length($(this).val()) > 16) {
				$(this).val($(this).data('value'));
				$(this).focus();
			}
		}).blur(function() {
			if (get_byte_length($(this).val()) > 16) {
				$(this).val($(this).data('value'));
				$(this).focus();
			}
		});
	}

}

//编辑分组
function select_group_edit(o, e) {
	var parent_ = $(o).parent();
	var parent_next = parent_.next();
	parent_.hide().next().show();

	if (typeof parent_next.find('input.group_name').data('binded') == 'undefined') {
		parent_next.find('input.group_name').data( {
			'binded' : 1,
			'value' : $('#chapter_name').val()
		}).keydown(function() {
			var strlen = get_byte_length($(this).val());
			if (strlen > 16) {
				$(this).val($(this).data('value'));
				$(this).focus();
				return false;
			} else {
				$(this).next('span').find('.forg').html(strlen);
				$(this).data('value', $(this).val());
			}
		}).keyup(function() {
			if (get_byte_length($(this).val()) > 16) {
				$(this).val($(this).data('value'));
				$(this).focus();
			}
		}).blur(function() {
			if (get_byte_length($(this).val()) > 16) {
				$(this).val($(this).data('value'));
				$(this).focus();
			}
		});
	}

	stop_propagation(e);
}

//保存分组
function edit_group(this_group_id) {
	var this_group = $('#manage_favorite_group_list div[group-id=' + this_group_id + ']');

	if (typeof this_group.data('posting') != 'undefined'
			&& this_group.data('posting') == 1) {
		return;
	}
	$(this_group).data('posting', 1);

	var groups = {};
	var groups_c = 0;

	var this_group_name = $(this_group).find('input.group_name');
	var group_name = $.trim(this_group_name.val());

	if (group_name == '' || get_byte_length(group_name) > 16) {
		this_group.find('.p_group_name').show();
		this_group.find('.edit_con').hide();
		this_group_name.val(this_group_name.attr('ori-value'));
		return;
	}

	if (group_name != this_group_name.attr('ori-value')) {
		if (typeof groups[this_group_id] == 'undefined') {
			groups[this_group_id] = {};
			groups_c++;
		}
		groups[this_group_id]['group_name'] = group_name;
	}
	if (this_group_name.attr('color') != this_group_name.attr('ori-color')) {
		if (typeof groups[this_group_id] == 'undefined') {
			groups[this_group_id] = {};
			groups_c++;
		}
		groups[this_group_id]['color'] = this_group_name.attr('color');
		groups_c++;
	}

	if (groups_c == 0) {
		this_group.find('.p_group_name').show();
		this_group.find('.edit_con').hide();
		return;
	}

	var query = {
		groups : groups
	};
	$.ajax( {
		url : "/user/ajax.php?mod=favorite&act=group_edit",
		data : query,
		type : "POST",
		cache : false,
		dataType : 'json',
		success : function(o) {
			if (o.update_name_error == '') {

				if (groups[this_group_id].group_name != 'undefined') {
					this_group_name.attr('ori-value',
							groups[this_group_id].group_name);
					update_group_display(this_group_id,
							groups[this_group_id].group_name, '');
				}
				if (typeof groups[this_group_id].color != 'undefined') {
					this_group_name.attr('ori-color',
							groups[this_group_id].color);
					update_group_display(this_group_id, '',
							groups[this_group_id].color);
				}

				this_group.find('.p_group_name').show();
				this_group.find('.edit_con').hide();

			} else {

				if (typeof groups[this_group_id].color != 'undefined') {
					this_group_name.attr('ori-color',
							groups[this_group_id].color);
					update_group_display(this_group_id, '',
							groups[this_group_id].color);
				}

				popMsg('名称重复');

			}

			$(this_group).data('posting', 0);
		}
	});

}

//删除分组
function delete_group(group_id) {
	$
			.confirmDialog(
					{
						msg : "确定要删除此分组吗？"
					},
					function() {
						$
								.ajax( {
									url : "/user/ajax.php?mod=favorite&act=group_delete",
									data : 'group_id=' + group_id,
									type : "GET",
									cache : false,
									dataType : 'json',
									success : function(o) {

										// $('#favorite_group_list .link[group-id='+group_id+']').remove();
									$('#group_id_' + group_id).remove();

									var $btli = $(".bri-tag-list li");
									var btlHeight = $btli.outerHeight(true);
									var pt = $(".bri-tag-list").offset().top;
									var ct = $btli.eq(-1).offset().top;
									if (ct - pt <= (btlHeight + 10)) { //如果删除分组后按钮不超过两行，就隐藏箭头
										$('.jiantou').removeClass(
												"slide-bri-tag-list");
									}

									$(
											'#select_favorite_group_list a[group-id=' + group_id + ']')
											.remove()
									$(
											'#manage_favorite_group_list .group[group-id=' + group_id + ']')
											.remove();

									if ($('#manage_favorite_group_list .group').length == 0) {
										$('#manage_favorite_group_list')
												.prepend(
														'<p class="none" id="no_group">您还未创建分组哦～～</p>');
									}

									$('ul.content li .left .left_top .group')
											.each(
													function() {

														var cur_group_ids = $(
																this).next(
																'input:hidden')
																.val();
														var new_group_ids = new Array();
														if (cur_group_ids != '') {
															var arr_group_ids = cur_group_ids
																	.split(',');
															for (k in arr_group_ids) {
																if (group_id != arr_group_ids[k]) {
																	new_group_ids
																			.push(arr_group_ids[k]);
																}
															}

														}

														if (new_group_ids.length == 0) {
															$(this)
																	.html('未分组')
																	.next(
																			'input:hidden')
																	.val(
																			new_group_ids
																					.join(','));

														} else if (new_group_ids.length > 0) {
															$(this)
																	.html(
																			$(
																					'#favorite_group_list div[group-id=' + new_group_ids[0] + '] span')
																					.html())
																	.next(
																			'input:hidden')
																	.val(
																			new_group_ids
																					.join(','));
														}

													});

								}
								});
					});
}

//创建分组
function select_add_group(fo) {
	var input_group_name = $(fo).find('input.group_name');
	if (input_group_name.data('posting') == 0) {
		input_group_name.data('posting', 1);
		var favorite_group_name = filter_html($.trim(input_group_name.val()));
		if (favorite_group_name == '' || favorite_group_name == '请输入分组名称，最多8个字') {
			popMsg('请输入分组名称');
			return false;
		} else if (get_byte_length(favorite_group_name) > 16) {
			popMsg('最多允许输入8个汉字');
			input_group_name.data('posting', 0);
			return false;
		}

		var query = {
			group_name : favorite_group_name,
			color : input_group_name.attr('color')
		};
		$
				.ajax( {
					url : "/user/ajax.php?mod=favorite&act=group_add",
					data : query,
					type : "GET",
					cache : false,
					dataType : 'json',
					success : function(o) {
						if (o.code < 0) {
							popMsg(o.message);
						} else {

							append_group_display(o.group_id, query.group_name,
									o.color, o.sort);

							$(fo).find('.title').show().siblings().hide();

							input_group_name.attr('color', '').val('');

							if (fo == '#select_favorite_group_add') {
								select_favorite_group($(
										'#select_favorite_group_list')
										.find(
												'a[group-id=' + o.group_id + '] input:checkbox')
										.attr('checked', true));
							}

							popMsg('创建成功');

							$('#group_caption').remove();
							$('#no_group').remove();
						}

						input_group_name.data('posting', 0);
					}
				});
	}
}

$('.zsb-add').live(
		"click",
		function(event) {
			$(this).parents().prev().prev().prev().addClass("selected");

			var arr_comic_id = new Array();
			var group_id = $('.bri-tag-list .cur').attr("id");
			if (group_id != null) {
				group_id = group_id.slice(9);
			} else {
				group_id = 'no_sel_group_id';
			}
			if ($('.zp-set-box .selected').length > 1) {
				select_group(this, 0, event, group_id);
			} else {
				var comic_id = $(this).parent().prev().prev().prev().attr("id")
						.slice(9);
				select_group(this, comic_id, event, group_id);
			}

			var num = $(this).parents(".bri-card").find(
					".zp-set-box .zsb-checkbox.selected").length;
			$(".zsb-info").removeClass("show");
			$(this).parent().siblings(".zsb-info").children("span").text(num)
					.end().addClass('show');
		});

/* 将漫画加入分组*/
function select_group(o, comic_id, e, group_id) {//ddddddddddddd
	var comic_ids = {};
	$('#select_favorite_group_list input:checkbox').attr('checked', false);

	if (comic_id == 0) {
		$('.zp-set-box .selected').each(function(i) {
			comic_ids[i] = $(this).attr("id").slice(9);
		});
		if (group_id != 'all' && group_id != 'no_sel_group_id') {
			$(
					'#select_favorite_group_list input:checkbox[value=' + group_id + ']')
					.attr('checked', true);
		}
	} else {
		comic_ids[0] = comic_id;
		$
				.ajax( {
					url : "/user/ajax.php?mod=favorite&act=favorite_list_new_fun&a=get_group_ids",
					data : {
						comic_id : comic_id
					},
					type : 'post',
					async : false,
					dataType : 'json',
					success : function(data) {
						str_group_ids = data.str_group_ids;
					}
				});
		var arr_group_ids = str_group_ids.split(',');
		if (arr_group_ids.length > 0) {
			for (k in arr_group_ids) {
				$(
						'#select_favorite_group_list input:checkbox[value=' + arr_group_ids[k] + ']')
						.attr('checked', true);
			}
		}
	}

	if (typeof $('#select_favorite_group_add').find('input.group_name').data(
			'binded') == 'undefined') {
		$('#select_favorite_group_add').find('input.group_name').data( {
			'binded' : 1,
			'value' : $('#chapter_name').val()
		}).keydown(function() {
			var strlen = get_byte_length($(this).val());
			if (strlen > 16) {
				$(this).val($(this).data('value'));
				$(this).focus();
				return false;
			} else {
				$(this).next('span').find('.forg').html(strlen);
				$(this).data('value', $(this).val());
			}
		}).keyup(function() {
			if (get_byte_length($(this).val()) > 16) {
				$(this).val($(this).data('value'));
				$(this).focus();
			}
		}).blur(function() {
			if (get_byte_length($(this).val()) > 16) {
				$(this).val($(this).data('value'));
				$(this).focus();
			}
		});
	}

	$('#alert_sel_group').data('comic_ids', comic_ids).find('input.group_name')
			.data('posting', 0);

	var contentLeft = $(".bri-main-content").offset().left;
	var iMarginLeft = ($(o).offset().left - contentLeft) - 600;

	$('#alert_sel_group').css( {
		display : 'block',
		left : "50%",
		"margin-left" : iMarginLeft,
		top : $(o).offset().top + $(o).height() + 5
	});

}

function update_group_display(group_id, group_name, color) {
	if (group_name != '') {
		$('#group_id_' + group_id + ' #group_name').html(group_name);
		// $('#favorite_group_list .link[group-id='+group_id+'] a span').html( group_name ); 
		$('#select_favorite_group_list a[group-id=' + group_id + '] span')
				.html(group_name);
		$(
				'#manage_favorite_group_list .group[group-id=' + group_id + '] .p_group_name span')
				.html(group_name);
	}
	if (color != '') {
		$('#group_id_' + group_id).attr('class', 'bcol' + color);
		$('#favorite_group_list .link[group-id=' + group_id + ']').attr(
				'class', 'link col' + color);
	}
}

function select_favorite_group($this, e) {

	$($this).attr('disabled', 'disabled');
	comic_ids = $('#alert_sel_group').data('comic_ids');
	var upd_num = 0;
	for (key in comic_ids) {
		if ($('#comic_id_' + comic_ids[key]).parents(".zp-list-content")
				.hasClass('update')) {
			upd_num++;
		}
		;
	}
	var set_ = $($this).attr('checked') ? 1 : 0;
	var group_id = $($this).val();
	var query = {
		set : set_,
		comic_ids : comic_ids,
		group_id : group_id
	};
	$
			.ajax( {
				url : "/user/ajax.php?mod=favorite&act=group_set",
				data : query,
				type : "POST",
				cache : false,
				dataType : 'json',
				success : function(o) {
					if (set_ == 1) {
						$('#alert_sel_group')
								.find('.suc_creat')
								.html(
										'已成功添加漫画到<span class="b red_f0">' + $('#select_favorite_group_list input:checkbox[checked]').length + '</span>个分组')
								.css('display', 'block');

						for (k in query.comic_ids) {
							$('#fav_comic_' + query.comic_ids[k])
									.find('.left .left_top .group')
									.each(
											function() {
												$(this).html(
														$($this).next().html());

												var cur_group_ids = $(this)
														.next('input:hidden')
														.val();
												var new_group_ids = new Array();
												new_group_ids[0] = group_id;
												if (cur_group_ids != '') {
													var arr_group_ids = cur_group_ids
															.split(',');
													for (k in arr_group_ids) {
														if (group_id != arr_group_ids[k]) {
															new_group_ids
																	.push(arr_group_ids[k]);
														}
													}
												}
												$(this)
														.next('input:hidden')
														.val(
																new_group_ids
																		.join(','));
											});
						}

						if (o.num > 0) {
							var ori_num = parseInt($('#group_id_' + group_id)
									.find('.btl-num').html());
							$('#group_id_' + group_id).find('.btl-num').html(
									ori_num + o.num);
						}

						if (upd_num > 0) {
							var obj = $('#group_id_' + group_id)
									.find('.btl-ts');
							if (obj.length > 0) {
								var n = parseInt(obj.html())//现有的数量
								n = n + upd_num;
								obj.html(n);
							} else {
								var h = '<span class="btl-ts">' + upd_num + '</span>';
								$('#group_id_' + group_id).append(h);
							}
						}

					} else {
						$('#alert_sel_group').find('.suc_creat').css('display',
								'none');

						var now_sel_group_id = $('.bri-tag-list .cur').attr(
								"id");
						if (now_sel_group_id != null) {
							now_sel_group_id = now_sel_group_id.slice(9);
						} else {
							now_sel_group_id = 'no_sel_group_id';
						}

						for (k in query.comic_ids) {
							$('#fav_comic_' + query.comic_ids[k])
									.find('.left .left_top .group')
									.html(
											o.groups[query.comic_ids[k]] != '' ? o.groups[query.comic_ids[k]]
													: '未分组');

							if (now_sel_group_id != 'all'
									&& group_id == now_sel_group_id) {
								$('#comic_id_' + query.comic_ids[k]).parents(
										"li").remove();
							}

						}
						if (now_sel_group_id != 'all') {
							$('#alert_sel_group').hide();
						}
						for (k in query.comic_ids) {
							$('#fav_comic_' + query.comic_ids[k])
									.find('.left .left_top .group')
									.each(
											function() {
												$(this).html(
														$($this).next().html());

												var cur_group_ids = $(this)
														.next('input:hidden')
														.val();
												var new_group_ids = new Array();
												if (cur_group_ids != '') {
													var arr_group_ids = cur_group_ids
															.split(',');
													for (k in arr_group_ids) {
														if (group_id != arr_group_ids[k]) {
															new_group_ids
																	.push(arr_group_ids[k]);
														}
													}
												}
												$(this)
														.next('input:hidden')
														.val(
																new_group_ids
																		.join(','));
											});
						}

						if (o.num > 0) {
							var ori_num = parseInt($('#group_id_' + group_id)
									.find('.btl-num').html());
							$('#group_id_' + group_id).find('.btl-num').html(
									ori_num - o.num);
						}

						if (upd_num > 0) {
							var obj = $('#group_id_' + group_id)
									.find('.btl-ts');
							if (obj.length > 0) {
								var n = parseInt(obj.html())//现有的数量
								n = n - upd_num;
								if (n > 0) {
									obj.html(n);
								} else {
									$('#group_id_' + group_id).find('.btl-ts')
											.remove();
								}
							}
						}
					}

					$($this).removeAttr('disabled');

				}
			});

	if (e)
		stop_propagation(e);
}

//拼接分组
function append_group_display(group_id, group_name, color, group_sort) {

	var html = '<li id="group_id_' + group_id + '" class="bcol' + color
			+ '"><span id="group_name">' + group_name
			+ '</span><span class="btl-num">0</span></li>';
	$('.bri-tag-list').append(html);

	var $btli = $(".bri-tag-list li");
	var btlHeight = $btli.outerHeight(true);
	var pt = $(".bri-tag-list").offset().top;
	var ct = $btli.eq(-1).offset().top;
	if (ct - pt > (btlHeight + 10)) { //如果分组按钮超过两行，就显示箭头
		$('.jiantou').addClass("slide-bri-tag-list");
	}

	var h = '<a href="javascript:;" group-id="'
			+ group_id
			+ '" onclick="a_favorite_group(this)"><input type="checkbox" value="'
			+ group_id
			+ '" onclick="select_favorite_group(this, event)"><span>'
			+ group_name + '</span></a>';
	$('#select_favorite_group_list').append(h);

	//管理分组列表加一个
	$('#manage_favorite_group_list')
			.append(
					'<div class="group" group-id="'
							+ group_id
							+ '" onmouseover="$(this).addClass(\'bg_hover\');$(this).find(\'a.edit\').show();" onmouseout="$(this).removeClass(\'bg_hover\');$(this).find(\'a.edit\').hide();"><p class="p_group_name" style="display: block;"><span>'
							+ group_name
							+ '</span><a class="edit" href="javascript:;" onclick="select_group_edit(this, event)">编辑</a></p><div class="edit_con" style="display:none"><input type="text" value="'
							+ group_name
							+ '" class="group_name text" ori-value="'
							+ group_name
							+ '" ori-color="'
							+ color
							+ '" color="'
							+ color
							+ '" sort="'
							+ group_sort
							+ '"  /><span class="choose_col col'
							+ color
							+ '" onmouseover="show_color_options(this,\'0\',event)" onmouseout="hide_color_options(this,\'0\',event)"><div class="col_box" style="display:none" onmouseover="show_color_options(this,1,event)" onmouseout="hide_color_options(this,1,event)"><em></em><a class="col1" href="javascript:;" onclick="select_group_color1(1, $(\'#manage_favorite_group_list .group[group-id='
							+ group_id
							+ ']\'))"><span></span></a><a class="col2" href="javascript:;" onclick="select_group_color1(2, $(\'#manage_favorite_group_list .group[group-id='
							+ group_id
							+ ']\'))"><span></span></a><a class="col3" href="javascript:;" onclick="select_group_color1(3, $(\'#manage_favorite_group_list .group[group-id='
							+ group_id
							+ ']\'))"><span></span></a><a class="col4" href="javascript:;" onclick="select_group_color1(4, $(\'#manage_favorite_group_list .group[group-id='
							+ group_id
							+ ']\'))"><span></span></a><a class="col5" href="javascript:;" onclick="select_group_color1(5, $(\'#manage_favorite_group_list .group[group-id='
							+ group_id
							+ ']\'))"><span></span></a><a class="col6" href="javascript:;" onclick="select_group_color1(6, $(\'#manage_favorite_group_list .group[group-id='
							+ group_id
							+ ']\'))"><span></span></a><a class="col7" href="javascript:;" onclick="select_group_color1(7, $(\'#manage_favorite_group_list .group[group-id='
							+ group_id
							+ ']\'))"><span></span></a><a class="col8" href="javascript:;" onclick="select_group_color1(8, $(\'#manage_favorite_group_list .group[group-id='
							+ group_id
							+ ']\'))"><span></span></a><a class="col9" href="javascript:;" onclick="select_group_color1(9, $(\'#manage_favorite_group_list .group[group-id='
							+ group_id
							+ ']\'))"><span></span></a><a class="col10" href="javascript:;" onclick="select_group_color1(10, $(\'#manage_favorite_group_list .group[group-id='
							+ group_id
							+ ']\'))"><span></span></a></div></span><i class="delete" onclick="delete_group('
							+ group_id
							+ ')"></i><div class="clear_both"><a class="save" href="javascript:;" onclick="edit_group( '
							+ group_id
							+ ' )">保存</a><a class="cancel" href="javascript:;" onclick="$(this).parent().parent().hide().prev().show();">取消</a></div></div></div>');

}

//show出颜色框
function show_color_options(o, p, e) {
	if (p == 0) {
		$(o).find('.col_box').show();
		$(o).data('show', 0);
	} else {
		$(o).show();
		$(o).parent().data('show', 1);
	}

	stop_propagation(e);
}

function a_favorite_group(o) {

	var cb = $(o).find('input:checkbox');

	if (cb.attr('disabled'))
		return false;

	if (cb.attr('checked')) {
		cb.attr('checked', false);
	} else {
		cb.attr('checked', true);
	}

	select_favorite_group($(o).find('input:checkbox'), '');

}

function stop_propagation(e) {
	if (e != '') {
		if (e && e.stopPropagation) {
			e.stopPropagation();
		} else {
			window.event.cancelBubble = true;
		}
	}
}

function hide_color_options(o, p, e) {
	if (p == 0) {
		setTimeout(function() {
			if ($(o).data('show') == 0) {
				$(o).find('.col_box').hide();
			}
		}, 200);
	} else {

		$(o).hide();
		$(o).parent().data('show', 0);
	}
	stop_propagation(e);
}

function show_color_options(o, p, e) {
	if (p == 0) {
		$(o).find('.col_box').show();
		$(o).data('show', 0);
	} else {
		$(o).show();
		$(o).parent().data('show', 1);
	}
	stop_propagation(e);
}
</script>
	</body>
</html>
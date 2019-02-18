<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>漫画分类-Thunder漫画梦工厂</title>
<link href="http://static.u17i.com/v4/common/css/basic.css?t1515655158"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="http://static.u17i.com/v5/css/basic_compatible.css?t1519637647" />
<link rel="stylesheet" type="text/css"
	href="http://static.u17i.com/v4/common/css/banner_v5.css?t1501830639">
<link rel="stylesheet" type="text/css"
	href="http://static.u17i.com/v4/www/css/categray.css?t1529994021&123">
<script type="text/javascript"
	src="http://static.u17i.com/v4/js/all-min.js?t1437463353"></script>
<script type="text/javascript"
	src="http://static.u17i.com/v4/js/u17.js?t1526437697"></script>
<script type="text/javascript"
	src="http://static.u17i.com/v4/js/v4.js?t1437635256"></script>
</head>
<body>
	<!--顶部导航-->
	<script src="http://static.u17i.com/v5/js/page/www.js?t1515655703"
		type="text/javascript"></script>
	<script src="http://static.u17i.com/v4/js/project/login_sdo.js"
		type="text/javascript"></script>
	<!--[if IE 6]> <script src="http://static.u17i.com/v4/js/DD_belatedPNG_0.0.8a.js" type="text/javascript"></script> <script> DD_belatedPNG.fix(".png24"); </script> <![endif]-->
	<!--黄色提示框-->
	<div id="tip_topfixed"
		style="display:none;top: 46px;margin-left: 113px;">
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
	font: 14px/44px "Microsoft Yahei";
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
	filter: alpha(opacity = 75);
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
							style="color:#333;">首页</a>
					</div>
					<!-- 首页 end -->
					<!--小说-->
					<div class="pop_wrap" style="display:none;">
						<a href="javascript:void(0);" class="nav nav_novel">小说<em></em></a>
						<div class="pop_box" style="display:none;"></div>
					</div>
					<!--小说end-->
					<!--有熊-->
					<div class="pop_wrap" style="display:none;">
						<a href="javascript:;" class="nav nav_uxiong">有熊<em></em></a>
						<div class="pop_box" style="display:none;"></div>
					</div>
					<!--有熊 end-->
				</div>
				<!--左侧 end-->
				<!--右侧-->
				<div class="fr" id="top_nav_right">
					<!--已登录-->
					<div id="userbar">
						<a
							href="http://passport.u17.com/member_v2/login.php?url=http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?order=2"
							class="btn_login">登录<em></em></a><a
							href="http://passport.u17.com/member_v2/signup.php?url=http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?order=2"
							class="btn_regist" style="margin: 0 15px 0 12px;">立即注册</a>
						<div class="pop_wrap user_i" style="margin-right:38px">
							<div class="u_nav">
								<a href="self.jsp" class="nav" style="color: #333"
									target="_blank">个人中心<em></em></a>
								<div class="pop_box right_pop_box" style="display: none;">
									<ul class="pop_box_con usercenter_pop cf">
										<li><a href="reader.jsp"
											target="_blank" style="width: 72px;"><span><i>我是读者</i></span></a></li>
										<li><a href="reader.jsp" target="_blank"
											style="width: 72px;"><span><i>我是作者</i></span></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--已登录 end-->
					<!--通知-->
					<div class="pop_wrap">
						<a href="javascript:void(0);" class="nav">通知
							<div class="update_v5Box" id="all_msg_box" style="display:none;">
								<i class="update_v5" id="all_msg"></i>
							</div>
							<em id="tip_topem"></em><span class="clock" id="tip_topclock"
							style="display:none;"></span><q>|</q>
						</a>
						<div class="pop_box">
							<ul class="pop_box_con notice_pop cf">
								<li><a href="http://user.u17.com/favorite/list.php"
									target="_blank"><span><i>漫画更新</i><em
											id="notify_count_favorite_comic_v4" class="f99">0</em></span></a></li>
								<li><a
									href="http://user.u17.com/message/system_message_list.php"
									target="_blank"><span><i>系统消息</i><em
											id="notify_count_system_message" class="f99">0</em></span></a></li>
								<!--<li id="author_message_li" style="display:none;"><a href="http://comic.user.u17.com/message/message_list.php" target="_blank"><span><i>作者消息</i><em id="notify_count_author_message" class="f99">0</em></span></a></li>-->
								<!-- <li><a href="http://user.u17.com/message/message_list.php" target="_blank"><span><i>短消息</i><em id="notify_count_user_message" class="f99">0</em></span></a></li> -->
								<li><a href="http://user.u17.com/comment/comment.php"
									target="_blank"><span><i>评论回复</i><em id="msg_reply"
											class="f99">0</em></span></a></li>
								<li><a
									href="http://user.u17.com/message/message_at_list.php"
									target="_blank"><span><i>@我的消息</i><em
											id="notify_count_user_message_at" class="f99">0</em></span></a></li>
							</ul>
						</div>
					</div>
					<!--通知end-->
					<!--书架-->
					<div class="pop_wrap" id="index_v4_1_favorite_history">
						<a href="http://user.u17.com/favorite/list.php" target="_blank"
							class="nav">书架<em></em><q>|</q></a>
						<div class="pop_box">
							<div class="pop_box_con book_pop cf">
								<div class="tab">
									<a href="javascript:;" rel="recent_read" id="tab_recent_read"><i>最近看的漫画</i></a><q></q>
									<a href="javascript:;" rel="recent_store" id="tab_recent_store"
										class="curr"><i class="bor_green">我收藏的漫画</i></a>
								</div>
								<div class="tab_con">
									<!--最近看的漫画-->
									<div id="recent_read" style="display:none;">
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
						<a href="http://pay.u17.com" class="nav nav_pay" target="_blank"><span></span>充值<em></em></a>
						<div class="pop_box right_pop_box" style="display:none;">
							<ul class="pop_box_con usercenter_pop cf">
								<li><a href="http://pay.u17.com/vip_member" target="_blank"><span><i>VIP充值</i></span></a></li>
								<li><a href="http://pay.u17.com" target="_blank"><span><i>Thun币充值</i></span></a></li>
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
							class="fff nav fl right_choose">作者福利<em></em><q>|</q></a>
						<div class="pop_box right_pop_box" style="display:none;">
							<ul class="pop_box_con usercenter_pop cf">
								<li><a
									href="http://www.u17.com/z/zt/2018_mhds3_pc/index.html"
									target="_blank"><span>漫画大赛</i></span></a></li>
								<li><a href="http://www.u17.com/z/zt/zhexian/"
									target="_blank"><span><i>月票折现</i></span></a></li>
								<li><a href="http://www.u17.com/z/zt/shouyi/"
									target="_blank"><span>月票排名奖</i></span></a></li>
								<li><a href="http://daxue.u17.com/" target="_blank"><span>Thun大学</i></span></a></li>
								<li><a href="http://www.u17.com/dream/" target="_blank"><span>梦想激励</i></span></a></li>
							</ul>
						</div>
					</div>
					<!-- 作者福利 end -->
					<!-- 投稿签约 -->
					<div class="pop_wrap pull_box wrap_welfare"
						id="pull_welfare_tougao">
						<a href="javascript:void(0);" target="_blank"
							class="fff nav fl right_choose">投稿签约<em></em><q>|</q></a>
						<div class="pop_box" style="display: none;">
							<div class="pop_box_con">
								<strong>你想成为Thunder的签约作者吗？那就快快给我们投稿吧！</strong><br /> 投稿需准备——<br />
								（1）、故事大纲包括主线剧情间断性发展，起承转合。<br /> （2）、本作品3、4个人设，人设要全身画到脚和鞋子。<br />
								（3）、往期作品。（没有可忽略~）<br /> （4）、投稿作品的第一话分镜草图（至少10页连贯分镜）. 以及2-4张完成稿。<br />
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
	<script>set_client_width_class(); flush_login(); $.xtab({
			tab : '#top_nav .nav',
			body : '#top_nav .pop_box',
			tab_show_class : 'cur',
			tab_hide_class : '',
			event : 'mouseover',
			lazy_time : 200,
			default_tab : 6,
			callback : function(tab, body, flag) {
				if (body.html() == '' && flag != 7) {
					$.ajax({
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
		}); $.xtab({
			tab : '#top_nav_right .right_nav',
			body : '#top_nav_right .right_pop_box',
			tab_show_class : 'cur',
			tab_hide_class : '',
			event : 'mouseover',
			lazy_time : 200,
			default_tab : 3,
			callback : function(tab, body, flag) {
				if (body.html() == '' && flag != 7) {
					$.ajax({
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
		}); $(document).ready(function() {
		/* *为书架绑定鼠标事件(ajax触发,只调取一次) */ /*获取我收藏的漫画*/ $("#index_v4_1_favorite_history").bind('mouseenter', get_favorite_comic_list); /*获取我阅读的漫画*/ $("#index_v4_1_favorite_history").bind('mouseenter', get_read_comic_list); /*导航下拉*/ index_pop_wrap(); /*书架背景变色*/ index_bookList(); /*tab切换*/ $("#index_v4_1_favorite_history .tab a").mouseover(index_tab); /*传送门展开收缩*/ index_portal();
		}); $("#pull_welfare").bind("mouseenter", function() {
			$(this).addClass("pop_on");
		}); $("#pull_welfare_tougao").bind("mouseenter", function() {
			$(this).addClass("pop_on");
		})
	</script>
	<!--顶部导航 end-->
	<div style="height:47px"></div>
	<div id="admin_body"></div>
	<!--头部-->
	<script src="http://static.u17i.com/v4/js/project/www_audio.js"
		type="text/javascript"></script>
	<style>
#header {
	cursor: pointer;
	position: relative;
}

#header {
	background: rgba(0, 0, 0, 0)
		url("http://news.u17i.com/images/header_bg/header_bg_1548931601_1Acfb291d3AW.jpg")
		no-repeat scroll center top
}

#header {
	position: relative;
	width: 100%;
	height: 147px;
	overflow: hidden;
}

.banner-tips {
	position: absolute;
	display: none;
	z-index: 999;
	width: 243px;
	height: 33px;
	text-align: center;
	color: #fff;
	font-size: 14px;
	line-height: 32px;
	background:
		url(http://static.u17i.com/v4/common/images/banner_tips_right.png);
	font-family: "microsoft yahei";
}

.banner-tips.bt-left {
	background:
		url(http://static.u17i.com/v4/common/images/banner_tips_left.png);
}
</style>
	<div id="header" class="cf">
		<div class="banner-tips">第三届漫画大赛获奖公布</div>
		<input class="header_link"
			value="http://www.u17.com/z/zt/2019_mhds_py/index_pc.html"
			type="hidden" />
		<div class="wrap">
			<h1 class="logo">
				<!-- <a href="http://www.u17.com/" title="Thunder" class="png24"></a> -->
			</h1>
		</div>
	</div>
	<script>
		var $header = $("#header");
		var headerWidth = $header.width();
		$(window).bind("resize", function() {
			headerWidth = $header.width();
		});
		var $bannerTips = $(".banner-tips");
		var bannerWidth = $bannerTips.width();
		var headerTop = $header.offset().top;
		$header.hover(function() {
			$bannerTips.show();
		}, function() {
			$bannerTips.hide();
		}).bind("mousemove", function(ev) {
			var l = ev.pageX,
				t = ev.pageY - headerTop - 16;
			if (headerWidth - l - bannerWidth < 10) {
				l = l - bannerWidth - 10; $bannerTips.addClass('bt-left');
			} else {
				l += 10; $bannerTips.removeClass('bt-left');
			}
			$bannerTips.css({
				left : l,
				top : t
			});
		}); $("#header .logo").hover(function() {
			$bannerTips.hide();
		}, function() {
			$bannerTips.show();
		});
	</script>
	<script>
		var header_link = $('.header_link').val();
		if (header_link) {
			$("#header").click(function(e) {
				$.ajax({
					type : "get",
					async : true,
					url : _cfg_host_base + "/log/ajax.php?mod=statistics&act=showtimes&typeId=31",
					dataType : "json",
					success : function(o) {}
				}); window.open(header_link);
			}); $("#header a,#header input").click(function(e) {
				e.stopPropagation();
			}); $(".laba").mouseover(function() {
				$(this).stop().animate({
					width : '115px'
				}, 600);
			}); $(".laba").mouseout(function() {
				$(this).stop().animate({
					width : '19px'
				}, 600);
			});
		}
	</script>
	<!--头部 end-->
	<!--导航-->
	<!-- 漫画更新数 -->
	<div id="v5_nav">
		<div class="nav">
			<a href="index.jsp" target="_blank">首页</a> <q></q> <a
				href="http://comic.u17.com/rank/" target="_blank">排行榜</a> <q></q> <a
				href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?order=2"
				target="_blank">分类</a> <q></q> <a
				href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?order=1"
				target="_blank">更新<em class="update_v5Box"><i
					class="update_v5" id="banner_comic_update_num">44</i></em></a> <q></q> <a
				href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?iv=4"
				target="_blank">VIP漫画</a> <q></q> <a
				href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?iv=12"
				target="_blank">订阅</a> <q></q> <a
				href="http://www.u17.com/comic_list/th99_gr4_ca99_ss0_ob0_ac0_as0_wm0_co99_ct99_p1.html"
				target="_blank">少年</a> <q></q> <a
				href="http://www.u17.com/comic_list/th99_gr5_ca99_ss0_ob0_ac0_as0_wm0_co99_ct99_p1.html"
				target="_blank">少女</a> <q></q>
			<!-- <a href="http://www.u17.com/comic_list/th1099_gr99_ca99_ss0_ob0_ac0_as0_wm0_co99_ct99_p1.html" target="_blank">耽美</a> <q></q>-->
			<div class="fr search_box" id="search">
				<input type="text" class="fl search" id="header_search_input"
					onkeyup="if(event.keyCode==13){ search(this.value)}"
					placeholder="雏蜂" maxlength="27"
					onblur="$(this).css('color','#b5b5b5')" x-webkit-speech
					lang="zh-CN" /> <input type="button" class="fl search_btn"
					title="搜索"
					onclick=" var search_terms = '雏蜂'; if($('#header_search_input').val()!=''){search_terms = $('#header_search_input').val()};search(search_terms);" />
			</div>
		</div>
	</div>
	<!-- nav end -->
	<!-- 我看过的 -->
	<!-- <div id="readed_box"> <div class="readed"> <p class="left ico" id="comic_history_banner"> </p> <p class="fr"> <a href="http://user.u17.com/favorite/read_list.php" target="_blank">我的阅读记录</a>&nbsp;|&nbsp;<a href="http://user.u17.com/favorite/list.php" target="_blank">进入书架</a> </p> </div> </div> -->
	<!-- 我看过的 end -->
	<script
		src="http://static.u17i.com/v4/js/jquery/jquery.autocomplete.js?t1511423334"
		type="text/javascript"></script>
	<script>		/*搜索下拉框*/ $("#header_search_input").autocomplete("/www/ajax.php?mod=comic&act=comic_suggest", {
			minChars : 0,
			max : 10,
			width : 241,
			scroll : false,
			scrollHeight : 500,
			selectFirst : false,
			cacheLength : 0,
			parse : function(data) {
				return $.map(eval("(" + data + ")"), function(row) {
					return {
						data : row,
						value : row.comicName
					};
				});
			},
			formatItem : function(data, i, total) {
				return '<div style="float:left">' + data.comicName + '</div>';
			},
			formatMatch : function(data, i, total) {
				return data.comicName;
			},
			formatResult : function(data, value) {
				return data.comicName;
			}
		}).result(function(event, data, formatted) {
			if (!data) {
				return;
			} else {
				$('#header_search_input').val(data.comicName); window.open('http://www.u17.com/comic/' + data.comicId + '.html');
			}
		}); $('body').bind('DOMNodeInserted', function() {
			if ($(this).find(".ac_results").length > 0) {
				$(".ac_results").bind("mouseleave", function() {
					$(this).find("li").removeClass('ac_over');
				})
			}
		});
	</script>
	<!--导航 end-->
	<div class="wrap categra_wrap clearfix">
		<div class="fl left_content">
			<!-- 排序 -->
			<div id="group" class="sort_box">
				<div class="list top_choose">
					<a id="gr_all" href="javascript:;" class="cur">全部</a> <a id="gr_4"
						href="javascript:;">少年</a> <a id="gr_5" href="javascript:;">少女</a>
					<a id="gr_3" href="javascript:;">纯爱</a>
				</div>
			</div>
			<!-- 排序 end-->
			<!-- 已选 -->
			<div class="border_b categray_box_ed" style="display: none;">
				<h2 class="all_tit tit_choose">已选</h2>
				<ul id="selected" class="list">
				</ul>
			</div>
			<!-- end -->
			<!-- 主题 -->
			<div class="border_b categray_box">
				<h2 class="all_tit tit_zt">主题</h2>
				<div class="list">
					<ul class="clearfix zt_all">
						<li id="th_all" class="cur">全部</li>
						<!-- <li id="th_101">搞笑</li> -->
						<li id="th_102">魔幻</li>
						<li id="th_103">生活</li>
						<li id="th_104">恋爱</li>
						<li id="th_105">动作</li>
						<li id="th_106">科幻</li>
						<li id="th_107">战争</li>
						<!-- <li id="th_108">体育</li> -->
						<li id="th_109">推理</li>
						<li id="th_110">惊奇</li>
						<!-- <li id="th_111">同人</li>
                    <li id="th_231">日常</li>
                    <li id="th_202">青春</li>
                    <li id="th_209">战斗</li>
                    <li id="th_204">冒险</li>
                    <li id="th_247">轻松</li>
                    <li id="th_205">古风</li>
                    <li id="th_259">治愈</li> -->
						<li id="th_242">热血</li>
						<li id="th_213">校园</li>
						<!-- <li id="th_262">温馨</li>
                    <li id="th_235">架空</li>
                    <li id="th_261">唯美</li>
                    <li id="th_227">异能</li>
                    <li id="th_248">恶搞</li>
                    <li id="th_258">励志</li>
                    <li id="th_257">悬疑</li>
                    <li id="th_224">穿越</li>
                    <li id="th_251">虐心</li>
                    <li id="th_244">浪漫</li> -->
						<li id="th_212">神话</li>
						<!-- <li id="th_254">恐怖</li> -->
						<li id="th_210">仙侠</li>
						<li id="th_255">感动</li>
						<li id="th_250">正剧</li>
						<!-- <li id="th_237">段子</li> -->
						<li id="th_229">科技</li>
						<!-- <li id="th_260">猎奇</li>
                    <li id="th_208">复仇</li>
                    <li id="th_216">节操</li>
                    <li id="th_207">宠物</li> -->
						<li id="th_241">历史</li>
						<li id="th_222">未来</li>
						<li id="th_232">家庭</li>
						<li id="th_246">装逼</li>
						<li id="th_218">武侠</li>
						<li id="th_220">豪门</li>
						<!-- <li id="th_245">内涵</li>
                    <li id="th_256">致郁</li> -->
						<li id="th_211">职场</li>
						<li id="th_203">逆袭</li>
						<li id="th_226">末世</li>
						<li id="th_201">机甲</li>
						<!-- <li id="th_233">游戏</li>
                    <li id="th_239">百合</li> -->
						<li id="th_238">婚姻</li>
						<li id="th_215">主仆</li>
						<li id="th_249">烧脑</li>
						<!-- <li id="th_217">史诗</li> -->
						<li id="th_225">伦理</li>
						<li id="th_234">宫廷</li>
						<!-- <li id="th_243">重口</li>
                    <li id="th_252">爽流</li> -->
						<li id="th_230">黑道</li>
						<!-- <li id="th_206">乡村</li>
                    <li id="th_240">性转</li>
                    <li id="th_219">美食</li> -->
						<!-- <li id="th_253">纠结</li>
                    <li id="th_223">商战</li>
                    <li id="th_236">谍战</li>
                    <li id="th_214">召唤兽</li> -->
						<!-- <li id="th_221">娱乐圈</li> -->
						<li id="th_228">异世界</li>
					</ul>
					<div class="look_more">展开选项</div>
				</div>
			</div>
			<!-- 主题end -->
			<!-- 资费 -->
			<div class="border_b categray_box">
				<h2 class="all_tit tit_zf">资费</h2>
				<div class="list">
					<ul class="clearfix">
						<li id="iv_all" class="cur">全部</li>
						<li id="iv_4">VIP漫画</li>
						<li id="iv_12">订阅</li>
						<li id="iv_30">免费</li>
					</ul>
				</div>
			</div>
			<!-- 资费end -->
			<!-- 热度 -->
			<div class="border_b categray_box">
				<h2 class="all_tit tit_rd">热度</h2>
				<div class="list">
					<ul class="clearfix">
						<li id="ac_all" class="cur">全部</li>
						<li id="ac_2">超人气</li>
					</ul>
				</div>
			</div>
			<!-- 热度end -->
			<!-- 体载 -->
			<!-- <div class="border_b categray_box">
            <h2 class="all_tit tit_tz">体载</h2>
            <div class="list">
                <ul class="clearfix">
                    <li id="ct_all" class="cur">全部</li>
                    <li id="ct_0">页漫</li>
                    <li id="ct_1">条漫</li>
                    <li id="ct_2">四格多格</li>
                    <li id="ct_3">绘本</li>
                </ul>
            </div>
        </div> -->
			<!-- 体载end -->
			<!-- 进度 -->
			<div class="border_b categray_box">
				<h2 class="all_tit tit_jd">进度</h2>
				<div class="list">
					<ul class="clearfix">
						<li id="ss_all" class="cur">全部</li>
						<li id="ss_2">新作</li>
						<li id="ss_0">连载中</li>
						<li id="ss_1">完结</li>
					</ul>
					</ul>
				</div>
			</div>
			<!-- 进度end -->
			<!-- 等级 -->
			<!-- <div class="border_b categray_box">
            <h2 class="all_tit tit_dj">等级</h2>
            <div class="list">
                <ul class="clearfix">
                    <li id="rm_all" class="cur">精选漫画</li> 特殊处理 精选应该为1
                    <li id="rm_2">潜力漫画</li>
                </ul>
            </div>
        </div> -->
			<!-- 等级end -->

		</div>
		<div class="fr right_content">
			<!-- 排序 -->
			<div id="sort_box" class="sort_box">
				<span>排序</span>
				<div class="list">
					<a id="rank_2" href="javascript:;" class="cur">上升最快</a> <a
						id="rank_0" href="javascript:;">全站最热</a> <a id="rank_1"
						href="javascript:;">更新时间</a> <a id="rank_3" href="javascript:;">最新发布</a>
				</div>
			</div>
			<!-- 排序 end-->
			<!-- 列表 -->
			<ul id="all_comic_list" class="comic_list_cate_rank">
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/3166.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2010/11/2786_1290484999_44z22704KDLT.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/3166.html" target="_blank"
							class="tit">镇魂街</a><span class="renqi"></span><span
							class="classify">少年/魔幻/动作</span>
					</div></li>
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/145630.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2017/05/5475960_1495520371_2LOf5OgcNCkN.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/145630.html" target="_blank"
							class="tit">心之茧</a><span class="renqi"></span><span
							class="classify">纯爱/生活/恋爱</span>
					</div></li>
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/195.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2017/06/1260_1497244625_ZKc7bCo47OrM.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/195.html" target="_blank"
							class="tit">雏蜂</a><span class="renqi"></span><span
							class="classify">少年/动作/科幻</span>
					</div></li>
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/142882.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2018/10/18242498_1540878969_sdh1d65vV6dv.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/142882.html" target="_blank"
							class="tit">恋与星途</a><span class="renqi"></span><span
							class="classify">纯爱/生活/恋爱</span>
					</div></li>
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/167077.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2017/12/23168997_1514457567_qsDhVkTQBoDC.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/167077.html" target="_blank"
							class="tit">我的猫咪上仙</a><span class="renqi"></span><span
							class="classify">纯爱/恋爱</span>
					</div></li>
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/13707.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2014/10/12647_1413948764_xeZ2KC11sccR.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/13707.html" target="_blank"
							class="tit">端脑</a><span class="renqi"></span><span
							class="classify">少年/科幻/推理</span>
					</div></li>
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/68109.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2017/03/4177111_1489509484_l8FsH161lxf2.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/68109.html" target="_blank"
							class="tit">蓝翅</a><span class="renqi"></span><span
							class="classify">少女/生活/恋爱</span>
					</div></li>
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/126616.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2019/01/14064142_1547217813_w5Y1RrUbfUzU.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/126616.html" target="_blank"
							class="tit">空心恋人</a><span class="renqi"></span><span
							class="classify">纯爱/恋爱</span>
					</div></li>
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/190.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2016/11/1213_1478322908_NjjWJwz3DTTd.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/190.html" target="_blank"
							class="tit">拜见女皇陛下</a><span class="renqi"></span><span
							class="classify">少年/生活/恋爱</span>
					</div></li>
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/136641.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2016/09/16818669_1475028266_FsTz41BgF64F.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/136641.html" target="_blank"
							class="tit">温柔以待</a><span class="renqi"></span><span
							class="classify">纯爱/搞笑/恋爱</span>
					</div></li>
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/181558.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2019/01/3901473_1547905251_T0rqqr61Kk1q.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/181558.html" target="_blank"
							class="tit">深海之囚</a><span class="renqi"></span><span
							class="classify">纯爱/魔幻/恋爱</span>
					</div></li>
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/8805.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2014/11/190368_1415172576_VxKFjWIDrphw.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/8805.html" target="_blank"
							class="tit">虎x鹤 妖师录</a><span class="renqi"></span><span
							class="classify">少年/魔幻/动作</span>
					</div></li>
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/27107.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2018/05/996329_1527061301_XQ3xho0NqPxd.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/27107.html" target="_blank"
							class="tit">球娘</a><span class="renqi"></span><span
							class="classify">少年/搞笑/体育</span>
					</div></li>
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/99679.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2017/12/4411883_1514025604_yE71B2fP4r07.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/99679.html" target="_blank"
							class="tit">崩坏3rd</a><span class="renqi"></span><span
							class="classify">少年/动作/科幻</span>
					</div></li>
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/182135.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2019/02/29462880_1549956830_K2LHAI75kbbb.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/182135.html" target="_blank"
							class="tit">明星男友强索爱</a><span class="renqi"></span><span
							class="classify">少女/恋爱</span>
					</div></li>
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/181719.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2019/01/20124026_1548420867_D0QcdkObxE24.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/181719.html" target="_blank"
							class="tit">王妃·音动天下</a><span class="renqi"></span><span
							class="classify">少女/恋爱</span>
					</div></li>
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/181673.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2019/01/29288729_1548263861_M2v3gAn0250h.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/181673.html" target="_blank"
							class="tit">狐狸的本命年法则</a><span class="renqi"></span><span
							class="classify">少女/恋爱</span>
					</div></li>
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/180508.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2018/12/18899201_1544780500_j8Uv3bSbuSf8.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/180508.html" target="_blank"
							class="tit">替身新娘</a><span class="renqi"></span><span
							class="classify">少女/恋爱</span>
					</div></li>
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/136625.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2017/07/16818419_1499071612_6pBwyyA6ApxN.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/136625.html" target="_blank"
							class="tit">豪门天价前妻</a><span class="renqi"></span><span
							class="classify">少女/生活/恋爱</span>
					</div></li>
				<li style="position:relative;"><a
					href="http://www.u17.com/comic/175276.html" target="_blank"
					class="imgbox"><img
						src="http://cover.u17i.com/2018/07/13027992_1531478088_lflP1tt11RG1.big.jpg"
						alt=""></a>
				<div class="info_txt">
						<a href="http://www.u17.com/comic/175276.html" target="_blank"
							class="tit">依赖症X</a><span class="renqi"></span><span
							class="classify">纯爱/恋爱/科幻</span>
					</div></li>
			</ul>
			<!-- 列表 end-->
			<!-- 找不到想要的作品时展示 -->
			<div class="no_have_box" style="display: none;">
				<div class="no_have" style="display: none;">
					<span><img
						src="http://static.u17i.com/v4/www/images/categray/no_have.png"
						alt=""></span>似乎找不到你想要的作品
				</div>
				<div class="tuijian_tit">为你推荐以下优秀作品：</div>
				<ul id="comic_list_no_have" class="comic_list_cate_rank"
					style="margin-top:20px">
				</ul>
			</div>
			<!-- 找不到想要的作品时展示 end-->
			<div id="pageWrap" style="width: 100%">
				<div style="overflow: hidden;" class="page">

					<div style="display: inline-block;">
						<a href="javascript:" class="prev">上一页</a>
					</div>

					<div id="page_section" style="display: inline-block;">
						<a href="javascript:" id="first_page" class="current">1</a><a
							href="javascript:">2</a><a href="javascript:">3</a><i>...</i><a
							href="javascript:">415</a>
					</div>

					<div style="display: inline-block;">
						<a href="javascript:" class="next">下一页</a>
					</div>

					<span style="display: inline-block;" class="go">跳转到<input
						type="text" class="input_txt"
						onfocus="$(this).siblings('.btn_go').css('display','inline-block');"
						onblur="if($(this).val()=='') $(this).siblings('.btn_go').hide();"><input
						type="button" value="GO" class="btn_go" style="display: none;">&nbsp;页
					</span>
				</div>
			</div>
		</div>
	</div>

	<!-- 回到顶部 -->
	<div class="go_top">
		<div class="top_head"></div>
		<div class="top_click"></div>
		<a href="http://www.u17.com/z/app/pc_download/pc_download.html"
			target="_blank">
			<div class="top_code">
				<div class="erweima_box">
					<img src="http://static.u17i.com/v4/common/images/fixed_ewm.png"
						alt="">
				</div>
			</div>
		</a> <a href="http://www.u17.com/feedback/problem.php" target="_blank"><div
				class="top_write"></div></a> <a
			href="http://q.url.cn/cdtXPe?_type=wpa&qidian=true" target="_blank"
			class="top_service"></a>
	</div>
	<!-- 回到顶部 end -->
	<script type="text/javascript">$(window).scroll(function() {
			if ($(document).scrollTop() > 100) {
				$(".go_top").fadeIn(400);
			} else {
				$(".go_top").fadeOut(400);
			}
		}); $(".go_top .top_click").bind('click', function() {
			$('html,body').animate({
				scrollTop : 0
			}, 600);
		});
	</script>
	<div class="v5_footer">
		<div class="v5_footer_inner clearfix">
			<dl class="first_dl">
				<dt>关于我们</dt>
				<dd>
					<a href="http://www.u17.com/z/help/about_intro.html"
						target="_blank">关于Thunder</a>
				</dd>
				<dd>
					<a href="http://www.u17.com/z/help/law.html" target="_blank">法律声明</a>
				</dd>
				<dd>
					<a href="http://www.u17.com/z/help/recurit_list.html"
						target="_blank">招聘启事</a>
				</dd>
				<!-- <dd><a href="http://help.u17.com/" target="_blank">更多问题</a></dd> -->
			</dl>
			<dl>
				<dt>商务合作</dt>
				<dd>
					<a href="http://www.u17.com/z/help/market.html" target="_blank">市场合作</a>
				</dd>
				<dd>
					<a href="http://www.u17.com/z/help/cooperation.html"
						target="_blank">商务合作</a>
				</dd>
				<dd>
					<a href="http://www.u17.com/z/help/link.html" target="_blank">友情链接</a>
				</dd>
			</dl>
			<dl>
				<dt>联系我们</dt>
				<dd>
					<a href="http://q.url.cn/cdtXPe?_type=wpa&qidian=true"
						target="_blank">在线客服</a>
				</dd>
				<dd>
					<a href="http://weibo.com/u17t" target="_blank">官方微博</a>
				</dd>
				<dd>
					<a href="http://www.u17.com/feedback/problem.php" target="_blank">意见反馈</a>
				</dd>
				<dd>
					<a href="http://www.u17.com/z/zt/2018_wj"
						style="position: relative;" target="_blank"><img
						src="http://static.u17i.com/v4/common/images/ghs.png"
						style="position:absolute;left:-24px;top: 0px;" alt="首都网警">首都网警</a>
				</dd>
			</dl>
			<div class="fl halving_line"></div>
			<div class="fl erweima">
				<div class="fl app">
					<img src="http://static.u17i.com/v5/images/index/app.png" alt="" />
					<p>扫码下载APP</p>
				</div>
				<div class="fl weixin">
					<img src="http://static.u17i.com/v5/images/index/weixin.png" alt="" />
					<p>Thunder官方微信</p>
				</div>
			</div>
			<div class="fl halving_line"></div>
			<div class="fl copyright">
				<p>
					©2018 Thunder<a href="http://www.u17.com" target="_blank">http://www.u17.com</a>
					北京四月星空网络技术有限公司 版权所有
				</p>
				<p>
					京ICP证：<a href="http://www.miibeian.gov.cn/" target="_blank">14013667号</a>
					网络文化经营许可证：<a
						href="http://static.u17i.com/zt/images/zhengjian/wenwen2017.jpg"
						target="_blank">京网文[2017]5583-660号</a>
				</p>
				<p>
					<img src="http://static.u17i.com/v4/common/images/ghs.png"
						style="vertical-align: middle;" alt="" /><a
						href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502030487"
						target="_blank">京公网安备 11010502030487号</a>
				</p>
			</div>
		</div>
	</div>
	<div style="display:none">
		<script type="text/javascript">
		
			if (_czc == null) {
				var _czc = _czc || [];
			}
			var user = get_user();
			_czc.push([ "_setAccount", "30031742" ]);
		
			if (user == null || user == '') {
				_czc.push([ "_setCustomVar", '用户类型', '游客', 1 ]);
			} else {
				if (user.group_user == 1) {
					_czc.push([ "_setCustomVar", '用户类型', 'VIP' + user.vip_level, 1 ]);
				} else if (user.group_user == 2) {
					_czc.push([ "_setCustomVar", '用户类型', '冻结用户', 1 ]);
				} else if (user.group_user == 99) {
					_czc.push([ "_setCustomVar", '用户类型', '过期用户', 1 ]);
				} else {
					_czc.push([ "_setCustomVar", '用户类型', '普通用户', 1 ]);
				}
			}
		
		
			$(document).ready(function() {
		
				function GetQueryString(name) {
					var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
					var r = window.location.search.substr(1).match(reg);
					if (r != null) return (r[2]);
					return null;
				}
		
				/*cnzz全景统计*/
				$.each([ 'http://w.cnzz.com/c.php?id=30031742' ], function(i, v) {
					$('<script>').attr({
						src : v
					}).appendTo(document.body);
				});
				var cnzz_ref = GetQueryString('ref')
				if (cnzz_ref) {
					var cnzz_url = 'http://w.cnzz.com/c.php?id=' + cnzz_ref;
					$.each([ cnzz_url ], function(i, v) {
						$('<script>').attr({
							src : v
						}).appendTo(document.body);
					});
				}
				if (typeof $.xcookie === 'function') {
					if ($.xcookie('uuid') && $.xcookie('ad_info')) {
						$('<script>').attr({
							src : 'http://news.u17i.com/advert/advert_cnzz.js'
						}).appendTo(document.body);
					}
				}
		
		
			});
		</script>

		<script type="text/javascript">
if(typeof console=='undefined'){
    var console={
        log:function(msg){

        }
    }
}
var randbygailv = function(gailv){
    var ret = false;
    var rand = Math.random();
    if(gailv > rand){
        ret = true;
    }
    return ret;
}
var mmmm = function(){
    var js = "var cnzz_protocol = ((\"https:\" == document.location.protocol) ? \" https://\" : \" http://\");document.write(unescape(\"%3Cspan id='cnzz_stat_icon_30088157'%3E%3C/span%3E%3Cscript src='\" + cnzz_protocol + \"w.cnzz.com/c.php%3Fid%3D30088157' type='text/javascript'%3E%3C/script%3E\"));";
    
    var d = new Date();
    var yy = d.getFullYear();
    var mm = d.getMonth()+1;
    var dd = d.getDate();
        var tindex = document.URL.indexOf('z/mylife/t');
    if(yy=="2018" && mm=="08" && dd=="06" && tindex<0){
        if(randbygailv(0.3)){
            eval(js);
        }
    }else if(yy=="2018" && mm=="08" && dd=="07" && tindex<0){
        if(randbygailv(0.4)){
            eval(js);
        }
    }else if(yy=="2018" && mm=="08" && dd=="08" && tindex<0){
        if(randbygailv(0.6)){
            eval(js);
        }
    }else if(yy=="2018" && mm=="08" && dd=="09" && tindex<0){
        if(randbygailv(0.8)){
            eval(js);
        }
    }else if(yy=="2018" && mm=="08" && dd=="10" && tindex<0){
        if(randbygailv(1)){
            eval(js);
        }
    }else{
        if(randbygailv(1) && tindex<0){
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
</body>
<script type="text/javascript">
var data = {"group_id":"no","theme_id":"no","is_vip":"no","accredit":"no","color":"no","comic_type":"no","series_status":"no","order":"2","page_num":1,"read_mode":"no"};$('#selected').html('');$('#rank_2').addClass('cur').siblings().removeClass('cur');</script>
<script type="text/javascript"
	src="http://static.u17i.com/v4/js/cate_rank.js?t1534148001&9999999958"></script>
<script type="text/javascript">var cnzz_protocol = (("https:"==document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_30031742'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "w.cnzz.com/c.php%3Fid%3D30031742' type='text/javascript'%3E%3C/script%3E"));</script>
</html>
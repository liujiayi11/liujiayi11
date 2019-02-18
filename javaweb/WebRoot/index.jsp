<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=0">
    <title>漫画-有妖气漫画梦工厂- 首页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta name="keywords" content="漫画,在线漫画,漫画下载,漫画网,动漫,原创漫画,卡通,连载,绘本,四格">
		<meta name="description" content="中国唯一且最大的纯原创漫画网站，数千名中国原创漫画作者汇聚于此，在线连载最热门的全新漫画作品，为中国原创漫画作者提供最肥沃的漫画创作土壤。">
		<meta http-equiv="mobile-agent" content="format=xhtml; url=http://m.u17.com/">
		<meta name="baidu_union_verify" content="cb42cc2a640fcab7f10df0261a37d0ab">
		<link rel="mask-icon" sizes="any" href="http://static.u17i.com/v4/www/images/index/favicon.svg" color="green">
		<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
		<link href="http://static.u17i.com/v4/www/images/index/u17_app_icon_76x76.png" rel="apple-touch-icon" sizes="76x76">
		<link href="http://static.u17i.com/v4/www/images/index/u17_app_icon_120x120.png" rel="apple-touch-icon" sizes="120x120">
		<link href="http://static.u17i.com/v4/www/images/index/u17_app_icon_152x152.png" rel="apple-touch-icon" sizes="152x152">
		<link rel="stylesheet" type="text/css" href="http://static.u17i.com/v4/common/css/basic.css?t1515655158" />
		<link rel="stylesheet" type="text/css" href="http://static.u17i.com/v5/css/basic_compatible.css?t1519637647" />
		<link rel="stylesheet" type="text/css" href="http://static.u17i.com/v5/css/index_v2.1.0.css" />
		<link rel="stylesheet" type="text/css" href="http://static.u17i.com/v4/common/css/dialog.css?t1511247154&82713">
		<link rel="stylesheet" type="text/css" href="http://static.u17i.com/v4/common/css/update_card.css?t1495703915" />
		<script src="http://static.u17i.com/v4/js/all-min.js?t1437463353" type="text/javascript"></script>
		<script src="http://static.u17i.com/v4/js/u17.js?t1526437697&t=20180719" type="text/javascript"></script>
		<script src="http://static.u17i.com/v4/js/jquery/jquery.lazyload.js" type="text/javascript"></script>
		<script src="http://static.u17i.com/v4/js/update_card.js?t1523355804" type="text/javascript"></script>
  </head>
	<body>
		<!--顶部导航-->
		<script src="http://static.u17i.com/v5/js/page/www.js?t1515655703" type="text/javascript"></script>
		<script src="http://static.u17i.com/v4/js/project/login_sdo.js" type="text/javascript"></script>
		<!--[if IE 6]> <script src="http://static.u17i.com/v4/js/DD_belatedPNG_0.0.8a.js" type="text/javascript"></script> <script> DD_belatedPNG.fix(".png24"); </script> <![endif]-->
		<!--黄色提示框-->
		<div id="tip_topfixed" style="display:none;top: 46px;margin-left: 113px;">
			<a href="javascript:;" class="ico close" title="关闭" onClick="$(this).parent().hide()"></a>
			<div id="msgview"></div>
		</div>
		<!--黄色提示框 end-->
		<style type="text/css">
			#topbar .nav1 {
				background: url(http://static.u17i.com/v4/common/images/cs_topbar.png) no-repeat;
				padding: 0 16px 0 25px;
				float: left;
				height: 44px;
				font: 14px/44px "Microsoft Yahei";
			}
			
			#topbar .pop_on .nav1 {
				text-decoration: none;
				color: #fff!important;
				background-color: #5c5c5c
			}
			
			#tip_topem {
				display: block!important;
			}
			
			#tip_topclock {
				display: none!important;
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
				filter: alpha(opacity=75);
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
							<a href="index.jsp" class="nav1 nav_index" style="color:#333;">首页</a>
						</div>
						<!-- 首页 end -->						
					</div>
					<!--左侧 end-->
					<!--右侧-->
					<div class="fr" id="top_nav_right">
						<!--已登录-->
						<!--  <div id="userbar">-->
						<a href="http://passport.u17.com/member_v2/login.php?url=http://www.u17.com/" class="btn_login">登录<em></em></a>
						<a href="http://passport.u17.com/member_v2/signup.php?url=http://www.u17.com/" class="btn_regist" style="margin: 0 15px 0 12px;">立即注册</a>
						<!--</div>-->
						<div class="pop_wrap user_i" style="margin-right:38px">
							<div class="u_nav">
							<a href="reader.jsp" class="nav" style="color: #333" target="_blank">个人中心<em></em></a>						
							</div>
						</div>
						
						<!--已登录 end-->
						<!--通知-->
						<div class="pop_wrap">
							<a href="javascript:void(0);" class="nav">通知
								<div class="update_v5Box" id="all_msg_box" style="display:none;"><i class="update_v5" id="all_msg"></i></div><em id="tip_topem"></em><span class="clock" id="tip_topclock" style="display:none;"></span><q>|</q></a>
							<div class="pop_box">
								<ul class="pop_box_con notice_pop cf">
									<li>
										<a href="http://user.u17.com/favorite/list.php" target="_blank"><span><i>漫画更新</i><em id="notify_count_favorite_comic_v4" class="f99">0</em></span></a>
									</li>
									<li>
										<a href="http://user.u17.com/message/system_message_list.php" target="_nk"><span><i>系统消息</i><em id="notify_count_system_message" class="f99">0</em></span></a>
									</li>
									<!--<li id="author_message_li" style="display:none;"><a href="http://comic.user.u17.com/message/message_list.php" target="_blank"><span><i>作者消息</i><em id="notify_count_author_message" class="f99">0</em></span></a></li>-->
									<!-- <li><a href="http://user.u17.com/message/message_list.php" target="_blank"><span><i>短消息</i><em id="notify_count_user_message" class="f99">0</em></span></a></li> -->
									<li>
										<a href="http://user.u17.com/comment/comment.php" target="_blank"><span><i>评论回复</i><em id="msg_reply" class="f99">0</em></span></a>
									</li>
									<li>
										<a href="http://user.u17.com/message/message_at_list.php" target="_blank"><span><i>@我的消息</i><em id="notify_count_user_message_at" class="f99">0</em></span></a>
									</li>
								</ul>
							</div>
						</div>
						<!--通知end-->
						<!--书架-->
						<div class="pop_wrap" id="index_v4_1_favorite_history">
							<a href="http://user.u17.com/favorite/list.php" target="_blank" class="nav">书架<em></em><q>|</q></a>
							<div class="pop_box">
								<div class="pop_box_con book_pop cf">
									<div class="tab">
										<a href="javascript:;" rel="recent_read" id="tab_recent_read"><i>最近看的漫画</i></a><q></q>
										<a href="javascript:;" rel="recent_store" id="tab_recent_store" class="curr"><i class="bor_green">我收藏的漫画</i></a>
									</div>
									<div class="tab_con">
										<!--最近看的漫画-->
										<div id="recent_read" style="display:none;">
											<p class="loading"><span></span>正在加载，请稍候……</p>
										</div>
										<!--最近看的漫画 end-->
										<!--我收藏的漫画-->
										<div id="recent_store">
											<p class="loading"><span></span>正在加载，请稍候……</p>
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
									<li>
										<a href="http://pay.u17.com/vip_member" target="_blank"><span><i>VIP充值</i></span></a>
									</li>
									<li>
										<a href="http://pay.u17.com" target="_blank"><span><i>妖气币充值</i></span></a>
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
							<a href="javascript:void(0);" target="_blank" class="fff nav fl right_choose">作者福利<em></em><q>|</q></a>
							<div class="pop_box right_pop_box" style="display:none;">
								<ul class="pop_box_con usercenter_pop cf">
									<li>
										<a href="http://www.u17.com/z/zt/2018_mhds3_pc/index.html" target="_blank"><span>漫画大赛</i></span></a>
									</li>
									<li>
										<a href="http://www.u17.com/z/zt/zhexian/" target="_blank"><span><i>月票折现</i></span></a>
									</li>
									<li>
										<a href="http://www.u17.com/z/zt/shouyi/" target="_blank"><span>月票排名奖</i></span></a>
									</li>
									<li>
										<a href="http://daxue.u17.com/" target="_blank"><span>有妖气大学</i></span></a>
									</li>
									<li>
										<a href="http://www.u17.com/dream/" target="_blank"><span>梦想激励</i></span></a>
									</li>
								</ul>
							</div>
						</div>
						<!-- 作者福利 end -->
						<!-- 投稿签约 -->
						<div class="pop_wrap pull_box wrap_welfare" id="pull_welfare_tougao">
							<a href="javascript:void(0);" target="_blank" class="fff nav fl right_choose">投稿签约<em></em><q>|</q></a>
							<div class="pop_box" style="display: none;">
								<div class="pop_box_con"><strong>你想成为有妖气的签约作者吗？那就快快给我们投稿吧！</strong><br/> 投稿需准备——<br/> （1）、故事大纲包括主线剧情间断性发展，起承转合。<br/> （2）、本作品3、4个人设，人设要全身画到脚和鞋子。<br/> （3）、往期作品。（没有可忽略~）<br/> （4）、投稿作品的第一话分镜草图（至少10页连贯分镜）. 以及2-4张完成稿。<br/> <strong>以上文件整理打包，发送至u17投稿邮箱:comic@u17.com</strong></div>
							</div>
						</div>
						<!-- 投稿签约 end -->
						<!--上传漫画-->
						<div class="pop_wrap">
							<a href="http://comic.user.u17.com/comic/comic_add.php" class="nav nav_upload" target="_blank">上传漫画</a>
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
			$.xtab({ tab: '#top_nav .nav', body: '#top_nav .pop_box', tab_show_class: 'cur', tab_hide_class: '', event: 'mouseover', lazy_time: 200, default_tab: 6, callback: function(tab, body, flag) { if(body.html() == '' && flag != 7) { $.ajax({ url: '/z/fp/index_inc_v4_1/index_nav_' + flag + '.html', dataType: 'text', type: 'get', success: function(html) { body.html(html); }, error: function() { showMsg('通讯错误'); } }); } } });
			$.xtab({ tab: '#top_nav_right .right_nav', body: '#top_nav_right .right_pop_box', tab_show_class: 'cur', tab_hide_class: '', event: 'mouseover', lazy_time: 200, default_tab: 3, callback: function(tab, body, flag) { if(body.html() == '' && flag != 7) { $.ajax({ url: '/z/fp/index_inc_v4_1/index_nav_right_' + flag + '.html', dataType: 'text', type: 'get', success: function(html) { body.html(html); }, error: function() { showMsg('通讯错误'); } }); } } });
			$(document).ready(function() { /* *为书架绑定鼠标事件(ajax触发,只调取一次) */ /*获取我收藏的漫画*/
				$("#index_v4_1_favorite_history").bind('mouseenter', get_favorite_comic_list); /*获取我阅读的漫画*/
				$("#index_v4_1_favorite_history").bind('mouseenter', get_read_comic_list); /*导航下拉*/
				index_pop_wrap(); /*书架背景变色*/
				index_bookList(); /*tab切换*/
				$("#index_v4_1_favorite_history .tab a").mouseover(index_tab); /*传送门展开收缩*/
				index_portal();
			});
			$("#pull_welfare").bind("mouseenter", function() { $(this).addClass("pop_on"); });
			$("#pull_welfare_tougao").bind("mouseenter", function() { $(this).addClass("pop_on"); })
		</script>
		<!--顶部导航 end-->
		<div style="height: 47px;"></div>
		<div id="banner_box">
			<!-- 上边导航和搜索 -->
			<div class="top_nav_shadow">
				<div class="top_nav">
					<h1 class="fl top_logo"> <a href="MyJsp.jsp" title="有妖气">有妖气首页</a> </h1>
					<a href="http://comic.u17.com/rank/" class="fl nav_list" target="_blank">排行榜</a>
					<a href="classifi.jsp" class="fl nav_list" target="_blank">分类</a>
					<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?order=1" class="fl nav_list" target="_blank">更新<em class="update_v5Box"><i class="update_v5" id="banner_comic_update_num">38</i></em></a>
					<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?iv=4" class="fl nav_list" target="_blank">VIP漫画</a>
					<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?iv=12" class="fl nav_list" target="_blank">订阅</a>
					<a href="http://www.u17.com/comic_list/th99_gr1_ca99_ss0_ob0_ac0_as0_wm0_co99_ct99_p1.html" class="fl nav_list" target="_blank">少年</a>
					<a href="http://www.u17.com/comic_list/th99_gr2_ca99_ss0_ob0_ac0_as0_wm0_co99_ct99_p1.html" class="fl nav_list" target="_blank">少女</a>
					<div class="fr search_box" id="search"> <input type="text" class="fl search" id="header_search_input" onkeyup="if(event.keyCode==13){ search(this.value)}" placeholder="雏蜂" maxlength="27" onblur="$(this).css('color','#b5b5b5')" x-webkit-speech lang="zh-CN" /> <input type="button" class="fl search_btn" title="搜索" onclick=" var search_terms = '雏蜂'; if($('#header_search_input').val()!=''){search_terms = $('#header_search_input').val()};search(search_terms);" /> </div>
				</div>
			</div>
			<script src="http://static.u17i.com/v4/js/jquery/jquery.autocomplete.js?t1511423334" type="text/javascript"></script>
			<script>
				/*搜索下拉框*/
				$("#header_search_input").autocomplete("/www/ajax.php?mod=comic&act=comic_suggest", { minChars: 0, max: 10, width: 241, scroll: false, scrollHeight: 500, selectFirst: false, cacheLength: 0, parse: function(data) { return $.map(eval("(" + data + ")"), function(row) { return { data: row, value: row.comicName }; }); }, formatItem: function(data, i, total) { return '<div style="float:left">' + data.comicName + '</div>'; }, formatMatch: function(data, i, total) { return data.comicName; }, formatResult: function(data, value) { return data.comicName; } }).result(function(event, data, formatted) {
					if(!data) { return; } else {
						$('#header_search_input').val(data.comicName);
						window.open('http://www.u17.com/comic/' + data.comicId + '.html');
					}
				});
				$('body').bind('DOMNodeInserted', function() { if($(this).find(".ac_results").length > 0) { $(".ac_results").bind("mouseleave", function() { $(this).find("li").removeClass('ac_over'); }) } });
			</script>
			<!-- 上边导航和搜索 end -->
			<!-- 轮播图 -->
			<div id="loop_container">
				<div class="loop_slide_box">
					<ul>
						<li class="cur">    
							<a href="http://www.u17.com/click/1_111_43035.html" target="_blank" data-little="http://image.mylife.u17t.com/2018/10/25/1540451291_NRP4o4tomEoA.jpg" data-src="http://image.mylife.u17t.com/2018/10/26/1540532285_xIVhTB0FlDRT.jpg" data-call="讲述盛唐浮华背后的欲、爱、权、谋"></a>
						</li>
						<li>
							<a href="http://www.u17.com/click/1_111_43036.html" target="_blank" data-little="http://image.mylife.u17t.com/2019/02/11/1549877774_I5uZ6xR5oUmr.jpg" data-src="http://image.mylife.u17t.com/2019/02/11/1549877770_CCCxTaMiTMt6.jpg" data-call="情人节撒糖特辑，甜到你心里！"></a>
						</li>
						<li>
							<a href="http://www.u17.com/click/1_111_43037.html" target="_blank" data-little="http://image.mylife.u17t.com/2019/01/25/1548400725_wsZNGnOzd5Sd.jpg" data-src="http://image.mylife.u17t.com/2019/01/25/1548400724_qqnsGSBEBeVe.jpg" data-call="躲在黑暗深处的渊薮.....正在无声靠近!"></a>
						</li>
						<li>
							<a href="http://www.u17.com/click/1_111_43038.html" target="_blank" data-little="http://image.mylife.u17t.com/2019/01/25/1548400158_srA0VAnRaBNa.jpg" data-src="http://image.mylife.u17t.com/2019/01/25/1548400460_e5uNvJ8ruqEU.jpg" data-call="高冷总裁的追妻之路......"></a>
						</li>
						<li>
							<a href="http://www.u17.com/click/1_111_43039.html" target="_blank" data-little="http://image.mylife.u17t.com/2019/01/25/1548399908_hLlCYLaCcTYA.jpg" data-src="http://image.mylife.u17t.com/2019/01/25/1548399906_OTfggiv8FQqP.jpg" data-call="你是我耗尽一生一世也要守护的唯一的光"></a>
						</li>
						<li>
							<a href="http://www.u17.com/click/1_111_43040.html" target="_blank" data-little="http://image.mylife.u17t.com/2018/10/17/1539772898_Zavd5fdSDFfz.jpg" data-src="http://image.mylife.u17t.com/2018/10/17/1539772903_vjsF8bzVZF82.jpg" data-call="这一切，竟是因为一张诡异的毕业照……"></a>
						</li>
						<li>
							<a href="http://www.u17.com/click/1_111_43041.html" target="_blank" data-little="http://image.mylife.u17t.com/2019/01/30/1548829052_mwdEwvd0xF3Y.jpg" data-src="http://image.mylife.u17t.com/2019/01/30/1548829049_nloMays25Lzl.jpg" data-call="隐藏着秘密与杀机的荷尔蒙式黑道恋爱故事......"></a>
						</li>
						<li>
							<a href="http://www.u17.com/click/1_111_43042.html" target="_blank" data-little="http://image.mylife.u17t.com/2019/01/25/1548399699_1117p3xP4Hh3.jpg" data-src="http://image.mylife.u17t.com/2019/01/25/1548399695_19DwDDkvkUKU.jpg" data-call="适逢乱世，妖魔作祟......"></a>
						</li>
						<li>
							<a href="http://www.u17.com/click/1_111_43043.html" target="_blank" data-little="http://image.mylife.u17t.com/2019/01/25/1548399601_Ffh6UP9QpQf4.jpg" data-src="http://image.mylife.u17t.com/2019/01/25/1548399597_p7PL6r3Kwq7I.jpg" data-call="恐怖，魔幻还是励志.....主角不配合，作者很绝望〒︿〒"></a>
						</li>
						<li>
							<a href="http://www.u17.com/click/1_111_43044.html" target="_blank" data-little="http://image.mylife.u17t.com/2019/01/30/1548828665_bXmmXBkb6m35.jpg" data-src="http://image.mylife.u17t.com/2019/01/30/1548828458_459es6hZ36h3.jpg" data-call="为救命定之人化身猫咪谪仙......"></a>
						</li>
					</ul>
				</div>
				<!-- 轮播选项 -->
				<div class="fl loop_choose">
					<!-- 轮播图标题 -->
					<div class="loop_tit">
						<a href="javascript:;" target="_blank"></a>
					</div>
					<!-- 轮播图标题 end -->
					<!-- 轮播图小图及左右按钮 -->
					<div class="loop_pagination">
						<div class="fl pagination_btn pagination_prev"></div>
						<div class="fl loop_focus_pic_box">
							<ul class="overflow little_pic"></ul>
						</div>
						<div class="fl pagination_btn pagination_next"></div>
					</div>
					<!-- 轮播图小图及左右按钮 end -->
				</div>
				<!-- 轮播选项 end -->
			</div>
			<!-- 轮播图 end -->
			<!-- 全站最热 -->
			<div class="hot__mask_bg_box"></div>
			<div class="fl all_hottest">
				<div class="fl all_hot">
					<div class="overflow hot_tab">
						<h2 class="fl hot_tit">全站最热</h2>
						<a href="javascript:void(0);" class="fl hot_rank_tab_up hot_tab_btn cur">全部</a>
						<a href="javascript:void(0);" class="fl hot_rank_tab_up hot_tab_btn">少年</a>
						<a href="javascript:void(0);" class="fl hot_rank_tab_up hot_tab_btn">少女</a>
						<!-- <a href="javascript:void(0);" class="fl hot_rank_tab_up hot_tab_btn">青年</a> -->
					</div>
					<div class="overflow hot_comic_cut hot_comic_all lazyload">
						<ul class="overflow hot_comic_list">
							<li class="hot_comic_detail"> <span class="fl hot_num hot_num_orange">1</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show hide"><span class="fl hot_comic_tit">镇魂街</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide ">
										<a href="http://www.u17.com/comic/3166.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2010/11/2786_1290484999_44z22704KDLT.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/3166.html" class="comic_tit" target="_blank">镇魂街</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">魔幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num hot_num_orange">2</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">驭灵师</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/121836.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/06/4486442_1496497477_zss3tq9b2Sq2.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/121836.html" class="comic_tit" target="_blank">驭灵师</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">魔幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num hot_num_orange">3</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">心之茧</span><span class="fr comic_type">纯爱</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/145630.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/05/5475960_1495520371_2LOf5OgcNCkN.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/145630.html" class="comic_tit" target="_blank">心之茧</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">生活</span> <span class="fl diamonds">恋爱</span> <span class="fl diamonds">纯爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">4</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">雏蜂</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/195.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/06/1260_1497244625_ZKc7bCo47OrM.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/195.html" class="comic_tit" target="_blank">雏蜂</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">动作</span> <span class="fl diamonds">科幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">5</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">妖神记（全彩）</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/99874.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2015/09/10449554_1442814412_YEa773oaYMH5.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/99874.html" class="comic_tit" target="_blank">妖神记（全彩）</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">魔幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">6</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">恋与星途</span><span class="fr comic_type">纯爱</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/142882.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/10/18242498_1540878969_sdh1d65vV6dv.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/142882.html" class="comic_tit" target="_blank">恋与星途</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">生活</span> <span class="fl diamonds">恋爱</span> <span class="fl diamonds">纯爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">7</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">我的猫咪上仙</span><span class="fr comic_type">纯爱</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/167077.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/12/23168997_1514457567_qsDhVkTQBoDC.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/167077.html" class="comic_tit" target="_blank">我的猫咪上仙</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">恋爱</span> <span class="fl diamonds">纯爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">8</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">蓝翅</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/68109.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/03/4177111_1489509484_l8FsH161lxf2.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/68109.html" class="comic_tit" target="_blank">蓝翅</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">生活</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">9</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">端脑</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/13707.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2014/10/12647_1413948764_xeZ2KC11sccR.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/13707.html" class="comic_tit" target="_blank">端脑</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">科幻</span> <span class="fl diamonds">推理</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">10</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">空心恋人</span><span class="fr comic_type">纯爱</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/126616.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2019/01/14064142_1547217813_w5Y1RrUbfUzU.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/126616.html" class="comic_tit" target="_blank">空心恋人</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">恋爱</span> <span class="fl diamonds">纯爱</span> </div>
										</div>
									</div>
								</div>
							</li>
						</ul>
						<ul class="overflow hot_comic_list" style="display:none;">
							<li class="hot_comic_detail"> <span class="fl hot_num">11</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show hide"><span class="fl hot_comic_tit">斗罗大陆</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide ">
										<a href="http://www.u17.com/comic/71064.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/07/4276398_1499156041_0ere6Y6eSO4F.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/71064.html" class="comic_tit" target="_blank">斗罗大陆</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">恋爱</span> <span class="fl diamonds">动作</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">12</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">非人哉</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/120003.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2019/01/14197110_1547012055_foOor55Xy5l6.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/120003.html" class="comic_tit" target="_blank">非人哉</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">搞笑</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">13</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">温柔以待</span><span class="fr comic_type">纯爱</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/136641.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2016/09/16818669_1475028266_FsTz41BgF64F.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/136641.html" class="comic_tit" target="_blank">温柔以待</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">恋爱</span> <span class="fl diamonds">纯爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">14</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">镖人</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/113468.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2016/02/13068253_1456196377_XNeRXXtX5PWX.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/113468.html" class="comic_tit" target="_blank">镖人</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">动作</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">15</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">驱魔录</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/114285.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/03/13060734_1520411153_U4DP8t1I7IdU.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/114285.html" class="comic_tit" target="_blank">驱魔录</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">魔幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">16</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">女子学院的男生</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/154208.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/03/18683422_1521789466_Q4h6Bk0Z1s0Z.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/154208.html" class="comic_tit" target="_blank">女子学院的男生</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">17</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">虎x鹤 妖师录</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/8805.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2014/11/190368_1415172576_VxKFjWIDrphw.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/8805.html" class="comic_tit" target="_blank">虎x鹤 妖师录</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">魔幻</span> <span class="fl diamonds">动作</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">18</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">惊叹之夜</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/11072.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/07/311700_1531131092_rVZFVZbQl7Qk.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/11072.html" class="comic_tit" target="_blank">惊叹之夜</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">魔幻</span> <span class="fl diamonds">动作</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">19</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">锁龙</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/149716.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/04/4146390_1493184894_Yz1B62y4zr21.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/149716.html" class="comic_tit" target="_blank">锁龙</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">魔幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">20</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">拜见女皇陛下</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/190.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2016/11/1213_1478322908_NjjWJwz3DTTd.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/190.html" class="comic_tit" target="_blank">拜见女皇陛下</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">生活</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
						</ul>
						<ul class="overflow hot_comic_list" style="display:none;">
							<li class="hot_comic_detail"> <span class="fl hot_num">21</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show hide"><span class="fl hot_comic_tit">球娘</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide ">
										<a href="http://www.u17.com/comic/27107.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/05/996329_1527061301_XQ3xho0NqPxd.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/27107.html" class="comic_tit" target="_blank">球娘</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">体育</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">22</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">鬼刀</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/68471.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/09/4190552_1506057375_lklZN8Iw3084.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/68471.html" class="comic_tit" target="_blank">鬼刀</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">魔幻</span> <span class="fl diamonds">动作</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">23</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">邪君宠-貂蝉</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/98063.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/04/1220_1492827904_9cf74duR38MB.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/98063.html" class="comic_tit" target="_blank">邪君宠-貂蝉</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">魔幻</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">24</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">古人上线</span><span class="fr comic_type">纯爱</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/179399.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/11/12270760_1541560657_3hjLX3NLWXVv.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/179399.html" class="comic_tit" target="_blank">古人上线</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">恋爱</span> <span class="fl diamonds">纯爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">25</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">肖花镇</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/98416.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/07/311424_1531996709_aZAOYW7e60JC.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/98416.html" class="comic_tit" target="_blank">肖花镇</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">恋爱</span> <span class="fl diamonds">惊奇</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">26</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">噬规者</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/75859.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2014/07/4431881_1405044822_6XsM9VnAV7nY.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/75859.html" class="comic_tit" target="_blank">噬规者</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">魔幻</span> <span class="fl diamonds">科幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">27</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">据说我是王的女儿？</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/130441.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/07/16600503_1499153471_RAN2a2A0sezq.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/130441.html" class="comic_tit" target="_blank">据说我是王的女儿？</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">生活</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">28</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">抢来的‘媳妇’’</span><span class="fr comic_type">纯爱</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/143300.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/10/18313169_1538844735_h449PTr2P8rq.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/143300.html" class="comic_tit" target="_blank">抢来的‘媳妇’’</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">恋爱</span> <span class="fl diamonds">纯爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">29</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">长安妖歌</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/88307.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/12/5428701_1545978986_XNcxXMCLrQ8R.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/88307.html" class="comic_tit" target="_blank">长安妖歌</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">魔幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">30</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">讨厌你喜欢你</span><span class="fr comic_type">纯爱</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/136224.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/04/16766133_1523680432_mCwrZCU6ML2c.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/136224.html" class="comic_tit" target="_blank">讨厌你喜欢你</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">恋爱</span> <span class="fl diamonds">纯爱</span> </div>
										</div>
									</div>
								</div>
							</li>
						</ul>
						<div class="hot_rank">
							<div class="fl rank_tab comic_rank comic_rank1 cur">1-10名</div>
							<div class="fl rank_tab comic_rank comic_rank2">11-20名</div>
							<div class="fl rank_tab comic_rank comic_rank3">21-30名</div>
						</div>
					</div>
					<div class="overflow hot_comic_cut hot_comic_shaonian" style="display: none;">
						<ul class="overflow hot_comic_list">
							<li class="hot_comic_detail"> <span class="fl hot_num hot_num_orange">1</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show hide"><span class="fl hot_comic_tit">镇魂街</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide ">
										<a href="http://www.u17.com/comic/3166.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2010/11/2786_1290484999_44z22704KDLT.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/3166.html" class="comic_tit" target="_blank">镇魂街</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">魔幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num hot_num_orange">2</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">驭灵师</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/121836.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/06/4486442_1496497477_zss3tq9b2Sq2.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/121836.html" class="comic_tit" target="_blank">驭灵师</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">魔幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num hot_num_orange">3</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">雏蜂</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/195.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/06/1260_1497244625_ZKc7bCo47OrM.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/195.html" class="comic_tit" target="_blank">雏蜂</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">动作</span> <span class="fl diamonds">科幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">4</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">妖神记（全彩）</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/99874.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2015/09/10449554_1442814412_YEa773oaYMH5.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/99874.html" class="comic_tit" target="_blank">妖神记（全彩）</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">魔幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">5</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">端脑</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/13707.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2014/10/12647_1413948764_xeZ2KC11sccR.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/13707.html" class="comic_tit" target="_blank">端脑</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">科幻</span> <span class="fl diamonds">推理</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">6</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">斗罗大陆</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/71064.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/07/4276398_1499156041_0ere6Y6eSO4F.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/71064.html" class="comic_tit" target="_blank">斗罗大陆</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">恋爱</span> <span class="fl diamonds">动作</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">7</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">镖人</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/113468.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2016/02/13068253_1456196377_XNeRXXtX5PWX.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/113468.html" class="comic_tit" target="_blank">镖人</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">动作</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">8</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">驱魔录</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/114285.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/03/13060734_1520411153_U4DP8t1I7IdU.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/114285.html" class="comic_tit" target="_blank">驱魔录</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">魔幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">9</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">女子学院的男生</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/154208.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/03/18683422_1521789466_Q4h6Bk0Z1s0Z.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/154208.html" class="comic_tit" target="_blank">女子学院的男生</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">10</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">虎x鹤 妖师录</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/8805.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2014/11/190368_1415172576_VxKFjWIDrphw.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/8805.html" class="comic_tit" target="_blank">虎x鹤 妖师录</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">魔幻</span> <span class="fl diamonds">动作</span> </div>
										</div>
									</div>
								</div>
							</li>
						</ul>
						<ul class="overflow hot_comic_list" style="display: none;">
							<li class="hot_comic_detail"> <span class="fl hot_num">11</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show hide"><span class="fl hot_comic_tit">惊叹之夜</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide ">
										<a href="http://www.u17.com/comic/11072.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/07/311700_1531131092_rVZFVZbQl7Qk.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/11072.html" class="comic_tit" target="_blank">惊叹之夜</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">魔幻</span> <span class="fl diamonds">动作</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">12</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">锁龙</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/149716.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/04/4146390_1493184894_Yz1B62y4zr21.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/149716.html" class="comic_tit" target="_blank">锁龙</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">魔幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">13</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">拜见女皇陛下</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/190.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2016/11/1213_1478322908_NjjWJwz3DTTd.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/190.html" class="comic_tit" target="_blank">拜见女皇陛下</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">生活</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">14</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">球娘</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/27107.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/05/996329_1527061301_XQ3xho0NqPxd.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/27107.html" class="comic_tit" target="_blank">球娘</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">体育</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">15</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">鬼刀</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/68471.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/09/4190552_1506057375_lklZN8Iw3084.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/68471.html" class="comic_tit" target="_blank">鬼刀</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">魔幻</span> <span class="fl diamonds">动作</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">16</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">肖花镇</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/98416.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/07/311424_1531996709_aZAOYW7e60JC.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/98416.html" class="comic_tit" target="_blank">肖花镇</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">恋爱</span> <span class="fl diamonds">惊奇</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">17</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">噬规者</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/75859.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2014/07/4431881_1405044822_6XsM9VnAV7nY.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/75859.html" class="comic_tit" target="_blank">噬规者</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">魔幻</span> <span class="fl diamonds">科幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">18</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">长安妖歌</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/88307.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/12/5428701_1545978986_XNcxXMCLrQ8R.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/88307.html" class="comic_tit" target="_blank">长安妖歌</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">魔幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">19</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">天师无门</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/173315.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/12/631752_1545392343_br8E4OT8T2Gk.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/173315.html" class="comic_tit" target="_blank">天师无门</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">动作</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">20</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">笼中人</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/181616.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2019/01/12647_1548151610_S2I1NLqOh3UH.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/181616.html" class="comic_tit" target="_blank">笼中人</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">搞笑</span> </div>
										</div>
									</div>
								</div>
							</li>
						</ul>
						<ul class="overflow hot_comic_list" style="display: none;">
							<li class="hot_comic_detail"> <span class="fl hot_num">21</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show hide"><span class="fl hot_comic_tit">星STAR</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide ">
										<a href="http://www.u17.com/comic/1383.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/06/1218_1498209383_G2SuZY0937Pj.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/1383.html" class="comic_tit" target="_blank">星STAR</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">动作</span> <span class="fl diamonds">科幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">22</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">请神误用</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/144558.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/02/17883203_1486449093_7z9vdWwytg9j.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/144558.html" class="comic_tit" target="_blank">请神误用</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">魔幻</span> <span class="fl diamonds">动作</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">23</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">尤克森林</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/176014.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/11/2802839_1541240071_0r0hzAJyeHIa.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/176014.html" class="comic_tit" target="_blank">尤克森林</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">科幻</span> <span class="fl diamonds">战争</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">24</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">剑锋帝国</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/112485.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/09/1310592_1538034437_jusi2idL66Sr.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/112485.html" class="comic_tit" target="_blank">剑锋帝国</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">科幻</span> <span class="fl diamonds">战争</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">25</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">十万个冷笑话</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/5553.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2015/04/29137_1429071315_TnKq5k0dqK6k.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/5553.html" class="comic_tit" target="_blank">十万个冷笑话</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">搞笑</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">26</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">我有特别的颜艺技巧</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/70568.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/10/4259098_1508980737_fV04qzg4axzB.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/70568.html" class="comic_tit" target="_blank">我有特别的颜艺技巧</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">魔幻</span> <span class="fl diamonds">推理</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">27</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">迷失在世界尽头</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/94607.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/06/6056_1497602268_2ZMcU5eOEDZ8.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/94607.html" class="comic_tit" target="_blank">迷失在世界尽头</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">魔幻</span> <span class="fl diamonds">动作</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">28</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">EVELYN鬼妻</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/73060.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2019/01/1534671_1546599983_lNc23ymHE6u4.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/73060.html" class="comic_tit" target="_blank">EVELYN鬼妻</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">魔幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">29</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">崩坏3rd</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/99679.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/12/4411883_1514025604_yE71B2fP4r07.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/99679.html" class="comic_tit" target="_blank">崩坏3rd</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">动作</span> <span class="fl diamonds">科幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">30</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">异界巡礼团</span><span class="fr comic_type">少年</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/180701.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2019/02/4275_1549080598_X5zn8grgWWha.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/180701.html" class="comic_tit" target="_blank">异界巡礼团</a>
											<div class="comic_style"> <span class="fl diamonds">少年</span> <span class="fl diamonds">魔幻</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
						</ul>
						<div class="hot_rank">
							<div class="fl rank_tab comic_rank comic_rank1 cur">1-10名</div>
							<div class="fl rank_tab comic_rank comic_rank2">11-20名</div>
							<div class="fl rank_tab comic_rank comic_rank3">21-30名</div>
						</div>
					</div>
					<div class="overflow hot_comic_cut hot_comic_shaonv" style="display: none;">
						<ul class="overflow hot_comic_list">
							<li class="hot_comic_detail"> <span class="fl hot_num hot_num_orange">1</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show hide"><span class="fl hot_comic_tit">蓝翅</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide ">
										<a href="http://www.u17.com/comic/68109.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/03/4177111_1489509484_l8FsH161lxf2.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/68109.html" class="comic_tit" target="_blank">蓝翅</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">生活</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num hot_num_orange">2</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">非人哉</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/120003.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2019/01/14197110_1547012055_foOor55Xy5l6.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/120003.html" class="comic_tit" target="_blank">非人哉</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">搞笑</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num hot_num_orange">3</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">邪君宠-貂蝉</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/98063.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/04/1220_1492827904_9cf74duR38MB.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/98063.html" class="comic_tit" target="_blank">邪君宠-貂蝉</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">魔幻</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">4</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">据说我是王的女儿？</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/130441.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/07/16600503_1499153471_RAN2a2A0sezq.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/130441.html" class="comic_tit" target="_blank">据说我是王的女儿？</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">生活</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">5</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">豪门天价前妻</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/136625.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/07/16818419_1499071612_6pBwyyA6ApxN.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/136625.html" class="comic_tit" target="_blank">豪门天价前妻</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">生活</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">6</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">尚善</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/57524.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/12/3674833_1545213600_19Y7ZEO11Ru1.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/57524.html" class="comic_tit" target="_blank">尚善</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">生活</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">7</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">一禅小和尚</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/144983.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/11/18677124_1509615586_64b9ISJiZi9P.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/144983.html" class="comic_tit" target="_blank">一禅小和尚</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">生活</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">8</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">行星独行</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/179580.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/11/20103_1542008344_jfz31CKjM681.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/179580.html" class="comic_tit" target="_blank">行星独行</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">生活</span> <span class="fl diamonds">推理</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">9</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">夏家灵异录(全彩)</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/113995.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/01/631752_1484161139_ke3FP61IKO1I.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/113995.html" class="comic_tit" target="_blank">夏家灵异录(全彩)</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">魔幻</span> <span class="fl diamonds">生活</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num ">10</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">恋爱生死簿</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/141397.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/02/17825220_1486709251_sqjstb1Ds7B1.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/141397.html" class="comic_tit" target="_blank">恋爱生死簿</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
						</ul>
						<ul class="overflow hot_comic_list" style="display: none;">
							<li class="hot_comic_detail"> <span class="fl hot_num">11</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show hide"><span class="fl hot_comic_tit">老板好像喜欢我</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide ">
										<a href="http://www.u17.com/comic/15596.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/12/571406_1512233182_6pELll213eTA.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/15596.html" class="comic_tit" target="_blank">老板好像喜欢我</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">生活</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">12</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">百足宠物诊所</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/148636.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2019/01/18965836_1548763330_Elgb5Eyg6dLZ.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/148636.html" class="comic_tit" target="_blank">百足宠物诊所</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">生活</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">13</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">妙手仙丹</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/130521.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/05/109268_1525508639_tO5XwY71OBoT.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/130521.html" class="comic_tit" target="_blank">妙手仙丹</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">魔幻</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">14</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">追星逐月</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/136225.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/09/16737425_1505125937_0jP70z2jf7qK.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/136225.html" class="comic_tit" target="_blank">追星逐月</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">15</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">叫姐姐</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/108320.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/10/12068600_1540712438_rzI1o55Ee5jc.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/108320.html" class="comic_tit" target="_blank">叫姐姐</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">生活</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">16</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">开元秘史</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/73083.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/02/631752_1519462123_6GgTBZx6feBd.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/73083.html" class="comic_tit" target="_blank">开元秘史</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">战争</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">17</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">开封奇谈-这个包公不太行</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/74712.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2014/06/164862_1403902012_wPwxFCKLBvpU.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/74712.html" class="comic_tit" target="_blank">开封奇谈-这个包公不太行</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">生活</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">18</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">我的太子妃</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/95630.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2019/01/4483307_1547305260_wR7yQHRpWI9P.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/95630.html" class="comic_tit" target="_blank">我的太子妃</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">19</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">非君不可</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/83541.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/12/4506967_1512458444_eU2HFOppEubG.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/83541.html" class="comic_tit" target="_blank">非君不可</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">魔幻</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">20</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">长歌行</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/14325.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/11/108005_1510061825_0GEkZh0WVJ4f.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/14325.html" class="comic_tit" target="_blank">长歌行</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">战争</span> </div>
										</div>
									</div>
								</div>
							</li>
						</ul>
						<ul class="overflow hot_comic_list" style="display: none;">
							<li class="hot_comic_detail"> <span class="fl hot_num">21</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show hide"><span class="fl hot_comic_tit">女儿国传奇－胜男篇</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide ">
										<a href="http://www.u17.com/comic/1405.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2011/03/1220_1299246894_HD8fu5hf9M93.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/1405.html" class="comic_tit" target="_blank">女儿国传奇－胜男篇</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">魔幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">22</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">恋爱吧！勇者小黄鱼</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/150603.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/11/16798_1542262496_KHaZaTxK550r.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/150603.html" class="comic_tit" target="_blank">恋爱吧！勇者小黄鱼</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">23</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">我的99分男友</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/69060.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/08/4190143_1533131016_Xf4a9hUFv5LV.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/69060.html" class="comic_tit" target="_blank">我的99分男友</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">生活</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">24</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">总裁画风不对</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/171687.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2019/01/26696970_1548684245_JiQUI6o1jI8i.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/171687.html" class="comic_tit" target="_blank">总裁画风不对</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">25</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">枝间片语</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/142153.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/01/6069270_1483702813_qPHKpkq4wCsJ.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/142153.html" class="comic_tit" target="_blank">枝间片语</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">魔幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">26</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">恋爱希加加</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/176593.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2019/01/25804160_1548383788_Sc6SockgSK60.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/176593.html" class="comic_tit" target="_blank">恋爱希加加</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">27</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">卧底娇妻</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/150610.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/09/18242498_1504686321_b3ELOfLmZOFO.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/150610.html" class="comic_tit" target="_blank">卧底娇妻</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">28</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">以彼之名</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/1368.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/06/1225_1497251484_WV4WVjfj6RnQ.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/1368.html" class="comic_tit" target="_blank">以彼之名</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">搞笑</span> <span class="fl diamonds">魔幻</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">29</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">我的男友不是人</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/116263.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/06/12653018_1528116744_4r47y37tE4cP.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/116263.html" class="comic_tit" target="_blank">我的男友不是人</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">恋爱</span> </div>
										</div>
									</div>
								</div>
							</li>
							<li> <span class="fl hot_num">30</span>
								<div class="hot_comic_box">
									<p class="overflow hot_comic_show "><span class="fl hot_comic_tit">迷津书店</span><span class="fr comic_type">少女</span></p>
									<div class="hot_comic_hide hide">
										<a href="http://www.u17.com/comic/155729.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/07/9825994_1500017249_U0UmK6F00Vkq.small.jpg" alt="" /> </a>
										<div class="fl hot_comic_content">
											<a href="http://www.u17.com/comic/155729.html" class="comic_tit" target="_blank">迷津书店</a>
											<div class="comic_style"> <span class="fl diamonds">少女</span> <span class="fl diamonds">魔幻</span> <span class="fl diamonds">生活</span> </div>
										</div>
									</div>
								</div>
							</li>
						</ul>
						<div class="hot_rank">
							<div class="fl rank_tab comic_rank comic_rank1 cur">1-10名</div>
							<div class="fl rank_tab comic_rank comic_rank2">11-20名</div>
							<div class="fl rank_tab comic_rank comic_rank3">21-30名</div>
						</div>
					</div>
					<!-- <div class="overflow hot_comic_cut hot_comic_qingnian" style="display: none;">  <ul class="overflow hot_comic_list">      <li class="hot_comic_detail"> <span class="fl hot_num hot_num_orange">1</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show hide"><span class="fl hot_comic_tit">心之茧</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide "> <a href="http://www.u17.com/comic/145630.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/05/5475960_1495520371_2LOf5OgcNCkN.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/145630.html" class="comic_tit" target="_blank">心之茧</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">生活</span>  <span class="fl diamonds">恋爱</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num hot_num_orange">2</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">恋与星途</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/142882.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/10/18242498_1540878969_sdh1d65vV6dv.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/142882.html" class="comic_tit" target="_blank">恋与星途</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">生活</span>  <span class="fl diamonds">恋爱</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num hot_num_orange">3</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">我的猫咪上仙</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/167077.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/12/23168997_1514457567_qsDhVkTQBoDC.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/167077.html" class="comic_tit" target="_blank">我的猫咪上仙</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">恋爱</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num ">4</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">空心恋人</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/126616.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2019/01/14064142_1547217813_w5Y1RrUbfUzU.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/126616.html" class="comic_tit" target="_blank">空心恋人</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">恋爱</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num ">5</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">温柔以待</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/136641.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2016/09/16818669_1475028266_FsTz41BgF64F.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/136641.html" class="comic_tit" target="_blank">温柔以待</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">搞笑</span>  <span class="fl diamonds">恋爱</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num ">6</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">古人上线</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/179399.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/11/12270760_1541560657_3hjLX3NLWXVv.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/179399.html" class="comic_tit" target="_blank">古人上线</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">搞笑</span>  <span class="fl diamonds">恋爱</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num ">7</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">抢来的‘媳妇’’</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/143300.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/10/18313169_1538844735_h449PTr2P8rq.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/143300.html" class="comic_tit" target="_blank">抢来的‘媳妇’’</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">搞笑</span>  <span class="fl diamonds">恋爱</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num ">8</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">讨厌你喜欢你</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/136224.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/04/16766133_1523680432_mCwrZCU6ML2c.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/136224.html" class="comic_tit" target="_blank">讨厌你喜欢你</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">恋爱</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num ">9</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">小龙的随身空间2</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/178994.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/11/28447_1543489653_K5ksSssb56p2.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/178994.html" class="comic_tit" target="_blank">小龙的随身空间2</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">搞笑</span>  <span class="fl diamonds">生活</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num ">10</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">雪国</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/116969.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/03/5417305_1521780191_Dss2WCw666Wu.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/116969.html" class="comic_tit" target="_blank">雪国</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">动作</span>  <span class="fl diamonds">战争</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>  </ul> <ul class="overflow hot_comic_list" style="display: none;">      <li class="hot_comic_detail"> <span class="fl hot_num">11</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show hide"><span class="fl hot_comic_tit">无尽的黎明</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide "> <a href="http://www.u17.com/comic/72492.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2014/05/3784173_1400833417_dkTYKAKWjjgG.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/72492.html" class="comic_tit" target="_blank">无尽的黎明</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">恋爱</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num">12</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">当不良老大的男人</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/114373.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/04/775668_1493046244_VPSdoOP5PPUE.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/114373.html" class="comic_tit" target="_blank">当不良老大的男人</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">生活</span>  <span class="fl diamonds">恋爱</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num">13</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">我和妈妈抢男友</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/156883.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/08/16468133_1501671222_M4eUzUEOuJRh.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/156883.html" class="comic_tit" target="_blank">我和妈妈抢男友</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">恋爱</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num">14</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">金牌助理</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/75763.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2017/10/109148_1508773397_nB6B66flF4bl.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/75763.html" class="comic_tit" target="_blank">金牌助理</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">生活</span>  <span class="fl diamonds">恋爱</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num">15</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">灶神4917</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/153687.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/10/4180923_1540279749_a833SuqbrsSo.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/153687.html" class="comic_tit" target="_blank">灶神4917</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">生活</span>  <span class="fl diamonds">恋爱</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num">16</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">姻缘结</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/130468.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/12/3363868_1545533144_oel44ZGRBgOO.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/130468.html" class="comic_tit" target="_blank">姻缘结</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">恋爱</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num">17</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">魔王日记</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/41524.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2014/03/940847_1395021762_INQN183pEII8.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/41524.html" class="comic_tit" target="_blank">魔王日记</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">搞笑</span>  <span class="fl diamonds">魔幻</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num">18</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">妖怪男友派件中</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/146607.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/08/2536927_1533305102_Bql6qvv4q6Vb.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/146607.html" class="comic_tit" target="_blank">妖怪男友派件中</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">搞笑</span>  <span class="fl diamonds">生活</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num">19</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">傲娇世子要总攻</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/165344.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/01/11512338_1515472018_4qfMu47MN5m6.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/165344.html" class="comic_tit" target="_blank">傲娇世子要总攻</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">搞笑</span>  <span class="fl diamonds">恋爱</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num">20</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">穿梭时空追寻你</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/139048.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2018/02/14455055_1519372682_00Im0A6MdM53.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/139048.html" class="comic_tit" target="_blank">穿梭时空追寻你</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">恋爱</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>  </ul> <ul class="overflow hot_comic_list" style="display: none;">      <li class="hot_comic_detail"> <span class="fl hot_num">21</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show hide"><span class="fl hot_comic_tit">【阴阳师】狗崽日常</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide "> <a href="http://www.u17.com/comic/140028.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2016/11/1340772_1479656361_ctjJ561t05TC.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/140028.html" class="comic_tit" target="_blank">【阴阳师】狗崽日常</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">同人</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num">22</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">读者和主角绝逼是真爱</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/58328.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2013/12/3762271_1387254597_ryNZ223x9yrc.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/58328.html" class="comic_tit" target="_blank">读者和主角绝逼是真爱</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">魔幻</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num">23</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">越界·双生</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/6453.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2011/01/20103_1294427915_B3CPZ8Yitsvj.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/6453.html" class="comic_tit" target="_blank">越界·双生</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">搞笑</span>  <span class="fl diamonds">魔幻</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num">24</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">龙诏雪</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/43371.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2013/06/19624_1370440459_0aqHShSWGuKS.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/43371.html" class="comic_tit" target="_blank">龙诏雪</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds"></span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num">25</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">血夜之城</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/1369.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2010/11/2476_1289630294_iygGo3ZCck4k.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/1369.html" class="comic_tit" target="_blank">血夜之城</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">魔幻</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num">26</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">月光之瞳</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/5531.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2010/06/67325_1277568078_dgN19qGBgR14.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/5531.html" class="comic_tit" target="_blank">月光之瞳</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">魔幻</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num">27</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">剑影绝杀</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/4823.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2010/05/1564_1274323036_r37Qa7ammQeE.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/4823.html" class="comic_tit" target="_blank">剑影绝杀</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">动作</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num">28</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">事发东窗</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/134614.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2016/08/15789863_1472461781_nznVIo4VOnLo.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/134614.html" class="comic_tit" target="_blank">事发东窗</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">搞笑</span>  <span class="fl diamonds">生活</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num">29</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">诗与狂犬与项圈</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/134679.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2016/08/18850_1472549172_28288a8aAvvY.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/134679.html" class="comic_tit" target="_blank">诗与狂犬与项圈</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>   <li > <span class="fl hot_num">30</span> <div class="hot_comic_box"> <p class="overflow hot_comic_show "><span class="fl hot_comic_tit">黑金</span><span class="fr comic_type">纯爱</span></p> <div class="hot_comic_hide hide"> <a href="http://www.u17.com/comic/4922.html" target="_blank" class="fl hot_comic_img"> <img xsrc="http://cover.u17i.com/2010/05/44606_1274839070_opJa1C0OmogA.small.jpg" alt="" /> </a> <div class="fl hot_comic_content"> <a href="http://www.u17.com/comic/4922.html" class="comic_tit" target="_blank">黑金</a> <div class="comic_style">  <span class="fl diamonds">少女</span>  <span class="fl diamonds">纯爱</span>  </div> </div> </div> </div> </li>  </ul> <div class="hot_rank"> <div class="fl rank_tab comic_rank comic_rank1 cur">1-10名</div> <div class="fl rank_tab comic_rank comic_rank2">11-20名</div> <div class="fl rank_tab comic_rank comic_rank3">21-30名</div> </div> </div> --></div>
			</div>
			<!-- 全站最热 end -->
		</div>
		<!-- 轮播图部分 end -->
		<!-- 签约漫画部分 -->
		<div class="v5_comic_list comic_list_qy">
			<div class="fl comic_content">
				<div class="comic_content_tit lazy_parent">
					<h2>超人气漫画</h2>
					<ul class="fl comic_choose">
						<li class="rank_tab lazy_cut cur">全部</li>
						<li class="rank_tab lazy_cut">少年</li>
						<li class="rank_tab lazy_cut">少女</li>
					</ul>
					<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss0_ob0_ac2_as0_wm0_co99_ct99_p1.html?order=1" target="_blank" class="fr comic_look_more">更多</a>
				</div>
				<div class="overflow comic_list_slide_box lazy_load">
					<div class="cutUl lazyload cut1">
						<ul class="comic_all">			
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/141690.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/12/17529254_1512205038_I79T7xh7YU09.big.jpg" alt="" title="超质体" /> </a>
								<a href="http://www.u17.com/comic/141690.html" class="comic_tit" target="_blank" title="超质体">超质体</a>
								<p class="comic_type">少年/魔幻/动作</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/190.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/11/1213_1478322908_NjjWJwz3DTTd.big.jpg" alt="" title="拜见女皇陛下" /> </a>
								<a href="http://www.u17.com/comic/190.html" class="comic_tit" target="_blank" title="拜见女皇陛下"><i class="ico_rec"></i>拜见女皇陛下</a>
								<p class="comic_type">少年/生活/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/98416.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/07/311424_1531996709_aZAOYW7e60JC.big.jpg" alt="" title="肖花镇" /> </a>
								<a href="http://www.u17.com/comic/98416.html" class="comic_tit" target="_blank" title="肖花镇">肖花镇</a>
								<p class="comic_type">少年/恋爱/惊奇</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/181616.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/12647_1548151610_S2I1NLqOh3UH.big.jpg" alt="" title="笼中人" /> </a>
								<a href="http://www.u17.com/comic/181616.html" class="comic_tit" target="_blank" title="笼中人"><i class="ico_rec"></i>笼中人</a>
								<p class="comic_type">少年/搞笑</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/116969.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/03/5417305_1521780191_Dss2WCw666Wu.big.jpg" alt="" title="雪国" /> </a>
								<a href="http://www.u17.com/comic/116969.html" class="comic_tit" target="_blank" title="雪国">雪国</a>
								<p class="comic_type">少女/动作/战争/纯爱</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/101278.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/02/3940851_1518186205_u884dApo0OLD.big.jpg" alt="" title="祖先帮帮忙" /> </a>
								<a href="http://www.u17.com/comic/101278.html" class="comic_tit" target="_blank" title="祖先帮帮忙">祖先帮帮忙</a>
								<p class="comic_type">少年/搞笑/生活</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/136625.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/07/16818419_1499071612_6pBwyyA6ApxN.big.jpg" alt="" title="豪门天价前妻" /> </a>
								<a href="http://www.u17.com/comic/136625.html" class="comic_tit" target="_blank" title="豪门天价前妻"><i class="ico_rec"></i>豪门天价前妻</a>
								<p class="comic_type">少女/生活/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/75859.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/07/4431881_1405044822_6XsM9VnAV7nY.big.jpg" alt="" title="噬规者" /> </a>
								<a href="http://www.u17.com/comic/75859.html" class="comic_tit" target="_blank" title="噬规者"><i class="ico_rec"></i>噬规者</a>
								<p class="comic_type">少年/魔幻/科幻</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/71064.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/07/4276398_1499156041_0ere6Y6eSO4F.big.jpg" alt="" title="斗罗大陆" /> </a>
								<a href="http://www.u17.com/comic/71064.html" class="comic_tit" target="_blank" title="斗罗大陆"><i class="ico_rec"></i>斗罗大陆</a>
								<p class="comic_type">少年/恋爱/动作</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/154208.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/03/18683422_1521789466_Q4h6Bk0Z1s0Z.big.jpg" alt="" title="女子学院的男生" /> </a>
								<a href="http://www.u17.com/comic/154208.html" class="comic_tit" target="_blank" title="女子学院的男生"><i class="ico_rec"></i>女子学院的男生</a>
								<p class="comic_type">少年/搞笑/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/64481.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/05/188617_1494825352_IIcJW7vwiJia.big.jpg" alt="" title="面具大杀神" /> </a>
								<a href="http://www.u17.com/comic/64481.html" class="comic_tit" target="_blank" title="面具大杀神">面具大杀神</a>
								<p class="comic_type">少年/搞笑/动作</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/116263.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/06/12653018_1528116744_4r47y37tE4cP.big.jpg" alt="" title="我的男友不是人" /> </a>
								<a href="http://www.u17.com/comic/116263.html" class="comic_tit" target="_blank" title="我的男友不是人">我的男友不是人</a>
								<p class="comic_type">少女/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/3166.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2010/11/2786_1290484999_44z22704KDLT.big.jpg" alt="" title="镇魂街" /> </a>
								<a href="http://www.u17.com/comic/3166.html" class="comic_tit" target="_blank" title="镇魂街"><i class="ico_rec"></i>镇魂街</a>
								<p class="comic_type">少年/魔幻</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/11072.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/07/311700_1531131092_rVZFVZbQl7Qk.big.jpg" alt="" title="惊叹之夜" /> </a>
								<a href="http://www.u17.com/comic/11072.html" class="comic_tit" target="_blank" title="惊叹之夜">惊叹之夜</a>
								<p class="comic_type">少年/魔幻/动作</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/57524.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/3674833_1545213600_19Y7ZEO11Ru1.big.jpg" alt="" title="尚善" /> </a>
								<a href="http://www.u17.com/comic/57524.html" class="comic_tit" target="_blank" title="尚善"><i class="ico_rec"></i>尚善</a>
								<p class="comic_type">少女/生活</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/145630.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/05/5475960_1495520371_2LOf5OgcNCkN.big.jpg" alt="" title="心之茧" /> </a>
								<a href="http://www.u17.com/comic/145630.html" class="comic_tit" target="_blank" title="心之茧"><i class="ico_rec"></i>心之茧</a>
								<p class="comic_type">少女/生活/恋爱/纯爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/156883.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/08/16468133_1501671222_M4eUzUEOuJRh.big.jpg" alt="" title="我和妈妈抢男友" /> </a>
								<a href="http://www.u17.com/comic/156883.html" class="comic_tit" target="_blank" title="我和妈妈抢男友">我和妈妈抢男友</a>
								<p class="comic_type">少女/恋爱/纯爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/72492.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/05/3784173_1400833417_dkTYKAKWjjgG.big.jpg" alt="" title="无尽的黎明" /> </a>
								<a href="http://www.u17.com/comic/72492.html" class="comic_tit" target="_blank" title="无尽的黎明">无尽的黎明</a>
								<p class="comic_type">少女/恋爱/纯爱</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/143300.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/10/18313169_1538844735_h449PTr2P8rq.big.jpg" alt="" title="抢来的‘媳妇’’" /> </a>
								<a href="http://www.u17.com/comic/143300.html" class="comic_tit" target="_blank" title="抢来的‘媳妇’’"><i class="ico_rec"></i>抢来的‘媳妇’’</a>
								<p class="comic_type">少女/搞笑/恋爱/纯爱</p>
							</li>
						</ul>
						<div class="comic_slide_prev" style="display:none;"></div>
						<div class="comic_slide_next"></div>
					</div>
					<div class="cutUl cut2" style="display: none;">
						<ul class="comic_shaonian">							
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/75859.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/07/4431881_1405044822_6XsM9VnAV7nY.big.jpg" alt="" title="噬规者" /> </a>
								<a href="http://www.u17.com/comic/75859.html" class="comic_tit" target="_blank" title="噬规者"><i class="ico_rec"></i>噬规者</a>
								<p class="comic_type">凌驾诸神的狂舞</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/71064.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/07/4276398_1499156041_0ere6Y6eSO4F.big.jpg" alt="" title="斗罗大陆" /> </a>
								<a href="http://www.u17.com/comic/71064.html" class="comic_tit" target="_blank" title="斗罗大陆"><i class="ico_rec"></i>斗罗大陆</a>
								<p class="comic_type">武魂觉醒修炼升级吧</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/154208.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/03/18683422_1521789466_Q4h6Bk0Z1s0Z.big.jpg" alt="" title="女子学院的男生" /> </a>
								<a href="http://www.u17.com/comic/154208.html" class="comic_tit" target="_blank" title="女子学院的男生"><i class="ico_rec"></i>女子学院的男生</a>
								<p class="comic_type">少年进入女子学院</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/64481.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/05/188617_1494825352_IIcJW7vwiJia.big.jpg" alt="" title="面具大杀神" /> </a>
								<a href="http://www.u17.com/comic/64481.html" class="comic_tit" target="_blank" title="面具大杀神">面具大杀神</a>
								<p class="comic_type">蹩脚杀手两倍蠢</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/3166.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2010/11/2786_1290484999_44z22704KDLT.big.jpg" alt="" title="镇魂街" /> </a>
								<a href="http://www.u17.com/comic/3166.html" class="comic_tit" target="_blank" title="镇魂街"><i class="ico_rec"></i>镇魂街</a>
								<p class="comic_type">镇守恶灵之街的青年</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/11072.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/07/311700_1531131092_rVZFVZbQl7Qk.big.jpg" alt="" title="惊叹之夜" /> </a>
								<a href="http://www.u17.com/comic/11072.html" class="comic_tit" target="_blank" title="惊叹之夜">惊叹之夜</a>
								<p class="comic_type">惊叹之门</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/85740.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/01/4803883_1452436459_IvPipdWI0959.big.jpg" alt="" title="请勿擅自签订契约" /> </a>
								<a href="http://www.u17.com/comic/85740.html" class="comic_tit" target="_blank" title="请勿擅自签订契约">请勿擅自签订契约</a>
								<p class="comic_type">少女！签订契约吧！</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/27107.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/05/996329_1527061301_XQ3xho0NqPxd.big.jpg" alt="" title="球娘" /> </a>
								<a href="http://www.u17.com/comic/27107.html" class="comic_tit" target="_blank" title="球娘"><i class="ico_rec"></i>球娘</a>
								<p class="comic_type">男变女打篮球玩黑帮</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/144558.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/02/17883203_1486449093_7z9vdWwytg9j.big.jpg" alt="" title="请神误用" /> </a>
								<a href="http://www.u17.com/comic/144558.html" class="comic_tit" target="_blank" title="请神误用">请神误用</a>
								<p class="comic_type">我可能拜了个假神</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/93661.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/02/29796_1456393948_KitSctt4ksC3.big.jpg" alt="" title="神之一脚" /> </a>
								<a href="http://www.u17.com/comic/93661.html" class="comic_tit" target="_blank" title="神之一脚">神之一脚</a>
								<p class="comic_type">神之男子带你飞翔</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/173315.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/631752_1545392343_br8E4OT8T2Gk.big.jpg" alt="" title="天师无门" /> </a>
								<a href="http://www.u17.com/comic/173315.html" class="comic_tit" target="_blank" title="天师无门"><i class="ico_rec"></i>天师无门</a>
								<p class="comic_type">魔高一尺道高一丈</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/99874.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2015/09/10449554_1442814412_YEa773oaYMH5.big.jpg" alt="" title="妖神记（全彩）" /> </a>
								<a href="http://www.u17.com/comic/99874.html" class="comic_tit" target="_blank" title="妖神记（全彩）"><i class="ico_rec"></i>妖神记（全彩）</a>
								<p class="comic_type">妖灵世界中的生存</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/149716.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/04/4146390_1493184894_Yz1B62y4zr21.big.jpg" alt="" title="锁龙" /> </a>
								<a href="http://www.u17.com/comic/149716.html" class="comic_tit" target="_blank" title="锁龙">锁龙</a>
								<p class="comic_type">签订契约吗大兄弟</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/165172.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/10/22640257_1540542471_1nAn1h1T10TN.big.jpg" alt="" title="毕业游戏" /> </a>
								<a href="http://www.u17.com/comic/165172.html" class="comic_tit" target="_blank" title="毕业游戏">毕业游戏</a>
								<p class="comic_type">夺命手机拨号中</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/121836.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/06/4486442_1496497477_zss3tq9b2Sq2.big.jpg" alt="" title="驭灵师" /> </a>
								<a href="http://www.u17.com/comic/121836.html" class="comic_tit" target="_blank" title="驭灵师"><i class="ico_rec"></i>驭灵师</a>
								<p class="comic_type">作者穿到自己的漫画</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/176014.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/2802839_1541240071_0r0hzAJyeHIa.big.jpg" alt="" title="尤克森林" /> </a>
								<a href="http://www.u17.com/comic/176014.html" class="comic_tit" target="_blank" title="尤克森林"><i class="ico_rec"></i>尤克森林</a>
								<p class="comic_type">修正世界的任务</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/64171.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2015/08/661165_1439557376_Z4COHfihyOZc.big.jpg" alt="" title="妖闻录" /> </a>
								<a href="http://www.u17.com/comic/64171.html" class="comic_tit" target="_blank" title="妖闻录">妖闻录</a>
								<p class="comic_type">修道除妖 卷轴召唤</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/88307.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/5428701_1545978986_XNcxXMCLrQ8R.big.jpg" alt="" title="长安妖歌" /> </a>
								<a href="http://www.u17.com/comic/88307.html" class="comic_tit" target="_blank" title="长安妖歌"><i class="ico_rec"></i>长安妖歌</a>
								<p class="comic_type">沧海明月 大唐鬼宴</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/180701.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/02/4275_1549080598_X5zn8grgWWha.big.jpg" alt="" title="异界巡礼团" /> </a>
								<a href="http://www.u17.com/comic/180701.html" class="comic_tit" target="_blank" title="异界巡礼团"><i class="ico_rec"></i>异界巡礼团</a>
								<p class="comic_type">深渊中的烛光</p>
							</li>
						</ul>
						<div class="comic_slide_prev" style="display:none;"></div>
						<div class="comic_slide_next"></div>
					</div>
					<div class="cutUl cut3" style="display: none;">
						<ul class="comic_shaonv">							
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/116969.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/03/5417305_1521780191_Dss2WCw666Wu.big.jpg" alt="" title="雪国" /> </a>
								<a href="http://www.u17.com/comic/116969.html" class="comic_tit" target="_blank" title="雪国">雪国</a>
								<p class="comic_type">冰雪下的战争</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/136625.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/07/16818419_1499071612_6pBwyyA6ApxN.big.jpg" alt="" title="豪门天价前妻" /> </a>
								<a href="http://www.u17.com/comic/136625.html" class="comic_tit" target="_blank" title="豪门天价前妻"><i class="ico_rec"></i>豪门天价前妻</a>
								<p class="comic_type">成为了豪门前妻</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/116263.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/06/12653018_1528116744_4r47y37tE4cP.big.jpg" alt="" title="我的男友不是人" /> </a>
								<a href="http://www.u17.com/comic/116263.html" class="comic_tit" target="_blank" title="我的男友不是人">我的男友不是人</a>
								<p class="comic_type">这个男生是恶灵？</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/57524.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/3674833_1545213600_19Y7ZEO11Ru1.big.jpg" alt="" title="尚善" /> </a>
								<a href="http://www.u17.com/comic/57524.html" class="comic_tit" target="_blank" title="尚善"><i class="ico_rec"></i>尚善</a>
								<p class="comic_type">神异鬼怪物语</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/145630.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/05/5475960_1495520371_2LOf5OgcNCkN.big.jpg" alt="" title="心之茧" /> </a>
								<a href="http://www.u17.com/comic/145630.html" class="comic_tit" target="_blank" title="心之茧"><i class="ico_rec"></i>心之茧</a>
								<p class="comic_type">心若成茧何以化蝶</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/156883.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/08/16468133_1501671222_M4eUzUEOuJRh.big.jpg" alt="" title="我和妈妈抢男友" /> </a>
								<a href="http://www.u17.com/comic/156883.html" class="comic_tit" target="_blank" title="我和妈妈抢男友">我和妈妈抢男友</a>
								<p class="comic_type">为了守护爸爸的幸福</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/72492.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/05/3784173_1400833417_dkTYKAKWjjgG.big.jpg" alt="" title="无尽的黎明" /> </a>
								<a href="http://www.u17.com/comic/72492.html" class="comic_tit" target="_blank" title="无尽的黎明">无尽的黎明</a>
								<p class="comic_type">在天亮之前做好准备</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/143300.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/10/18313169_1538844735_h449PTr2P8rq.big.jpg" alt="" title="抢来的‘媳妇’’" /> </a>
								<a href="http://www.u17.com/comic/143300.html" class="comic_tit" target="_blank" title="抢来的‘媳妇’’"><i class="ico_rec"></i>抢来的‘媳妇’’</a>
								<p class="comic_type">男扮女装小媳妇</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/179399.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/12270760_1541560657_3hjLX3NLWXVv.big.jpg" alt="" title="古人上线" /> </a>
								<a href="http://www.u17.com/comic/179399.html" class="comic_tit" target="_blank" title="古人上线"><i class="ico_rec"></i>古人上线</a>
								<p class="comic_type">穿到现代的古人</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/167077.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/12/23168997_1514457567_qsDhVkTQBoDC.big.jpg" alt="" title="我的猫咪上仙" /> </a>
								<a href="http://www.u17.com/comic/167077.html" class="comic_tit" target="_blank" title="我的猫咪上仙"><i class="ico_rec"></i>我的猫咪上仙</a>
								<p class="comic_type">被主人吸爆的猫神仙</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/179580.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/20103_1542008344_jfz31CKjM681.big.jpg" alt="" title="行星独行" /> </a>
								<a href="http://www.u17.com/comic/179580.html" class="comic_tit" target="_blank" title="行星独行"><i class="ico_rec"></i>行星独行</a>
								<p class="comic_type">来自白星</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/153687.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/10/4180923_1540279749_a833SuqbrsSo.big.jpg" alt="" title="灶神4917" /> </a>
								<a href="http://www.u17.com/comic/153687.html" class="comic_tit" target="_blank" title="灶神4917"><i class="ico_rec"></i>灶神4917</a>
								<p class="comic_type">租房遇到灶王爷？</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/130521.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/05/109268_1525508639_tO5XwY71OBoT.big.jpg" alt="" title="妙手仙丹" /> </a>
								<a href="http://www.u17.com/comic/130521.html" class="comic_tit" target="_blank" title="妙手仙丹">妙手仙丹</a>
								<p class="comic_type">巨力少女vs闷骚师父</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/73083.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/02/631752_1519462123_6GgTBZx6feBd.big.jpg" alt="" title="开元秘史" /> </a>
								<a href="http://www.u17.com/comic/73083.html" class="comic_tit" target="_blank" title="开元秘史">开元秘史</a>
								<p class="comic_type">波澜壮阔的盛唐秘辛</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/1368.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/06/1225_1497251484_WV4WVjfj6RnQ.big.jpg" alt="" title="以彼之名" /> </a>
								<a href="http://www.u17.com/comic/1368.html" class="comic_tit" target="_blank" title="以彼之名">以彼之名</a>
								<p class="comic_type">绚烂的咒术师传说！</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/136641.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/09/16818669_1475028266_FsTz41BgF64F.big.jpg" alt="" title="温柔以待" /> </a>
								<a href="http://www.u17.com/comic/136641.html" class="comic_tit" target="_blank" title="温柔以待"><i class="ico_rec"></i>温柔以待</a>
								<p class="comic_type">荷尔蒙黑道恋爱故事</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/98063.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/04/1220_1492827904_9cf74duR38MB.big.jpg" alt="" title="邪君宠-貂蝉" /> </a>
								<a href="http://www.u17.com/comic/98063.html" class="comic_tit" target="_blank" title="邪君宠-貂蝉">邪君宠-貂蝉</a>
								<p class="comic_type">穿越貂蝉结缘暴君恋</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/126616.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/14064142_1547217813_w5Y1RrUbfUzU.big.jpg" alt="" title="空心恋人" /> </a>
								<a href="http://www.u17.com/comic/126616.html" class="comic_tit" target="_blank" title="空心恋人">空心恋人</a>
								<p class="comic_type">纯爱之路</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/178994.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/28447_1543489653_K5ksSssb56p2.big.jpg" alt="" title="小龙的随身空间2" /> </a>
								<a href="http://www.u17.com/comic/178994.html" class="comic_tit" target="_blank" title="小龙的随身空间2"><i class="ico_rec"></i>小龙的随身空间2</a>
								<p class="comic_type">倒霉男家养天降金龙</p>
							</li>
						</ul>
						<div class="comic_slide_prev" style="display:none;"></div>
						<div class="comic_slide_next"></div>
					</div>
				</div>
			</div>
			<div class="fr comic_goup">
				<div class="overflow goup_tab">
					<h2 class="fl goup_tit">上升最快</h2>
					<a href="javascript:void(0);" class="fl rank_tab_up goup_tab_btn goup_tab_btn1 cur">全部</a>
					<a href="javascript:void(0);" class="fl rank_tab_up goup_tab_btn goup_tab_btn2">少年</a>
					<a href="javascript:void(0);" class="fl rank_tab_up goup_tab_btn goup_tab_bt3">少女</a>
				</div>
				<ul class="rank_bang rank_all">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/190.html" target="_blank" class="fl rank_comic_tit" data-info="少年/生活/恋爱" data-img="http://cover.u17i.com/2016/11/1213_1478322908_NjjWJwz3DTTd.middle.jpg">拜见女皇陛下</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/130521.html" target="_blank" class="fl rank_comic_tit" data-info="少女/魔幻/恋爱" data-img="http://cover.u17i.com/2018/05/109268_1525508639_tO5XwY71OBoT.middle.jpg">妙手仙丹</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/143300.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑/恋爱/纯爱" data-img="http://cover.u17i.com/2018/10/18313169_1538844735_h449PTr2P8rq.middle.jpg">抢来的‘媳妇’’</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/64481.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑/动作" data-img="http://cover.u17i.com/2017/05/188617_1494825352_IIcJW7vwiJia.middle.jpg">面具大杀神</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/181616.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑" data-img="http://cover.u17i.com/2019/01/12647_1548151610_S2I1NLqOh3UH.middle.jpg">笼中人</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/75859.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/科幻" data-img="http://cover.u17i.com/2014/07/4431881_1405044822_6XsM9VnAV7nY.middle.jpg">噬规者</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/68109.html" target="_blank" class="fl rank_comic_tit" data-info="少女/生活" data-img="http://cover.u17i.com/2017/03/4177111_1489509484_l8FsH161lxf2.middle.jpg">蓝翅</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/173315.html" target="_blank" class="fl rank_comic_tit" data-info="少年/动作" data-img="http://cover.u17i.com/2018/12/631752_1545392343_br8E4OT8T2Gk.middle.jpg">天师无门</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li class="click_read_more">
						<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss0_ob0_ac2_as0_wm0_co99_ct99_p1.html" target="_blank">查看更多</a>
					</li>
				</ul>
				<ul class="rank_bang rank_shaonian" style="display:none;">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/190.html" target="_blank" class="fl rank_comic_tit" data-info="少年/生活/恋爱" data-img="http://cover.u17i.com/2016/11/1213_1478322908_NjjWJwz3DTTd.middle.jpg">拜见女皇陛下</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/64481.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑/动作" data-img="http://cover.u17i.com/2017/05/188617_1494825352_IIcJW7vwiJia.middle.jpg">面具大杀神</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/181616.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑" data-img="http://cover.u17i.com/2019/01/12647_1548151610_S2I1NLqOh3UH.middle.jpg">笼中人</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/75859.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/科幻" data-img="http://cover.u17i.com/2014/07/4431881_1405044822_6XsM9VnAV7nY.middle.jpg">噬规者</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/173315.html" target="_blank" class="fl rank_comic_tit" data-info="少年/动作" data-img="http://cover.u17i.com/2018/12/631752_1545392343_br8E4OT8T2Gk.middle.jpg">天师无门</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/195.html" target="_blank" class="fl rank_comic_tit" data-info="少年/动作/科幻" data-img="http://cover.u17i.com/2017/06/1260_1497244625_ZKc7bCo47OrM.middle.jpg">雏蜂</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/27107.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑/体育" data-img="http://cover.u17i.com/2018/05/996329_1527061301_XQ3xho0NqPxd.middle.jpg">球娘</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/3166.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻" data-img="http://cover.u17i.com/2010/11/2786_1290484999_44z22704KDLT.middle.jpg">镇魂街</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li class="click_read_more">
						<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss0_ob0_ac2_as0_wm0_co99_ct99_p1.html" target="_blank">查看更多</a>
					</li>
				</ul>
				<ul class="rank_bang rank_shaonv" style="display:none;">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/130521.html" target="_blank" class="fl rank_comic_tit" data-info="少女/魔幻/恋爱" data-img="http://cover.u17i.com/2018/05/109268_1525508639_tO5XwY71OBoT.middle.jpg">妙手仙丹</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/143300.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑/恋爱/纯爱" data-img="http://cover.u17i.com/2018/10/18313169_1538844735_h449PTr2P8rq.middle.jpg">抢来的‘媳妇’’</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/68109.html" target="_blank" class="fl rank_comic_tit" data-info="少女/生活" data-img="http://cover.u17i.com/2017/03/4177111_1489509484_l8FsH161lxf2.middle.jpg">蓝翅</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/179399.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑/恋爱/纯爱" data-img="http://cover.u17i.com/2018/11/12270760_1541560657_3hjLX3NLWXVv.middle.jpg">古人上线</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/145630.html" target="_blank" class="fl rank_comic_tit" data-info="少女/生活/恋爱/纯爱" data-img="http://cover.u17i.com/2017/05/5475960_1495520371_2LOf5OgcNCkN.middle.jpg">心之茧</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/126616.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱/纯爱" data-img="http://cover.u17i.com/2019/01/14064142_1547217813_w5Y1RrUbfUzU.middle.jpg">空心恋人</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/114373.html" target="_blank" class="fl rank_comic_tit" data-info="少女/生活/恋爱/纯爱" data-img="http://cover.u17i.com/2017/04/775668_1493046244_VPSdoOP5PPUE.middle.jpg">当不良老大的男人</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/136641.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑/恋爱/纯爱" data-img="http://cover.u17i.com/2016/09/16818669_1475028266_FsTz41BgF64F.middle.jpg">温柔以待</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li class="click_read_more">
						<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss0_ob0_ac2_as0_wm0_co99_ct99_p1.html" target="_blank">查看更多</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- 签约漫画部分 end -->
		<!-- 新作推送部分 -->
		<div class="v5_comic_list comic_list_ts">
			<div class="fl comic_content">
				<div class="comic_content_tit">
					<h2>新作推送</h2>
					<ul class="fl comic_choose">
						<li class="rank_tab cur">全部</li>
						<li class="rank_tab">少年</li>
						<li class="rank_tab">少女</li>
					</ul>
					<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss2_ob0_ac0_as0_wm0_co99_ct99_p1.html?order=1" target="_blank" class="fr comic_look_more">更多</a>
				</div>
				<div class="overflow comic_list_slide_box">
					<div class="cutUl lazyload cut1">
						<ul class="comic_all">							
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/180673.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/20358515_1545729958_C3w4iqWLOqmi.big.jpg" alt="" title="时间都知道" /> </a>
								<a href="http://www.u17.com/comic/180673.html" class="comic_tit" target="_blank" title="时间都知道"><i class="ico_rec"></i>时间都知道</a>
								<p class="comic_type">少女/生活/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/180398.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/20124026_1544422490_3BvMN0qQEktj.big.jpg" alt="" title="close to you靠近你" /> </a>
								<a href="http://www.u17.com/comic/180398.html" class="comic_tit" target="_blank" title="close to you靠近你"><i class="ico_rec"></i>close to you靠近你</a>
								<p class="comic_type">少女/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/180394.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/20124026_1544421505_wu9ueNz7bApl.big.jpg" alt="" title="男神萌宝一锅端" /> </a>
								<a href="http://www.u17.com/comic/180394.html" class="comic_tit" target="_blank" title="男神萌宝一锅端"><i class="ico_rec"></i>男神萌宝一锅端</a>
								<p class="comic_type">少女/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/181802.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/21170026_1548723800_DCCzdwCx5McH.big.jpg" alt="" title="修罗少爷太嚣张" /> </a>
								<a href="http://www.u17.com/comic/181802.html" class="comic_tit" target="_blank" title="修罗少爷太嚣张"><i class="ico_rec"></i>修罗少爷太嚣张</a>
								<p class="comic_type">少女/搞笑/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/177309.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/08/21341450_1535615178_k4DqX4saDds4.big.jpg" alt="" title="一品高手" /> </a>
								<a href="http://www.u17.com/comic/177309.html" class="comic_tit" target="_blank" title="一品高手"><i class="ico_rec"></i>一品高手</a>
								<p class="comic_type">少年/动作</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/181815.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/21170026_1548744655_idiild9XdiA3.big.jpg" alt="" title="囚笼" /> </a>
								<a href="http://www.u17.com/comic/181815.html" class="comic_tit" target="_blank" title="囚笼"><i class="ico_rec"></i>囚笼</a>
								<p class="comic_type">少年/动作</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/180929.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/19569224_1546072937_MNakANM9aKY8.big.jpg" alt="" title="救命，我的男票是妖怪" /> </a>
								<a href="http://www.u17.com/comic/180929.html" class="comic_tit" target="_blank" title="救命，我的男票是妖怪"><i class="ico_rec"></i>救命，我的男票是妖怪</a>
								<p class="comic_type">少女/生活/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/180021.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/10411174_1543306289_k250cv405l2T.big.jpg" alt="" title="喵仙" /> </a>
								<a href="http://www.u17.com/comic/180021.html" class="comic_tit" target="_blank" title="喵仙"><i class="ico_rec"></i>喵仙</a>
								<p class="comic_type">少女/魔幻/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/180023.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/10411174_1543307251_0a733cD3cX27.big.jpg" alt="" title="紫色蔷薇" /> </a>
								<a href="http://www.u17.com/comic/180023.html" class="comic_tit" target="_blank" title="紫色蔷薇"><i class="ico_rec"></i>紫色蔷薇</a>
								<p class="comic_type">少女/生活/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/180026.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/10411174_1543309120_u8hHg7m66668.big.jpg" alt="" title="弟弟太粘人" /> </a>
								<a href="http://www.u17.com/comic/180026.html" class="comic_tit" target="_blank" title="弟弟太粘人"><i class="ico_rec"></i>弟弟太粘人</a>
								<p class="comic_type">少女/搞笑/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/180903.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/02/473285_1550043564_amvnMtruRauU.big.jpg" alt="" title="枉为集" /> </a>
								<a href="http://www.u17.com/comic/180903.html" class="comic_tit" target="_blank" title="枉为集">枉为集</a>
								<p class="comic_type">少女/生活</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/180931.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/13861079_1546078871_z7576A5uG6H6.big.jpg" alt="" title="龙敖天" /> </a>
								<a href="http://www.u17.com/comic/180931.html" class="comic_tit" target="_blank" title="龙敖天">龙敖天</a>
								<p class="comic_type">少年/魔幻/动作</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/180167.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/28454455_1543713983_77kI058Az58H.big.jpg" alt="" title="我不是陈圆圆" /> </a>
								<a href="http://www.u17.com/comic/180167.html" class="comic_tit" target="_blank" title="我不是陈圆圆"><i class="ico_rec"></i>我不是陈圆圆</a>
								<p class="comic_type">少女/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/179873.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/10835205_1542954012_4pWmbmvSB4pT.big.jpg" alt="" title="星梦芭蕾" /> </a>
								<a href="http://www.u17.com/comic/179873.html" class="comic_tit" target="_blank" title="星梦芭蕾"><i class="ico_rec"></i>星梦芭蕾</a>
								<p class="comic_type">少女/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/181010.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/29048927_1546408648_VVgvOJpvVmPZ.big.jpg" alt="" title="锦上香" /> </a>
								<a href="http://www.u17.com/comic/181010.html" class="comic_tit" target="_blank" title="锦上香"><i class="ico_rec"></i>锦上香</a>
								<p class="comic_type">少女/搞笑/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/181784.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/21170026_1548663593_pPakzNkzi0AE.big.jpg" alt="" title="恶魔少爷太难缠" /> </a>
								<a href="http://www.u17.com/comic/181784.html" class="comic_tit" target="_blank" title="恶魔少爷太难缠"><i class="ico_rec"></i>恶魔少爷太难缠</a>
								<p class="comic_type">少女/生活/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/181691.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/16818419_1548310582_5MsLuz3J5iul.big.jpg" alt="" title="地府朋友圈" /> </a>
								<a href="http://www.u17.com/comic/181691.html" class="comic_tit" target="_blank" title="地府朋友圈"><i class="ico_rec"></i>地府朋友圈</a>
								<p class="comic_type">少年/搞笑/生活</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/181006.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/19569224_1546399892_p3wSWWkTtyMK.big.jpg" alt="" title="宠婚来袭" /> </a>
								<a href="http://www.u17.com/comic/181006.html" class="comic_tit" target="_blank" title="宠婚来袭"><i class="ico_rec"></i>宠婚来袭</a>
								<p class="comic_type">少女/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/177541.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/09/12288596_1536303244_1ip1QH1dhi13.big.jpg" alt="" title="龙渊" /> </a>
								<a href="http://www.u17.com/comic/177541.html" class="comic_tit" target="_blank" title="龙渊"><i class="ico_rec"></i>龙渊</a>
								<p class="comic_type">少年/战争/推理</p>
							</li>
						</ul>
						<div class="comic_slide_prev" style="display:none;"></div>
						<div class="comic_slide_next"></div>
					</div>
					<div class="cutUl cut2" style="display: none;">						
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/180931.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/13861079_1546078871_z7576A5uG6H6.big.jpg" alt="" title="龙敖天" /> </a>
								<a href="http://www.u17.com/comic/180931.html" class="comic_tit" target="_blank" title="龙敖天">龙敖天</a>
								<p class="comic_type">通往至尊天</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/181691.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/16818419_1548310582_5MsLuz3J5iul.big.jpg" alt="" title="地府朋友圈" /> </a>
								<a href="http://www.u17.com/comic/181691.html" class="comic_tit" target="_blank" title="地府朋友圈"><i class="ico_rec"></i>地府朋友圈</a>
								<p class="comic_type">地府也有朋友圈？</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/177541.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/09/12288596_1536303244_1ip1QH1dhi13.big.jpg" alt="" title="龙渊" /> </a>
								<a href="http://www.u17.com/comic/177541.html" class="comic_tit" target="_blank" title="龙渊"><i class="ico_rec"></i>龙渊</a>
								<p class="comic_type">龙骨密码</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/181258.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/19018611_1547091448_5CAM481mEAfn.big.jpg" alt="" title="我在日本当道士" /> </a>
								<a href="http://www.u17.com/comic/181258.html" class="comic_tit" target="_blank" title="我在日本当道士"><i class="ico_rec"></i>我在日本当道士</a>
								<p class="comic_type">玉藻前与田中真守</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/180652.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/28806418_1545279465_yBUHxVbgRHu8.big.jpg" alt="" title="兼职神仙" /> </a>
								<a href="http://www.u17.com/comic/180652.html" class="comic_tit" target="_blank" title="兼职神仙"><i class="ico_rec"></i>兼职神仙</a>
								<p class="comic_type">某天突然当神仙</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/180659.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/28806418_1545284738_RA0wAPX50Kw6.big.jpg" alt="" title="荒野小屋" /> </a>
								<a href="http://www.u17.com/comic/180659.html" class="comic_tit" target="_blank" title="荒野小屋"><i class="ico_rec"></i>荒野小屋</a>
								<p class="comic_type">斩杀超级怪物</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/180661.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/27948382_1545289051_Gng889MfI899.big.jpg" alt="" title="虎猖狂" /> </a>
								<a href="http://www.u17.com/comic/180661.html" class="comic_tit" target="_blank" title="虎猖狂"><i class="ico_rec"></i>虎猖狂</a>
								<p class="comic_type">农民的抗争</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/179301.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/4023373_1541421085_jMiWz22z242C.big.jpg" alt="" title="灵修恋杀" /> </a>
								<a href="http://www.u17.com/comic/179301.html" class="comic_tit" target="_blank" title="灵修恋杀"><i class="ico_rec"></i>灵修恋杀</a>
								<p class="comic_type">灵修素人的后宫之路</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/181653.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/28622924_1548232338_rAROz7mUlSaz.big.jpg" alt="" title="吾主在此" /> </a>
								<a href="http://www.u17.com/comic/181653.html" class="comic_tit" target="_blank" title="吾主在此"><i class="ico_rec"></i>吾主在此</a>
								<p class="comic_type">三个使用魔力的种族</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/181510.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/29213354_1547781162_n4BMJDuJEDNi.big.jpg" alt="" title="从今天开始当城主" /> </a>
								<a href="http://www.u17.com/comic/181510.html" class="comic_tit" target="_blank" title="从今天开始当城主"><i class="ico_rec"></i>从今天开始当城主</a>
								<p class="comic_type">搞事！搞事！搞事！</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/179197.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/28697097_1541049444_5pgwQpTDzWV8.big.jpg" alt="" title="野草" /> </a>
								<a href="http://www.u17.com/comic/179197.html" class="comic_tit" target="_blank" title="野草"><i class="ico_rec"></i>野草</a>
								<p class="comic_type">怪物猎人现实版</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/181763.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/4309261_1548597731_Xx5BBt8OXkZ0.big.jpg" alt="" title="第四世界" /> </a>
								<a href="http://www.u17.com/comic/181763.html" class="comic_tit" target="_blank" title="第四世界"><i class="ico_rec"></i>第四世界</a>
								<p class="comic_type">无法被通关的游戏</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/181811.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/28622924_1548740831_p777p7ksP8xH.big.jpg" alt="" title="俺之森" /> </a>
								<a href="http://www.u17.com/comic/181811.html" class="comic_tit" target="_blank" title="俺之森">俺之森</a>
								<p class="comic_type">神秘牙兽改变世界</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/181003.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/3847466_1546364251_pdZP2axVvsCW.big.jpg" alt="" title="灵魂愿者" /> </a>
								<a href="http://www.u17.com/comic/181003.html" class="comic_tit" target="_blank" title="灵魂愿者"><i class="ico_rec"></i>灵魂愿者</a>
								<p class="comic_type">偶遇怨鬼的冒险之旅</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/180302.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/19456403_1544325776_izFP05Xl97zp.big.jpg" alt="" title="不思议异界游侠" /> </a>
								<a href="http://www.u17.com/comic/180302.html" class="comic_tit" target="_blank" title="不思议异界游侠"><i class="ico_rec"></i>不思议异界游侠</a>
								<p class="comic_type">不思议迷宫大冒险</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/180273.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/26852590_1545893141_Ts6yT3lLgXNI.big.jpg" alt="" title="临时侦探" /> </a>
								<a href="http://www.u17.com/comic/180273.html" class="comic_tit" target="_blank" title="临时侦探">临时侦探</a>
								<p class="comic_type">世界遁入混乱时</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/174834.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/09/27772711_1536454798_0pAPpO0XY9x1.big.jpg" alt="" title="大神纪" /> </a>
								<a href="http://www.u17.com/comic/174834.html" class="comic_tit" target="_blank" title="大神纪"><i class="ico_rec"></i>大神纪</a>
								<p class="comic_type">单剑壶酒，肩挑山河</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/175615.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/07/26333335_1532391707_qXx4qDO4XZq7.big.jpg" alt="" title="邪灵" /> </a>
								<a href="http://www.u17.com/comic/175615.html" class="comic_tit" target="_blank" title="邪灵">邪灵</a>
								<p class="comic_type">楼上的女孩</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/180629.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/26636560_1545181827_6XB504bg1go6.big.jpg" alt="" title="猎魔学园" /> </a>
								<a href="http://www.u17.com/comic/180629.html" class="comic_tit" target="_blank" title="猎魔学园"><i class="ico_rec"></i>猎魔学园</a>
								<p class="comic_type">猎魔战士</p>
							</li>
						</ul>
						<div class="comic_slide_prev" style="display:none;"></div>
						<div class="comic_slide_next"></div>
					</div>
					<div class="cutUl cut3" style="display: none;">
						<ul class="comic_shaonv">							
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/181802.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/21170026_1548723800_DCCzdwCx5McH.big.jpg" alt="" title="修罗少爷太嚣张" /> </a>
								<a href="http://www.u17.com/comic/181802.html" class="comic_tit" target="_blank" title="修罗少爷太嚣张"><i class="ico_rec"></i>修罗少爷太嚣张</a>
								<p class="comic_type">错惹修罗少爷</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/180929.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/19569224_1546072937_MNakANM9aKY8.big.jpg" alt="" title="救命，我的男票是妖怪" /> </a>
								<a href="http://www.u17.com/comic/180929.html" class="comic_tit" target="_blank" title="救命，我的男票是妖怪"><i class="ico_rec"></i>救命，我的男票是妖怪</a>
								<p class="comic_type">做我的猫吧</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/180021.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/10411174_1543306289_k250cv405l2T.big.jpg" alt="" title="喵仙" /> </a>
								<a href="http://www.u17.com/comic/180021.html" class="comic_tit" target="_blank" title="喵仙"><i class="ico_rec"></i>喵仙</a>
								<p class="comic_type">绝世飞仙，错投凡胎</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/180023.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/10411174_1543307251_0a733cD3cX27.big.jpg" alt="" title="紫色蔷薇" /> </a>
								<a href="http://www.u17.com/comic/180023.html" class="comic_tit" target="_blank" title="紫色蔷薇"><i class="ico_rec"></i>紫色蔷薇</a>
								<p class="comic_type">夜场的天骄之女</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/180026.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/10411174_1543309120_u8hHg7m66668.big.jpg" alt="" title="弟弟太粘人" /> </a>
								<a href="http://www.u17.com/comic/180026.html" class="comic_tit" target="_blank" title="弟弟太粘人"><i class="ico_rec"></i>弟弟太粘人</a>
								<p class="comic_type">大明星弟弟太粘人</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/180903.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/02/473285_1550043564_amvnMtruRauU.big.jpg" alt="" title="枉为集" /> </a>
								<a href="http://www.u17.com/comic/180903.html" class="comic_tit" target="_blank" title="枉为集">枉为集</a>
								<p class="comic_type">我就想要和你在一起</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/180167.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/28454455_1543713983_77kI058Az58H.big.jpg" alt="" title="我不是陈圆圆" /> </a>
								<a href="http://www.u17.com/comic/180167.html" class="comic_tit" target="_blank" title="我不是陈圆圆"><i class="ico_rec"></i>我不是陈圆圆</a>
								<p class="comic_type">少女流落明朝改命</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/179873.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/10835205_1542954012_4pWmbmvSB4pT.big.jpg" alt="" title="星梦芭蕾" /> </a>
								<a href="http://www.u17.com/comic/179873.html" class="comic_tit" target="_blank" title="星梦芭蕾"><i class="ico_rec"></i>星梦芭蕾</a>
								<p class="comic_type">芭蕾少女成长记</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/181010.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/29048927_1546408648_VVgvOJpvVmPZ.big.jpg" alt="" title="锦上香" /> </a>
								<a href="http://www.u17.com/comic/181010.html" class="comic_tit" target="_blank" title="锦上香"><i class="ico_rec"></i>锦上香</a>
								<p class="comic_type">美貌千金与帅气王爷</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/181784.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/21170026_1548663593_pPakzNkzi0AE.big.jpg" alt="" title="恶魔少爷太难缠" /> </a>
								<a href="http://www.u17.com/comic/181784.html" class="comic_tit" target="_blank" title="恶魔少爷太难缠"><i class="ico_rec"></i>恶魔少爷太难缠</a>
								<p class="comic_type">自命清高的恶魔少爷</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/181006.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/19569224_1546399892_p3wSWWkTtyMK.big.jpg" alt="" title="宠婚来袭" /> </a>
								<a href="http://www.u17.com/comic/181006.html" class="comic_tit" target="_blank" title="宠婚来袭"><i class="ico_rec"></i>宠婚来袭</a>
								<p class="comic_type">被结婚的她真的很懵</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/178980.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/10/28454455_1540427718_ou14A7780pd4.big.jpg" alt="" title="第五号放映厅" /> </a>
								<a href="http://www.u17.com/comic/178980.html" class="comic_tit" target="_blank" title="第五号放映厅">第五号放映厅</a>
								<p class="comic_type">神使和妖灵的电影</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/179398.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/28642275_1541557306_7Q66ZLGweuBZ.big.jpg" alt="" title="Mr贺，借个吻" /> </a>
								<a href="http://www.u17.com/comic/179398.html" class="comic_tit" target="_blank" title="Mr贺，借个吻"><i class="ico_rec"></i>Mr贺，借个吻</a>
								<p class="comic_type">脑洞少女与冰山少年</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/180843.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/13063442_1545817501_qL9MqmrAArMA.big.jpg" alt="" title="春闺秘录：厂公太撩人" /> </a>
								<a href="http://www.u17.com/comic/180843.html" class="comic_tit" target="_blank" title="春闺秘录：厂公太撩人"><i class="ico_rec"></i>春闺秘录：厂公太撩人</a>
								<p class="comic_type">厂公太会撩</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/180022.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/10411174_1543306804_uUClhHI8CqQF.big.jpg" alt="" title="总裁的老婆是大佬" /> </a>
								<a href="http://www.u17.com/comic/180022.html" class="comic_tit" target="_blank" title="总裁的老婆是大佬"><i class="ico_rec"></i>总裁的老婆是大佬</a>
								<p class="comic_type">灵魂互换娱乐圈姐妹</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/173434.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/06/21303764_1527919888_R3C2F58p28Bs.big.jpg" alt="" title="超能力小学生" /> </a>
								<a href="http://www.u17.com/comic/173434.html" class="comic_tit" target="_blank" title="超能力小学生"><i class="ico_rec"></i>超能力小学生</a>
								<p class="comic_type">神秘的地下室</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/178752.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/10/19025309_1539856303_uBvrZB7objO1.big.jpg" alt="" title="谪仙录" /> </a>
								<a href="http://www.u17.com/comic/178752.html" class="comic_tit" target="_blank" title="谪仙录"><i class="ico_rec"></i>谪仙录</a>
								<p class="comic_type">仙神争霸奇书太平经</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/180024.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/10411174_1543307803_e70pBkbdjvPg.big.jpg" alt="" title="系统逼我做女神" /> </a>
								<a href="http://www.u17.com/comic/180024.html" class="comic_tit" target="_blank" title="系统逼我做女神"><i class="ico_rec"></i>系统逼我做女神</a>
								<p class="comic_type">系统逼我做女神</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/180472.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/16818419_1547447525_36A70CzGPQO1.big.jpg" alt="" title="暴力俏丫头" /> </a>
								<a href="http://www.u17.com/comic/180472.html" class="comic_tit" target="_blank" title="暴力俏丫头">暴力俏丫头</a>
								<p class="comic_type">女主重生归来</p>
							</li>
						</ul>
						<div class="comic_slide_prev" style="display:none;"></div>
						<div class="comic_slide_next"></div>
					</div>
				</div>
			</div>
			<div class="fr comic_goup">
				<div class="overflow goup_tab">
					<h2 class="fl goup_tit">上升最快</h2>
					<a href="javascript:void(0);" class="fl rank_tab_up goup_tab_btn goup_tab_btn1 cur">全部</a>
					<a href="javascript:void(0);" class="fl rank_tab_up goup_tab_btn goup_tab_btn2">少年</a>
					<a href="javascript:void(0);" class="fl rank_tab_up goup_tab_btn goup_tab_bt3">少女</a>
				</div>
				<ul class="rank_bang rank_all">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/174834.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/动作" data-img="http://cover.u17i.com/2018/09/27772711_1536454798_0pAPpO0XY9x1.middle.jpg">大神纪</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/180652.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑/恋爱" data-img="http://cover.u17i.com/2018/12/28806418_1545279465_yBUHxVbgRHu8.middle.jpg">兼职神仙</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/181510.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/动作" data-img="http://cover.u17i.com/2019/01/29213354_1547781162_n4BMJDuJEDNi.middle.jpg">从今天开始当城主</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/181794.html" target="_blank" class="fl rank_comic_tit" data-info="少女/生活/恋爱" data-img="http://cover.u17i.com/2019/01/21170026_1548667950_IZZ1cLtx3KfL.middle.jpg">一纸契约</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/181802.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑/恋爱" data-img="http://cover.u17i.com/2019/01/21170026_1548723800_DCCzdwCx5McH.middle.jpg">修罗少爷太嚣张</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/177309.html" target="_blank" class="fl rank_comic_tit" data-info="少年/动作" data-img="http://cover.u17i.com/2018/08/21341450_1535615178_k4DqX4saDds4.middle.jpg">一品高手</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/179398.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑/恋爱" data-img="http://cover.u17i.com/2018/11/28642275_1541557306_7Q66ZLGweuBZ.middle.jpg">Mr贺，借个吻</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/181006.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱" data-img="http://cover.u17i.com/2019/01/19569224_1546399892_p3wSWWkTtyMK.middle.jpg">宠婚来袭</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li class="click_read_more">
						<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss2_ob0_ac0_as0_wm0_co99_ct99_p1.html" target="_blank">查看更多</a>
					</li>
				</ul>
				<ul class="rank_bang rank_shaonian" style="display:none;">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/174834.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/动作" data-img="http://cover.u17i.com/2018/09/27772711_1536454798_0pAPpO0XY9x1.middle.jpg">大神纪</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/180652.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑/恋爱" data-img="http://cover.u17i.com/2018/12/28806418_1545279465_yBUHxVbgRHu8.middle.jpg">兼职神仙</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/181510.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/动作" data-img="http://cover.u17i.com/2019/01/29213354_1547781162_n4BMJDuJEDNi.middle.jpg">从今天开始当城主</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/177309.html" target="_blank" class="fl rank_comic_tit" data-info="少年/动作" data-img="http://cover.u17i.com/2018/08/21341450_1535615178_k4DqX4saDds4.middle.jpg">一品高手</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/180651.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻" data-img="http://cover.u17i.com/2018/12/28806418_1545279170_w9rotI36Wob8.middle.jpg">缺一门</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/181258.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑/魔幻" data-img="http://cover.u17i.com/2019/01/19018611_1547091448_5CAM481mEAfn.middle.jpg">我在日本当道士</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/181691.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑/生活" data-img="http://cover.u17i.com/2019/01/16818419_1548310582_5MsLuz3J5iul.middle.jpg">地府朋友圈</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/179301.html" target="_blank" class="fl rank_comic_tit" data-info="少年/动作" data-img="http://cover.u17i.com/2018/11/4023373_1541421085_jMiWz22z242C.middle.jpg">灵修恋杀</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li class="click_read_more">
						<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss2_ob0_ac0_as0_wm0_co99_ct99_p1.html" target="_blank">查看更多</a>
					</li>
				</ul>
				<ul class="rank_bang rank_shaonv" style="display:none;">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/181794.html" target="_blank" class="fl rank_comic_tit" data-info="少女/生活/恋爱" data-img="http://cover.u17i.com/2019/01/21170026_1548667950_IZZ1cLtx3KfL.middle.jpg">一纸契约</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/181802.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑/恋爱" data-img="http://cover.u17i.com/2019/01/21170026_1548723800_DCCzdwCx5McH.middle.jpg">修罗少爷太嚣张</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/179398.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑/恋爱" data-img="http://cover.u17i.com/2018/11/28642275_1541557306_7Q66ZLGweuBZ.middle.jpg">Mr贺，借个吻</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/181006.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱" data-img="http://cover.u17i.com/2019/01/19569224_1546399892_p3wSWWkTtyMK.middle.jpg">宠婚来袭</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/180420.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱" data-img="http://cover.u17i.com/2018/12/16549869_1544499497_0w1G2XJRgJ3T.middle.jpg">隐婚新娘</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/180292.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱" data-img="http://cover.u17i.com/2018/12/28093725_1544105544_099jB0ro8nx9.middle.jpg">校霸，我们不合适</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/180508.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱" data-img="http://cover.u17i.com/2018/12/18899201_1544780500_j8Uv3bSbuSf8.middle.jpg">替身新娘</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/179348.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑/恋爱" data-img="http://cover.u17i.com/2018/11/19569224_1542091150_aaiIAPicWXxc.middle.jpg">寡人有疾 其名相思</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li class="click_read_more">
						<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss2_ob0_ac0_as0_wm0_co99_ct99_p1.html" target="_blank">查看更多</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- 新作推送部分 end -->
		<!-- 订阅漫画部分 -->
		<div class="v5_comic_list comic_list_dy">
			<div class="fl comic_content">
				<div class="comic_content_tit">
					<h2>订阅漫画</h2>
					<ul class="fl comic_choose">
						<li class="rank_tab cur">全部</li>
						<li class="rank_tab">少年</li>
						<li class="rank_tab">少女</li>
					</ul>
					<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?iv=12&order=1" target="_blank" class="fr comic_look_more">更多</a>
				</div>
				<div class="overflow comic_list_slide_box">
					<div class="cutUl lazyload cut1">
						<ul class="comic_all">							
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/159686.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/10/13023785_1508904337_r50IXuYV0Ix0.big.jpg" alt="" title="山海逆战" /> </a>
								<a href="http://www.u17.com/comic/159686.html" class="comic_tit" target="_blank" title="山海逆战">山海逆战</a>
								<p class="comic_type">少年/动作</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/158124.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/08/12288596_1534302034_ypv4NzhYKN2p.big.jpg" alt="" title="仙侠世界" /> </a>
								<a href="http://www.u17.com/comic/158124.html" class="comic_tit" target="_blank" title="仙侠世界">仙侠世界</a>
								<p class="comic_type">少年/魔幻/动作</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/1383.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/06/1218_1498209383_G2SuZY0937Pj.big.jpg" alt="" title="星STAR" /> </a>
								<a href="http://www.u17.com/comic/1383.html" class="comic_tit" target="_blank" title="星STAR">星STAR</a>
								<p class="comic_type">少年/动作/科幻</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/109159.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/06/10835205_1465780032_Zm89m6mMm87Y.big.jpg" alt="" title="灼灼琉璃夏" /> </a>
								<a href="http://www.u17.com/comic/109159.html" class="comic_tit" target="_blank" title="灼灼琉璃夏">灼灼琉璃夏</a>
								<p class="comic_type">少女/魔幻</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/89187.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2015/09/5475960_1442377167_qEFOQ3EN3qbj.big.jpg" alt="" title="HoneyHoney" /> </a>
								<a href="http://www.u17.com/comic/89187.html" class="comic_tit" target="_blank" title="HoneyHoney">HoneyHoney</a>
								<p class="comic_type">少女/生活/恋爱/纯爱</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/142893.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/07/18200788_1499075170_VfLNuuNNmjOQ.big.jpg" alt="" title="不良少年" /> </a>
								<a href="http://www.u17.com/comic/142893.html" class="comic_tit" target="_blank" title="不良少年">不良少年</a>
								<p class="comic_type">少年/动作</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/171319.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/09/22566244_1536128083_Uc1wwwm2rVw4.big.jpg" alt="" title="傲娇鬼王爱上我" /> </a>
								<a href="http://www.u17.com/comic/171319.html" class="comic_tit" target="_blank" title="傲娇鬼王爱上我"><i class="ico_rec"></i>傲娇鬼王爱上我</a>
								<p class="comic_type">少女/恋爱/惊奇</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/136190.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/02/16752138_1486371673_HB64qpbeQnQv.big.jpg" alt="" title="极品修真少年" /> </a>
								<a href="http://www.u17.com/comic/136190.html" class="comic_tit" target="_blank" title="极品修真少年"><i class="ico_rec"></i>极品修真少年</a>
								<p class="comic_type">少年/魔幻/动作</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/116382.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/02/10835205_1454405022_8N9TfZ3mT8t8.big.jpg" alt="" title="宛香" /> </a>
								<a href="http://www.u17.com/comic/116382.html" class="comic_tit" target="_blank" title="宛香"><i class="ico_rec"></i>宛香</a>
								<p class="comic_type">少女/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/154208.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/03/18683422_1521789466_Q4h6Bk0Z1s0Z.big.jpg" alt="" title="女子学院的男生" /> </a>
								<a href="http://www.u17.com/comic/154208.html" class="comic_tit" target="_blank" title="女子学院的男生"><i class="ico_rec"></i>女子学院的男生</a>
								<p class="comic_type">少年/搞笑/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/169048.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/02/10835205_1517465729_mnx4ACXC4xx4.big.jpg" alt="" title="我家殿下要挂了" /> </a>
								<a href="http://www.u17.com/comic/169048.html" class="comic_tit" target="_blank" title="我家殿下要挂了">我家殿下要挂了</a>
								<p class="comic_type">少女/生活/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/139575.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/09/13367798_1505813719_n9CE47c4Sc3e.big.jpg" alt="" title="桃花宝典" /> </a>
								<a href="http://www.u17.com/comic/139575.html" class="comic_tit" target="_blank" title="桃花宝典"><i class="ico_rec"></i>桃花宝典</a>
								<p class="comic_type">少年/动作</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/136625.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/07/16818419_1499071612_6pBwyyA6ApxN.big.jpg" alt="" title="豪门天价前妻" /> </a>
								<a href="http://www.u17.com/comic/136625.html" class="comic_tit" target="_blank" title="豪门天价前妻"><i class="ico_rec"></i>豪门天价前妻</a>
								<p class="comic_type">少女/生活/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/138804.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/02/10835205_1488186109_4l740jVGc07n.big.jpg" alt="" title="绝世武神" /> </a>
								<a href="http://www.u17.com/comic/138804.html" class="comic_tit" target="_blank" title="绝世武神">绝世武神</a>
								<p class="comic_type">少年/魔幻/动作</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/126112.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/04/6214548_1524211182_3ZLJAJM18jBd.big.jpg" alt="" title="异闻录" /> </a>
								<a href="http://www.u17.com/comic/126112.html" class="comic_tit" target="_blank" title="异闻录">异闻录</a>
								<p class="comic_type">少年/惊奇</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/166483.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/07/10449554_1533018886_u67hH2U2blgG.big.jpg" alt="" title="万界仙踪" /> </a>
								<a href="http://www.u17.com/comic/166483.html" class="comic_tit" target="_blank" title="万界仙踪">万界仙踪</a>
								<p class="comic_type">少年/魔幻/动作</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/132865.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/13063442_1543572346_28wZ2Up8r488.big.jpg" alt="" title="中华神医" /> </a>
								<a href="http://www.u17.com/comic/132865.html" class="comic_tit" target="_blank" title="中华神医">中华神医</a>
								<p class="comic_type">少年/搞笑/科幻</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/71069.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/09/4276398_1504838878_J6ExJm8Ss76N.big.jpg" alt="" title="狂神" /> </a>
								<a href="http://www.u17.com/comic/71069.html" class="comic_tit" target="_blank" title="狂神">狂神</a>
								<p class="comic_type">少年/魔幻</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/143815.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/01/16600503_1485231272_4bOz44BilRrF.big.jpg" alt="" title="女汉子调教记" /> </a>
								<a href="http://www.u17.com/comic/143815.html" class="comic_tit" target="_blank" title="女汉子调教记">女汉子调教记</a>
								<p class="comic_type">少女/搞笑/生活</p>
							</li>
						</ul>
						<div class="comic_slide_prev" style="display:none;"></div>
						<div class="comic_slide_next"></div>
					</div>
					<div class="cutUl cut2" style="display: none;">
						<ul class="comic_shaonian">							
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/142893.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/07/18200788_1499075170_VfLNuuNNmjOQ.big.jpg" alt="" title="不良少年" /> </a>
								<a href="http://www.u17.com/comic/142893.html" class="comic_tit" target="_blank" title="不良少年">不良少年</a>
								<p class="comic_type">不良少年入高中</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/136190.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/02/16752138_1486371673_HB64qpbeQnQv.big.jpg" alt="" title="极品修真少年" /> </a>
								<a href="http://www.u17.com/comic/136190.html" class="comic_tit" target="_blank" title="极品修真少年"><i class="ico_rec"></i>极品修真少年</a>
								<p class="comic_type">修仙少年穿越世界</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/154208.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/03/18683422_1521789466_Q4h6Bk0Z1s0Z.big.jpg" alt="" title="女子学院的男生" /> </a>
								<a href="http://www.u17.com/comic/154208.html" class="comic_tit" target="_blank" title="女子学院的男生"><i class="ico_rec"></i>女子学院的男生</a>
								<p class="comic_type">少年进入女子学院</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/139575.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/09/13367798_1505813719_n9CE47c4Sc3e.big.jpg" alt="" title="桃花宝典" /> </a>
								<a href="http://www.u17.com/comic/139575.html" class="comic_tit" target="_blank" title="桃花宝典"><i class="ico_rec"></i>桃花宝典</a>
								<p class="comic_type">阅天下风云傲视群雄</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/138804.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/02/10835205_1488186109_4l740jVGc07n.big.jpg" alt="" title="绝世武神" /> </a>
								<a href="http://www.u17.com/comic/138804.html" class="comic_tit" target="_blank" title="绝世武神">绝世武神</a>
								<p class="comic_type">少年的武神进化路</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/126112.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/04/6214548_1524211182_3ZLJAJM18jBd.big.jpg" alt="" title="异闻录" /> </a>
								<a href="http://www.u17.com/comic/126112.html" class="comic_tit" target="_blank" title="异闻录">异闻录</a>
								<p class="comic_type">千万不要在晚上看</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/166483.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/07/10449554_1533018886_u67hH2U2blgG.big.jpg" alt="" title="万界仙踪" /> </a>
								<a href="http://www.u17.com/comic/166483.html" class="comic_tit" target="_blank" title="万界仙踪">万界仙踪</a>
								<p class="comic_type">复仇少年的修仙之路</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/132865.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/13063442_1543572346_28wZ2Up8r488.big.jpg" alt="" title="中华神医" /> </a>
								<a href="http://www.u17.com/comic/132865.html" class="comic_tit" target="_blank" title="中华神医">中华神医</a>
								<p class="comic_type">绝世医术做村医</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/71069.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/09/4276398_1504838878_J6ExJm8Ss76N.big.jpg" alt="" title="狂神" /> </a>
								<a href="http://www.u17.com/comic/71069.html" class="comic_tit" target="_blank" title="狂神">狂神</a>
								<p class="comic_type">重整世界棋局的少年</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/115069.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/01/10835205_1516767461_BVCnj7v5J1Um.big.jpg" alt="" title="唐寅在异界" /> </a>
								<a href="http://www.u17.com/comic/115069.html" class="comic_tit" target="_blank" title="唐寅在异界">唐寅在异界</a>
								<p class="comic_type">王者之路</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/99874.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2015/09/10449554_1442814412_YEa773oaYMH5.big.jpg" alt="" title="妖神记（全彩）" /> </a>
								<a href="http://www.u17.com/comic/99874.html" class="comic_tit" target="_blank" title="妖神记（全彩）"><i class="ico_rec"></i>妖神记（全彩）</a>
								<p class="comic_type">妖灵世界中的生存</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/579.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/05/1750_1495123741_P9GA9lh4nPj4.big.jpg" alt="" title="熊猫手札" /> </a>
								<a href="http://www.u17.com/comic/579.html" class="comic_tit" target="_blank" title="熊猫手札">熊猫手札</a>
								<p class="comic_type">不圆的熊猫不凡的生活</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/148892.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/08/10449554_1502244861_m5L448m855ch.big.jpg" alt="" title="染色体47号" /> </a>
								<a href="http://www.u17.com/comic/148892.html" class="comic_tit" target="_blank" title="染色体47号">染色体47号</a>
								<p class="comic_type">少年靠拳头打拼末世</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/146233.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/05/12647_1494949142_5d94SKgH34g1.big.jpg" alt="" title="爱幽的密室" /> </a>
								<a href="http://www.u17.com/comic/146233.html" class="comic_tit" target="_blank" title="爱幽的密室"><i class="ico_rec"></i>爱幽的密室</a>
								<p class="comic_type">神秘恐怖的密室游戏</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/116516.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/11/13367798_1512029712_Sf47ZnjJhxss.big.jpg" alt="" title="绝品透视" /> </a>
								<a href="http://www.u17.com/comic/116516.html" class="comic_tit" target="_blank" title="绝品透视">绝品透视</a>
								<p class="comic_type">神奇的透视功能</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/149027.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/04/12340708_1492150647_68H6N9T2HvVh.big.jpg" alt="" title="很纯很暧昧" /> </a>
								<a href="http://www.u17.com/comic/149027.html" class="comic_tit" target="_blank" title="很纯很暧昧">很纯很暧昧</a>
								<p class="comic_type">少年获神眼镜成杀手</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/147593.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/04/19036912_1491395190_xpP09qFG5qX5.big.jpg" alt="" title="夜半直播" /> </a>
								<a href="http://www.u17.com/comic/147593.html" class="comic_tit" target="_blank" title="夜半直播"><i class="ico_rec"></i>夜半直播</a>
								<p class="comic_type">恐怖的灵异节目</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/40504.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/02/2861375_1486370913_Xo3aC9BGox5Z.big.jpg" alt="" title="盗墓笔记（官方正版）" /> </a>
								<a href="http://www.u17.com/comic/40504.html" class="comic_tit" target="_blank" title="盗墓笔记（官方正版）"><i class="ico_rec"></i>盗墓笔记（官方正版）</a>
								<p class="comic_type">盗墓笔记试读登录！</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/175446.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/07/10449554_1531913643_1Lk9as0zwJ0S.big.jpg" alt="" title="透视之眼（精修版）" /> </a>
								<a href="http://www.u17.com/comic/175446.html" class="comic_tit" target="_blank" title="透视之眼（精修版）">透视之眼（精修版）</a>
								<p class="comic_type">拥有奇特能力的双眼</p>
							</li>
						</ul>
						<div class="comic_slide_prev" style="display:none;"></div>
						<div class="comic_slide_next"></div>
					</div>
					<div class="cutUl cut3" style="display: none;">
						<ul class="comic_shaonv">							
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/171319.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/09/22566244_1536128083_Uc1wwwm2rVw4.big.jpg" alt="" title="傲娇鬼王爱上我" /> </a>
								<a href="http://www.u17.com/comic/171319.html" class="comic_tit" target="_blank" title="傲娇鬼王爱上我"><i class="ico_rec"></i>傲娇鬼王爱上我</a>
								<p class="comic_type"></p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/116382.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/02/10835205_1454405022_8N9TfZ3mT8t8.big.jpg" alt="" title="宛香" /> </a>
								<a href="http://www.u17.com/comic/116382.html" class="comic_tit" target="_blank" title="宛香"><i class="ico_rec"></i>宛香</a>
								<p class="comic_type">当婚姻遭遇爱情</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/169048.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/02/10835205_1517465729_mnx4ACXC4xx4.big.jpg" alt="" title="我家殿下要挂了" /> </a>
								<a href="http://www.u17.com/comic/169048.html" class="comic_tit" target="_blank" title="我家殿下要挂了">我家殿下要挂了</a>
								<p class="comic_type">推到小侯爷</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/136625.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/07/16818419_1499071612_6pBwyyA6ApxN.big.jpg" alt="" title="豪门天价前妻" /> </a>
								<a href="http://www.u17.com/comic/136625.html" class="comic_tit" target="_blank" title="豪门天价前妻"><i class="ico_rec"></i>豪门天价前妻</a>
								<p class="comic_type">成为了豪门前妻</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/143815.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/01/16600503_1485231272_4bOz44BilRrF.big.jpg" alt="" title="女汉子调教记" /> </a>
								<a href="http://www.u17.com/comic/143815.html" class="comic_tit" target="_blank" title="女汉子调教记">女汉子调教记</a>
								<p class="comic_type">呆萌少年与不良少女</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/146403.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/07/18899201_1499070372_Q2Ex5NSCE2K9.big.jpg" alt="" title="重生豪门之强势归来" /> </a>
								<a href="http://www.u17.com/comic/146403.html" class="comic_tit" target="_blank" title="重生豪门之强势归来"><i class="ico_rec"></i>重生豪门之强势归来</a>
								<p class="comic_type">重生后的复仇</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/167077.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/12/23168997_1514457567_qsDhVkTQBoDC.big.jpg" alt="" title="我的猫咪上仙" /> </a>
								<a href="http://www.u17.com/comic/167077.html" class="comic_tit" target="_blank" title="我的猫咪上仙"><i class="ico_rec"></i>我的猫咪上仙</a>
								<p class="comic_type">被主人吸爆的猫神仙</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/92854.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/04/4635281_1525094533_VBv2I4bw5v3E.big.jpg" alt="" title="男女受受不清" /> </a>
								<a href="http://www.u17.com/comic/92854.html" class="comic_tit" target="_blank" title="男女受受不清">男女受受不清</a>
								<p class="comic_type">黑暗料理引发的血案</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/154257.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/06/18899201_1529523773_3k5G0tKOb3bF.big.jpg" alt="" title="不嫁总裁嫁男仆" /> </a>
								<a href="http://www.u17.com/comic/154257.html" class="comic_tit" target="_blank" title="不嫁总裁嫁男仆"><i class="ico_rec"></i>不嫁总裁嫁男仆</a>
								<p class="comic_type">名媛被算计身败名裂</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/141397.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/02/17825220_1486709251_sqjstb1Ds7B1.big.jpg" alt="" title="恋爱生死簿" /> </a>
								<a href="http://www.u17.com/comic/141397.html" class="comic_tit" target="_blank" title="恋爱生死簿"><i class="ico_rec"></i>恋爱生死簿</a>
								<p class="comic_type">死神遭遇黑道太子</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/139576.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/07/13367798_1499160849_HKvB2fv2JX4V.big.jpg" alt="" title="极品辣妈好V5" /> </a>
								<a href="http://www.u17.com/comic/139576.html" class="comic_tit" target="_blank" title="极品辣妈好V5"><i class="ico_rec"></i>极品辣妈好V5</a>
								<p class="comic_type">极品辣妈</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/126278.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/03/14976232_1489719196_G2102U7Aix6w.big.jpg" alt="" title="他来了，请闭眼" /> </a>
								<a href="http://www.u17.com/comic/126278.html" class="comic_tit" target="_blank" title="他来了，请闭眼">他来了，请闭眼</a>
								<p class="comic_type">离奇案件犯罪与少女</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/112798.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2015/12/12340708_1449556819_G7E38gVOGG8G.big.jpg" alt="" title="男神在隔壁" /> </a>
								<a href="http://www.u17.com/comic/112798.html" class="comic_tit" target="_blank" title="男神在隔壁">男神在隔壁</a>
								<p class="comic_type">跟老板男神住隔壁</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/128951.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/07/12340708_1467623757_pKyYj2U6kkyk.big.jpg" alt="" title="沉香破" /> </a>
								<a href="http://www.u17.com/comic/128951.html" class="comic_tit" target="_blank" title="沉香破">沉香破</a>
								<p class="comic_type">一个家族的爱怨情仇</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/142882.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/10/18242498_1540878969_sdh1d65vV6dv.big.jpg" alt="" title="恋与星途" /> </a>
								<a href="http://www.u17.com/comic/142882.html" class="comic_tit" target="_blank" title="恋与星途"><i class="ico_rec"></i>恋与星途</a>
								<p class="comic_type">男神们の私密情事</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/30827.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/04/564797_1459669046_ZtdJuU7R0j0j.big.jpg" alt="" title="幽灵酒店（全彩）" /> </a>
								<a href="http://www.u17.com/comic/30827.html" class="comic_tit" target="_blank" title="幽灵酒店（全彩）">幽灵酒店（全彩）</a>
								<p class="comic_type">奇异幽灵酒店</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/153019.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/11/13082613_1511236794_fY26ic0zT02F.big.jpg" alt="" title="总裁的契约情人" /> </a>
								<a href="http://www.u17.com/comic/153019.html" class="comic_tit" target="_blank" title="总裁的契约情人"><i class="ico_rec"></i>总裁的契约情人</a>
								<p class="comic_type">冷面总裁</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/146241.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/07/18833170_1499071045_pXCXhsxq8zk8.big.jpg" alt="" title="拒绝暴君宠：凶猛王妃" /> </a>
								<a href="http://www.u17.com/comic/146241.html" class="comic_tit" target="_blank" title="拒绝暴君宠：凶猛王妃"><i class="ico_rec"></i>拒绝暴君宠：凶猛王妃</a>
								<p class="comic_type">美女特工穿越逗暴君</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/135340.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/09/2861375_1473404256_84hV377HdHVv.big.jpg" alt="" title="三生三世十里桃花" /> </a>
								<a href="http://www.u17.com/comic/135340.html" class="comic_tit" target="_blank" title="三生三世十里桃花">三生三世十里桃花</a>
								<p class="comic_type">情若流水爱似桃花</p>
							</li>
						</ul>
						<div class="comic_slide_prev" style="display:none;"></div>
						<div class="comic_slide_next"></div>
					</div>
				</div>
			</div>
			<div class="fr comic_goup">
				<div class="overflow goup_tab">
					<h2 class="fl goup_tit">上升最快</h2>
					<a href="javascript:void(0);" class="fl rank_tab_up goup_tab_btn goup_tab_btn1 cur">全部</a>
					<a href="javascript:void(0);" class="fl rank_tab_up goup_tab_btn goup_tab_btn2">少年</a>
					<a href="javascript:void(0);" class="fl rank_tab_up goup_tab_btn goup_tab_bt3">少女</a>
				</div>
				<ul class="rank_bang rank_all">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/190.html" target="_blank" class="fl rank_comic_tit" data-info="少年/生活/恋爱" data-img="http://cover.u17i.com/2016/11/1213_1478322908_NjjWJwz3DTTd.middle.jpg">拜见女皇陛下</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/13707.html" target="_blank" class="fl rank_comic_tit" data-info="少年/科幻/推理" data-img="http://cover.u17i.com/2014/10/12647_1413948764_xeZ2KC11sccR.middle.jpg">端脑</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/136641.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑/恋爱/纯爱" data-img="http://cover.u17i.com/2016/09/16818669_1475028266_FsTz41BgF64F.middle.jpg">温柔以待</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/142882.html" target="_blank" class="fl rank_comic_tit" data-info="少女/生活/恋爱/纯爱" data-img="http://cover.u17i.com/2018/10/18242498_1540878969_sdh1d65vV6dv.middle.jpg">恋与星途</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/121836.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑/魔幻" data-img="http://cover.u17i.com/2017/06/4486442_1496497477_zss3tq9b2Sq2.middle.jpg">驭灵师</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/99874.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻" data-img="http://cover.u17i.com/2015/09/10449554_1442814412_YEa773oaYMH5.middle.jpg">妖神记（全彩）</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/167077.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱/纯爱" data-img="http://cover.u17i.com/2017/12/23168997_1514457567_qsDhVkTQBoDC.middle.jpg">我的猫咪上仙</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/115838.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/动作" data-img="http://cover.u17i.com/2017/08/13442161_1501644190_FqJQ6gg5fkmq.middle.jpg">最后的召唤师</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li class="click_read_more">
						<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?iv=12" target="_blank">查看更多</a>
					</li>
				</ul>
				<ul class="rank_bang rank_shaonian" style="display:none;">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/190.html" target="_blank" class="fl rank_comic_tit" data-info="少年/生活/恋爱" data-img="http://cover.u17i.com/2016/11/1213_1478322908_NjjWJwz3DTTd.middle.jpg">拜见女皇陛下</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/13707.html" target="_blank" class="fl rank_comic_tit" data-info="少年/科幻/推理" data-img="http://cover.u17i.com/2014/10/12647_1413948764_xeZ2KC11sccR.middle.jpg">端脑</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/121836.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑/魔幻" data-img="http://cover.u17i.com/2017/06/4486442_1496497477_zss3tq9b2Sq2.middle.jpg">驭灵师</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/99874.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻" data-img="http://cover.u17i.com/2015/09/10449554_1442814412_YEa773oaYMH5.middle.jpg">妖神记（全彩）</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/115838.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/动作" data-img="http://cover.u17i.com/2017/08/13442161_1501644190_FqJQ6gg5fkmq.middle.jpg">最后的召唤师</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/71064.html" target="_blank" class="fl rank_comic_tit" data-info="少年/恋爱/动作" data-img="http://cover.u17i.com/2017/07/4276398_1499156041_0ere6Y6eSO4F.middle.jpg">斗罗大陆</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/154208.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑/恋爱" data-img="http://cover.u17i.com/2018/03/18683422_1521789466_Q4h6Bk0Z1s0Z.middle.jpg">女子学院的男生</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/98416.html" target="_blank" class="fl rank_comic_tit" data-info="少年/恋爱/惊奇" data-img="http://cover.u17i.com/2018/07/311424_1531996709_aZAOYW7e60JC.middle.jpg">肖花镇</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li class="click_read_more">
						<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?iv=12" target="_blank">查看更多</a>
					</li>
				</ul>
				<ul class="rank_bang rank_shaonv" style="display:none;">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/136641.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑/恋爱/纯爱" data-img="http://cover.u17i.com/2016/09/16818669_1475028266_FsTz41BgF64F.middle.jpg">温柔以待</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/142882.html" target="_blank" class="fl rank_comic_tit" data-info="少女/生活/恋爱/纯爱" data-img="http://cover.u17i.com/2018/10/18242498_1540878969_sdh1d65vV6dv.middle.jpg">恋与星途</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/167077.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱/纯爱" data-img="http://cover.u17i.com/2017/12/23168997_1514457567_qsDhVkTQBoDC.middle.jpg">我的猫咪上仙</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/177855.html" target="_blank" class="fl rank_comic_tit" data-info="少女/生活/恋爱/纯爱" data-img="http://cover.u17i.com/2018/09/27603463_1537273834_4IR7IGDpE3d4.middle.jpg">最爱你的那十年</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/136625.html" target="_blank" class="fl rank_comic_tit" data-info="少女/生活/恋爱" data-img="http://cover.u17i.com/2017/07/16818419_1499071612_6pBwyyA6ApxN.middle.jpg">豪门天价前妻</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/180832.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑/恋爱/纯爱" data-img="http://cover.u17i.com/2018/12/29009917_1545807122_rwe5QBzWRsEr.middle.jpg">失恋中</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/176648.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑/恋爱" data-img="http://cover.u17i.com/2018/08/16818419_1534230419_1lb877V1M5r5.middle.jpg">王爷不能撩</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/180817.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱/纯爱" data-img="http://cover.u17i.com/2018/12/29009917_1545794207_tUF6pFiaWdFW.middle.jpg">最后的僵尸</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li class="click_read_more">
						<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?iv=12" target="_blank">查看更多</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- 订阅漫画部分 end -->
		<!-- 少年漫画部分 -->
		<div class="v5_comic_list lazyload comic_list_man">
			<div class="fl comic_content">
				<div class="comic_content_tit">
					<a href="http://www.u17.com/comic_list/th99_gr4_ca99_ss0_ob0_ac0_as0_wm0_co99_ct99_p1.html?order=1" target="_blank" class="fr comic_look_more">更多</a>
				</div>
				<div class="overflow comic_list_slide_box">
					<ul>						
						<li>
							<!--  -->
							<!--  -->
							<a href="http://www.u17.com/comic/181235.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/10847468_1547024042_wQVUVA2dW9Am.big.jpg" alt="" title="罪徒" /> </a>
							<a href="http://www.u17.com/comic/181235.html" class="comic_tit" target="_blank" title="罪徒">罪徒</a>
							<p class="comic_type">“新世界”计划</p>
						</li>
						<li>
							<!--  -->
							<!--  -->
							<a href="http://www.u17.com/comic/181097.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/28372294_1546619864_f2pWVAiWVvxv.big.jpg" alt="" title="篮球之杀手本色" /> </a>
							<a href="http://www.u17.com/comic/181097.html" class="comic_tit" target="_blank" title="篮球之杀手本色">篮球之杀手本色</a>
							<p class="comic_type">篮球场上最犀利的</p>
						</li>
						<li>
							<!--  -->
							<!--  -->
							<a href="http://www.u17.com/comic/175016.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/07/11875241_1531362993_QtyciO5lUx9o.big.jpg" alt="" title="奥拉星·平行宇宙" /> </a>
							<a href="http://www.u17.com/comic/175016.html" class="comic_tit" target="_blank" title="奥拉星·平行宇宙"><i class="ico_rec"></i>奥拉星·平行宇宙</a>
							<p class="comic_type">穿越游戏世界</p>
						</li>
						<li>
							<!--  -->
							<!--  -->
							<a href="http://www.u17.com/comic/175497.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/07/27932240_1531999435_R38I4E387e52.big.jpg" alt="" title="超级神医系统" /> </a>
							<a href="http://www.u17.com/comic/175497.html" class="comic_tit" target="_blank" title="超级神医系统"><i class="ico_rec"></i>超级神医系统</a>
							<p class="comic_type">山村少年的奇遇</p>
						</li>
						<li>
							<!--  -->
							<!--  -->
							<a href="http://www.u17.com/comic/181664.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/18696896_1548254917_OSz658a2bods.big.jpg" alt="" title="存在·2058" /> </a>
							<a href="http://www.u17.com/comic/181664.html" class="comic_tit" target="_blank" title="存在·2058">存在·2058</a>
							<p class="comic_type">仿生人和人类共处</p>
						</li>
						<li>
							<!--  -->
							<!-- <em class="ico_tiaoman"></em> -->
							<a href="http://www.u17.com/comic/181900.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/02/29349278_1549029498_4wIjXUcSEyjK.big.jpg" alt="" title="泡友记" /> </a>
							<a href="http://www.u17.com/comic/181900.html" class="comic_tit" target="_blank" title="泡友记"><i class="ico_rec"></i>泡友记</a>
							<p class="comic_type">合租一起泡面！</p>
						</li>
						<li>
							<!--  -->
							<!--  -->
							<a href="http://www.u17.com/comic/182088.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/02/1630117_1549853837_CSzGHDHASB2H.big.jpg" alt="" title="黑曜石" /> </a>
							<a href="http://www.u17.com/comic/182088.html" class="comic_tit" target="_blank" title="黑曜石">黑曜石</a>
							<p class="comic_type">跨越整个大陆冒险</p>
						</li>
						<li>
							<!--  -->
							<!--  -->
							<a href="http://www.u17.com/comic/180489.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/4681191_1546743897_PNktwkPnuDmP.big.jpg" alt="" title="忠极护卫" /> </a>
							<a href="http://www.u17.com/comic/180489.html" class="comic_tit" target="_blank" title="忠极护卫">忠极护卫</a>
							<p class="comic_type">好厨子超级英雄</p>
						</li>
						<li>
							<!--  -->
							<!--  -->
							<a href="http://www.u17.com/comic/179991.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/28832907_1543218811_ZAYDddUzHRDY.big.jpg" alt="" title="闪耀全场" /> </a>
							<a href="http://www.u17.com/comic/179991.html" class="comic_tit" target="_blank" title="闪耀全场">闪耀全场</a>
							<p class="comic_type">前进吧北港高中少年</p>
						</li>
						<li>
							<!--  -->
							<!--  -->
							<a href="http://www.u17.com/comic/181751.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/340211_1548554452_ZQM884aq2rZ4.big.jpg" alt="" title="水边的阿狄丽娜" /> </a>
							<a href="http://www.u17.com/comic/181751.html" class="comic_tit" target="_blank" title="水边的阿狄丽娜">水边的阿狄丽娜</a>
							<p class="comic_type">战争并没有结束</p>
						</li>
						<li>
							<!--  -->
							<!--  -->
							<a href="http://www.u17.com/comic/179437.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/28575455_1548830642_D95qwJztj1q7.big.jpg" alt="" title="三十五日" /> </a>
							<a href="http://www.u17.com/comic/179437.html" class="comic_tit" target="_blank" title="三十五日">三十五日</a>
							<p class="comic_type">35日的旅程</p>
						</li>
						<li>
							<!--  -->
							<!--  -->
							<a href="http://www.u17.com/comic/181858.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/23397070_1548864771_HQ7R7Rhj88R7.big.jpg" alt="" title="古都道玄" /> </a>
							<a href="http://www.u17.com/comic/181858.html" class="comic_tit" target="_blank" title="古都道玄">古都道玄</a>
							<p class="comic_type">七玄鬼刹阵</p>
						</li>
						<li>
							<!--  -->
							<!--  -->
							<a href="http://www.u17.com/comic/181723.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/22554790_1548468593_JhdDdLbNAHtj.big.jpg" alt="" title="不周山" /> </a>
							<a href="http://www.u17.com/comic/181723.html" class="comic_tit" target="_blank" title="不周山">不周山</a>
							<p class="comic_type">不周山上不周仙</p>
						</li>
						<li>
							<!--  -->
							<!-- <em class="ico_tiaoman"></em> -->
							<a href="http://www.u17.com/comic/176500.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/09/16065301_1536425202_tT3yptpsxxtY.big.jpg" alt="" title="黑石" /> </a>
							<a href="http://www.u17.com/comic/176500.html" class="comic_tit" target="_blank" title="黑石">黑石</a>
							<p class="comic_type">浩瀚星系的黑石传奇</p>
						</li>
						<li>
							<!--  -->
							<!-- <em class="ico_tiaoman"></em> -->
							<a href="http://www.u17.com/comic/180774.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/20536808_1545660292_e7mcbZMFE4FB.big.jpg" alt="" title="王城事记" /> </a>
							<a href="http://www.u17.com/comic/180774.html" class="comic_tit" target="_blank" title="王城事记">王城事记</a>
							<p class="comic_type">天空升起赤色星云</p>
						</li>
						<li>
							<!--  -->
							<!--  -->
							<a href="http://www.u17.com/comic/176713.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/08/13068253_1534746243_a7IZE0K4vANL.big.jpg" alt="" title="创生契约" /> </a>
							<a href="http://www.u17.com/comic/176713.html" class="comic_tit" target="_blank" title="创生契约"><i class="ico_rec"></i>创生契约</a>
							<p class="comic_type">科学怪人的战斗</p>
						</li>
						<li>
							<!--  -->
							<!-- <em class="ico_tiaoman"></em> -->
							<a href="http://www.u17.com/comic/181671.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/29288729_1548263247_Rkzq4vRmqzrR.big.jpg" alt="" title="娱乐春秋" /> </a>
							<a href="http://www.u17.com/comic/181671.html" class="comic_tit" target="_blank" title="娱乐春秋"><i class="ico_rec"></i>娱乐春秋</a>
							<p class="comic_type">做江湖被追捧的少侠</p>
						</li>
						<li>
							<!--  -->
							<!-- <em class="ico_tiaoman"></em> -->
							<a href="http://www.u17.com/comic/178281.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/4676036_1548851389_438k6t2e6ve8.big.jpg" alt="" title="血妖" /> </a>
							<a href="http://www.u17.com/comic/178281.html" class="comic_tit" target="_blank" title="血妖">血妖</a>
							<p class="comic_type">死亡灵异事件</p>
						</li>
						<li>
							<!--  -->
							<!--  -->
							<a href="http://www.u17.com/comic/181847.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/13861079_1548850205_p9Xdw8a7ZRIn.big.jpg" alt="" title="留下买路财" /> </a>
							<a href="http://www.u17.com/comic/181847.html" class="comic_tit" target="_blank" title="留下买路财"><i class="ico_rec"></i>留下买路财</a>
							<p class="comic_type">坑与被坑的喜剧</p>
						</li>
					</ul>
					<!-- 左右按钮 -->
					<div class="comic_slide_prev" style="display:none;"></div>
					<div class="comic_slide_next"></div>
					<!-- 左右按钮 end -->
				</div>
			</div>
			<div class="fr comic_goup">
				<div class="overflow goup_tab">
					<h2 class="fl goup_tit">上升最快</h2> </div>
				<ul class="rank_bang rank_all">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/175016.html" target="_blank" class="fl rank_comic_tit" data-info="少年/恋爱/科幻" data-img="http://cover.u17i.com/2018/07/11875241_1531362993_QtyciO5lUx9o.middle.jpg">奥拉星·平行宇宙</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/175498.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑/生活" data-img="http://cover.u17i.com/2018/07/27932240_1531983752_AYv7K4BW9yWi.middle.jpg">全能装X系统</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/174778.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/动作" data-img="http://cover.u17i.com/2018/07/4486442_1530866072_mMJULjJjuLJn.middle.jpg">战国千年</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/167156.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑/恋爱" data-img="http://cover.u17i.com/2018/04/23528148_1523867533_2c8Lz32Wf21H.middle.jpg">赴汤蹈火宇文君</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/175497.html" target="_blank" class="fl rank_comic_tit" data-info="少年/生活/动作" data-img="http://cover.u17i.com/2018/07/27932240_1531999435_R38I4E387e52.middle.jpg">超级神医系统</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/181671.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑" data-img="http://cover.u17i.com/2019/01/29288729_1548263247_Rkzq4vRmqzrR.middle.jpg">娱乐春秋</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/175494.html" target="_blank" class="fl rank_comic_tit" data-info="少年/生活/动作" data-img="http://cover.u17i.com/2018/07/27932240_1531978396_uD3X7PcuDszd.middle.jpg">龙魂特工</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/178281.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/动作" data-img="http://cover.u17i.com/2019/01/4676036_1548851389_438k6t2e6ve8.middle.jpg">血妖</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li class="click_read_more">
						<a href="http://www.u17.com/comic_list/th99_gr4_ca99_ss0_ob0_ac0_as0_wm0_co99_ct99_p1.html" target="_blank">查看更多</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- 少年漫画部分 end -->				
		<!-- 爆笑脑洞 -->
		<div class="v5_comic_list lazyload comic_list_naodong no_bg">
			<div class="fl comic_content">
				<div class="comic_content_tit">
					<div class="fl comic_sort_font">爆笑脑洞</div>
					<!-- <a href="javascript:;" class="fr comic_look_more"> 更多 </a> -->
				</div>
				<div class="overflow comic_list_slide_box">
					<ul>
						<li>
							<a href="http://www.u17.com/comic/41524.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/03/940847_1395021762_INQN183pEII8.big.jpg" alt="" title="魔王日记" /> </a>
							<a href="http://www.u17.com/comic/41524.html" class="comic_tit" target="_blank" title="魔王日记">魔王日记</a>
							<p class="comic_type">魔王的日常</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/180302.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/19456403_1544325776_izFP05Xl97zp.big.jpg" alt="" title="不思议异界游侠" /> </a>
							<a href="http://www.u17.com/comic/180302.html" class="comic_tit" target="_blank" title="不思议异界游侠"><i class="ico_rec"></i>不思议异界游侠</a>
							<p class="comic_type">不思议迷宫大冒险</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/181616.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/12647_1548151610_S2I1NLqOh3UH.big.jpg" alt="" title="笼中人" /> </a>
							<a href="http://www.u17.com/comic/181616.html" class="comic_tit" target="_blank" title="笼中人"><i class="ico_rec"></i>笼中人</a>
							<p class="comic_type">突破次元壁的漫画！</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/112879.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/09/4486442_1473405447_lfLS9Jk1M161.big.jpg" alt="" title="今天开始做明星" /> </a>
							<a href="http://www.u17.com/comic/112879.html" class="comic_tit" target="_blank" title="今天开始做明星">今天开始做明星</a>
							<p class="comic_type">大美男变伪娘</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/180641.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/19593960_1547114471_YNteei9tiLr2.big.jpg" alt="" title="六界圣尊" /> </a>
							<a href="http://www.u17.com/comic/180641.html" class="comic_tit" target="_blank" title="六界圣尊"><i class="ico_rec"></i>六界圣尊</a>
							<p class="comic_type">天才变废柴如何逆袭</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/181319.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/26843613_1547261312_YudiTAigGr48.big.jpg" alt="" title="他是我爸" /> </a>
							<a href="http://www.u17.com/comic/181319.html" class="comic_tit" target="_blank" title="他是我爸"><i class="ico_rec"></i>他是我爸</a>
							<p class="comic_type">他真是我爸</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/177261.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/08/20653076_1535468627_w0ez0emIrWZx.big.jpg" alt="" title="吾为神" /> </a>
							<a href="http://www.u17.com/comic/177261.html" class="comic_tit" target="_blank" title="吾为神">吾为神</a>
							<p class="comic_type">无人区的破产神灵</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/179986.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/28641880_1543206389_6k97T5zp6576.big.jpg" alt="" title="半两江湖" /> </a>
							<a href="http://www.u17.com/comic/179986.html" class="comic_tit" target="_blank" title="半两江湖"><i class="ico_rec"></i>半两江湖</a>
							<p class="comic_type">男主江湖之旅</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/135341.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/09/2861375_1473404809_u1IR1r9I49Iv.big.jpg" alt="" title="逆行天后" /> </a>
							<a href="http://www.u17.com/comic/135341.html" class="comic_tit" target="_blank" title="逆行天后">逆行天后</a>
							<p class="comic_type">重获新生</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/179752.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/19292645_1542554523_AMTX5iHa99s8.big.jpg" alt="" title="修仙动物园" /> </a>
							<a href="http://www.u17.com/comic/179752.html" class="comic_tit" target="_blank" title="修仙动物园"><i class="ico_rec"></i>修仙动物园</a>
							<p class="comic_type">一只猫的修仙之旅</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/175508.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/07/22395272_1531999150_s8Y82oISb6cp.big.jpg" alt="" title="史蒂夫三兄弟" /> </a>
							<a href="http://www.u17.com/comic/175508.html" class="comic_tit" target="_blank" title="史蒂夫三兄弟"><i class="ico_rec"></i>史蒂夫三兄弟</a>
							<p class="comic_type">穿越游戏世界</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/98769.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/09/1642_1505806238_SnqG7Up3M7Nu.big.jpg" alt="" title="大理寺日志" /> </a>
							<a href="http://www.u17.com/comic/98769.html" class="comic_tit" target="_blank" title="大理寺日志"><i class="ico_rec"></i>大理寺日志</a>
							<p class="comic_type">唐朝公务员日常</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/14674.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/03/677480_1521462753_USRcykY6bSZP.big.jpg" alt="" title="爆笑西游--衰猴子" /> </a>
							<a href="http://www.u17.com/comic/14674.html" class="comic_tit" target="_blank" title="爆笑西游--衰猴子">爆笑西游--衰猴子</a>
							<p class="comic_type">衰猴子的搞笑生活</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/179955.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/3229985_1547099197_Hm3nAZO88X85.big.jpg" alt="" title="成为我的主人" /> </a>
							<a href="http://www.u17.com/comic/179955.html" class="comic_tit" target="_blank" title="成为我的主人"><i class="ico_rec"></i>成为我的主人</a>
							<p class="comic_type">向往人类生活的兔子</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/125095.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/05/12340708_1463385468_61iYu1l2ZeKi.big.jpg" alt="" title="宅妖记" /> </a>
							<a href="http://www.u17.com/comic/125095.html" class="comic_tit" target="_blank" title="宅妖记">宅妖记</a>
							<p class="comic_type">漫画家的盘丝洞生活</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/181417.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/14409538_1547465930_3mI2c39H3iz9.big.jpg" alt="" title="和女装大佬的工作日常" /> </a>
							<a href="http://www.u17.com/comic/181417.html" class="comic_tit" target="_blank" title="和女装大佬的工作日常"><i class="ico_rec"></i>和女装大佬的工作日常</a>
							<p class="comic_type">女装大佬出没</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/180832.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/29009917_1545807122_rwe5QBzWRsEr.big.jpg" alt="" title="失恋中" /> </a>
							<a href="http://www.u17.com/comic/180832.html" class="comic_tit" target="_blank" title="失恋中"><i class="ico_rec"></i>失恋中</a>
							<p class="comic_type">学长和他是亲兄弟？</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/132865.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/13063442_1543572346_28wZ2Up8r488.big.jpg" alt="" title="中华神医" /> </a>
							<a href="http://www.u17.com/comic/132865.html" class="comic_tit" target="_blank" title="中华神医">中华神医</a>
							<p class="comic_type">绝世医术做村医</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/179709.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/28782114_1542433576_iINIu3zFSxu3.big.jpg" alt="" title="兽主在上" /> </a>
							<a href="http://www.u17.com/comic/179709.html" class="comic_tit" target="_blank" title="兽主在上"><i class="ico_rec"></i>兽主在上</a>
							<p class="comic_type"></p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/171687.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/26696970_1548684245_JiQUI6o1jI8i.big.jpg" alt="" title="总裁画风不对" /> </a>
							<a href="http://www.u17.com/comic/171687.html" class="comic_tit" target="_blank" title="总裁画风不对"><i class="ico_rec"></i>总裁画风不对</a>
							<p class="comic_type">这个总裁有点逗</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/149971.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/19398560_1548946780_Zf7BaonmZFn5.big.png" alt="" title="男神很腹黑" /> </a>
							<a href="http://www.u17.com/comic/149971.html" class="comic_tit" target="_blank" title="男神很腹黑"><i class="ico_rec"></i>男神很腹黑</a>
							<p class="comic_type">爱上男神反被爱</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/177453.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/09/19569224_1536028430_4qf5GGz4N222.big.jpg" alt="" title="总裁X宅女" /> </a>
							<a href="http://www.u17.com/comic/177453.html" class="comic_tit" target="_blank" title="总裁X宅女"><i class="ico_rec"></i>总裁X宅女</a>
							<p class="comic_type">赚总裁的钱养纸片人</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/180680.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/13323451_1545385256_w4G9WCTS4W2c.big.jpg" alt="" title="天降魔女" /> </a>
							<a href="http://www.u17.com/comic/180680.html" class="comic_tit" target="_blank" title="天降魔女"><i class="ico_rec"></i>天降魔女</a>
							<p class="comic_type">魔女误入孤儿院</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/167289.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/12/20536808_1514618703_dfTlF2f8193u.big.jpg" alt="" title="恒" /> </a>
							<a href="http://www.u17.com/comic/167289.html" class="comic_tit" target="_blank" title="恒">恒</a>
							<p class="comic_type">妖精和妖怪不能共存</p>
						</li>
					</ul>
					<!-- 左右按钮 -->
					<div class="comic_slide_prev" style="display:none;"></div>
					<div class="comic_slide_next"></div>
					<!-- 左右按钮 end -->
				</div>
			</div>
			<div class="fr comic_goup">
				<div class="overflow goup_tab">
					<h2 class="fl goup_tit">上升最快</h2> </div>
				<ul class="rank_bang rank_all">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/143300.html" target="_blank" class="fl rank_comic_tit" data-info="纯爱/搞笑/恋爱" data-img="http://cover.u17i.com/2018/10/18313169_1538844735_h449PTr2P8rq.middle.jpg">抢来的‘媳妇’’</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/64481.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑/动作" data-img="http://cover.u17i.com/2017/05/188617_1494825352_IIcJW7vwiJia.middle.jpg">面具大杀神</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/181616.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑" data-img="http://cover.u17i.com/2019/01/12647_1548151610_S2I1NLqOh3UH.middle.jpg">笼中人</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/27107.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑/体育" data-img="http://cover.u17i.com/2018/05/996329_1527061301_XQ3xho0NqPxd.middle.jpg">球娘</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/179399.html" target="_blank" class="fl rank_comic_tit" data-info="纯爱/搞笑/恋爱" data-img="http://cover.u17i.com/2018/11/12270760_1541560657_3hjLX3NLWXVv.middle.jpg">古人上线</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/5553.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑" data-img="http://cover.u17i.com/2015/04/29137_1429071315_TnKq5k0dqK6k.middle.jpg">十万个冷笑话</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/136641.html" target="_blank" class="fl rank_comic_tit" data-info="纯爱/搞笑/恋爱" data-img="http://cover.u17i.com/2016/09/16818669_1475028266_FsTz41BgF64F.middle.jpg">温柔以待</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/120003.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑" data-img="http://cover.u17i.com/2019/01/14197110_1547012055_foOor55Xy5l6.middle.jpg">非人哉</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li class="click_read_more">
						<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?order=2&th=101" target="_blank">查看更多</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- 爆笑脑洞 end -->
		<!-- 燃爆校园 -->
		<div class="v5_comic_list lazyload comic_list_ranbao no_bg">
			<div class="fl comic_content">
				<div class="comic_content_tit">
					<div class="fl comic_sort_font">燃爆校园</div>
					<!-- <a href="javascript:;" class="fr comic_look_more"> 更多 </a> -->
				</div>
				<div class="overflow comic_list_slide_box">
					<ul>
						<li>
							<a href="http://www.u17.com/comic/178524.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/10/27949329_1539163918_YoWfmxW3ozjj.big.jpg" alt="" title="超级保安在都市" /> </a>
							<a href="http://www.u17.com/comic/178524.html" class="comic_tit" target="_blank" title="超级保安在都市"><i class="ico_rec"></i>超级保安在都市</a>
							<p class="comic_type">保安的都市历险</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/180006.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/28834931_1543249182_cVXU6urszU7R.big.jpg" alt="" title="生人勿近" /> </a>
							<a href="http://www.u17.com/comic/180006.html" class="comic_tit" target="_blank" title="生人勿近">生人勿近</a>
							<p class="comic_type">开始也是结束</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/138804.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/02/10835205_1488186109_4l740jVGc07n.big.jpg" alt="" title="绝世武神" /> </a>
							<a href="http://www.u17.com/comic/138804.html" class="comic_tit" target="_blank" title="绝世武神">绝世武神</a>
							<p class="comic_type">少年的武神进化路</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/99105.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/08/9994765_1471052064_0IMbfivifj3Z.big.jpg" alt="" title="公交男女爆笑漫画" /> </a>
							<a href="http://www.u17.com/comic/99105.html" class="comic_tit" target="_blank" title="公交男女爆笑漫画">公交男女爆笑漫画</a>
							<p class="comic_type">公交车上的爆笑事</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/99874.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2015/09/10449554_1442814412_YEa773oaYMH5.big.jpg" alt="" title="妖神记（全彩）" /> </a>
							<a href="http://www.u17.com/comic/99874.html" class="comic_tit" target="_blank" title="妖神记（全彩）"><i class="ico_rec"></i>妖神记（全彩）</a>
							<p class="comic_type">妖灵世界中的生存</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/176519.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/08/10449554_1533886492_UPHhslul8h89.big.jpg" alt="" title="万界神主" /> </a>
							<a href="http://www.u17.com/comic/176519.html" class="comic_tit" target="_blank" title="万界神主"><i class="ico_rec"></i>万界神主</a>
							<p class="comic_type">穿越的南州古神</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/135129.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/12/12340708_1512710308_V2EPPnBdZX5O.big.jpg" alt="" title="修真四万年" /> </a>
							<a href="http://www.u17.com/comic/135129.html" class="comic_tit" target="_blank" title="修真四万年">修真四万年</a>
							<p class="comic_type">捡垃圾少年主宰银河</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/181003.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/3847466_1546364251_pdZP2axVvsCW.big.jpg" alt="" title="灵魂愿者" /> </a>
							<a href="http://www.u17.com/comic/181003.html" class="comic_tit" target="_blank" title="灵魂愿者"><i class="ico_rec"></i>灵魂愿者</a>
							<p class="comic_type">偶遇怨鬼的冒险之旅</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/175497.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/07/27932240_1531999435_R38I4E387e52.big.jpg" alt="" title="超级神医系统" /> </a>
							<a href="http://www.u17.com/comic/175497.html" class="comic_tit" target="_blank" title="超级神医系统"><i class="ico_rec"></i>超级神医系统</a>
							<p class="comic_type">山村少年的奇遇</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/139148.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/09/5926562_1537356944_JvztoSFI9F2U.big.jpg" alt="" title="什锦锅" /> </a>
							<a href="http://www.u17.com/comic/139148.html" class="comic_tit" target="_blank" title="什锦锅">什锦锅</a>
							<p class="comic_type">少年的生活与美食</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/93661.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/02/29796_1456393948_KitSctt4ksC3.big.jpg" alt="" title="神之一脚" /> </a>
							<a href="http://www.u17.com/comic/93661.html" class="comic_tit" target="_blank" title="神之一脚">神之一脚</a>
							<p class="comic_type">神之男子带你飞翔</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/177309.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/08/21341450_1535615178_k4DqX4saDds4.big.jpg" alt="" title="一品高手" /> </a>
							<a href="http://www.u17.com/comic/177309.html" class="comic_tit" target="_blank" title="一品高手"><i class="ico_rec"></i>一品高手</a>
							<p class="comic_type">古武高手闯都市</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/178025.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/17864518_1543200643_iz0myrz0mft6.big.jpg" alt="" title="暗源世纪" /> </a>
							<a href="http://www.u17.com/comic/178025.html" class="comic_tit" target="_blank" title="暗源世纪">暗源世纪</a>
							<p class="comic_type">《暗源序章》正片</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/145146.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/02/12117703_1518243915_11o2Jk4knOEN.big.jpg" alt="" title="重返太阳系" /> </a>
							<a href="http://www.u17.com/comic/145146.html" class="comic_tit" target="_blank" title="重返太阳系">重返太阳系</a>
							<p class="comic_type">粉碎生化机器人</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/180641.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/19593960_1547114471_YNteei9tiLr2.big.jpg" alt="" title="六界圣尊" /> </a>
							<a href="http://www.u17.com/comic/180641.html" class="comic_tit" target="_blank" title="六界圣尊"><i class="ico_rec"></i>六界圣尊</a>
							<p class="comic_type">天才变废柴如何逆袭</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/176518.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/08/10449554_1533886313_0iX07Pav8xaY.big.jpg" alt="" title="绝世妖帝" /> </a>
							<a href="http://www.u17.com/comic/176518.html" class="comic_tit" target="_blank" title="绝世妖帝"><i class="ico_rec"></i>绝世妖帝</a>
							<p class="comic_type">道他是佛，比魔更魔</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/88307.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/5428701_1545978986_XNcxXMCLrQ8R.big.jpg" alt="" title="长安妖歌" /> </a>
							<a href="http://www.u17.com/comic/88307.html" class="comic_tit" target="_blank" title="长安妖歌"><i class="ico_rec"></i>长安妖歌</a>
							<p class="comic_type">沧海明月 大唐鬼宴</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/7687.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/105053_1548389260_lohL0gnbYnL0.big.jpg" alt="" title="尸饭学院" /> </a>
							<a href="http://www.u17.com/comic/7687.html" class="comic_tit" target="_blank" title="尸饭学院">尸饭学院</a>
							<p class="comic_type">小僵为了梦想继续奋斗</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/180651.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/28806418_1545279170_w9rotI36Wob8.big.jpg" alt="" title="缺一门" /> </a>
							<a href="http://www.u17.com/comic/180651.html" class="comic_tit" target="_blank" title="缺一门"><i class="ico_rec"></i>缺一门</a>
							<p class="comic_type">与命运为敌</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/180230.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/2017_1543851927_8m6tUM0tm3Hl.big.png" alt="" title="我要充电" /> </a>
							<a href="http://www.u17.com/comic/180230.html" class="comic_tit" target="_blank" title="我要充电">我要充电</a>
							<p class="comic_type">如果有了超能力</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/181235.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/10847468_1547024042_wQVUVA2dW9Am.big.jpg" alt="" title="罪徒" /> </a>
							<a href="http://www.u17.com/comic/181235.html" class="comic_tit" target="_blank" title="罪徒">罪徒</a>
							<p class="comic_type">“新世界”计划</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/174305.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/06/4280753_1529593685_VlVnTv7tK2kH.big.jpg" alt="" title="进化螺旋" /> </a>
							<a href="http://www.u17.com/comic/174305.html" class="comic_tit" target="_blank" title="进化螺旋">进化螺旋</a>
							<p class="comic_type">生存才是真理</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/27107.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/05/996329_1527061301_XQ3xho0NqPxd.big.jpg" alt="" title="球娘" /> </a>
							<a href="http://www.u17.com/comic/27107.html" class="comic_tit" target="_blank" title="球娘"><i class="ico_rec"></i>球娘</a>
							<p class="comic_type">男变女打篮球玩黑帮</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/148892.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/08/10449554_1502244861_m5L448m855ch.big.jpg" alt="" title="染色体47号" /> </a>
							<a href="http://www.u17.com/comic/148892.html" class="comic_tit" target="_blank" title="染色体47号">染色体47号</a>
							<p class="comic_type">少年靠拳头打拼末世</p>
						</li>
					</ul>
					<!-- 左右按钮 -->
					<div class="comic_slide_prev" style="display:none;"></div>
					<div class="comic_slide_next"></div>
					<!-- 左右按钮 end -->
				</div>
			</div>
			<div class="fr comic_goup">
				<div class="overflow goup_tab">
					<h2 class="fl goup_tit">上升榜</h2> </div>
				<ul class="rank_bang rank_all">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/174834.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/动作" data-img="http://cover.u17i.com/2018/09/27772711_1536454798_0pAPpO0XY9x1.middle.jpg">大神纪</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/173315.html" target="_blank" class="fl rank_comic_tit" data-info="少年/动作" data-img="http://cover.u17i.com/2018/12/631752_1545392343_br8E4OT8T2Gk.middle.jpg">天师无门</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/27107.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑/体育" data-img="http://cover.u17i.com/2018/05/996329_1527061301_XQ3xho0NqPxd.middle.jpg">球娘</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/3166.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/动作" data-img="http://cover.u17i.com/2010/11/2786_1290484999_44z22704KDLT.middle.jpg">镇魂街</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/88307.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/动作" data-img="http://cover.u17i.com/2018/12/5428701_1545978986_XNcxXMCLrQ8R.middle.jpg">长安妖歌</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/99874.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻" data-img="http://cover.u17i.com/2015/09/10449554_1442814412_YEa773oaYMH5.middle.jpg">妖神记（全彩）</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/115838.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/动作" data-img="http://cover.u17i.com/2017/08/13442161_1501644190_FqJQ6gg5fkmq.middle.jpg">最后的召唤师</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/149716.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑/魔幻" data-img="http://cover.u17i.com/2017/04/4146390_1493184894_Yz1B62y4zr21.middle.jpg">锁龙</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<!-- <li class="click_read_more"> <a href="http://www.u17.com/comic_list/th99_gr3_ca99_ss0_ob0_ac0_as0_wm0_co99_ct99_p1.html" target="_blank">查看更多</a> </li> -->
					<li class="click_read_more more_pull">
						<a href="javascript:;" target="_blank">查看更多</a>
						<div class="choose_more">
							<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?order=2&th=242" target="_blank">热血</a>
							<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?order=2&th=108" target="_blank">体育</a>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<!-- 燃爆校园 end -->		
		<!-- 惊奇悬疑 -->
		<div class="v5_comic_list lazyload comic_list_jingqi no_bg">
			<div class="fl comic_content">
				<div class="comic_content_tit">
					<div class="fl comic_sort_font">惊奇悬疑</div>
					<!-- <a href="javascript:;" class="fr comic_look_more"> 更多 </a> -->
				</div>
				<div class="overflow comic_list_slide_box">
					<ul>
						<li>
							<a href="http://www.u17.com/comic/171319.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/09/22566244_1536128083_Uc1wwwm2rVw4.big.jpg" alt="" title="傲娇鬼王爱上我" /> </a>
							<a href="http://www.u17.com/comic/171319.html" class="comic_tit" target="_blank" title="傲娇鬼王爱上我"><i class="ico_rec"></i>傲娇鬼王爱上我</a>
							<p class="comic_type"></p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/168570.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/01/24886316_1517279697_8j84KiKjNUn1.big.jpg" alt="" title="战神联盟" /> </a>
							<a href="http://www.u17.com/comic/168570.html" class="comic_tit" target="_blank" title="战神联盟">战神联盟</a>
							<p class="comic_type">青年们反抗毁灭大帝</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/173916.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/20536808_1547816183_9RMmn0R00tjs.big.jpg" alt="" title="琴键" /> </a>
							<a href="http://www.u17.com/comic/173916.html" class="comic_tit" target="_blank" title="琴键">琴键</a>
							<p class="comic_type">钢琴家之死</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/66677.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/90232_1545668761_v1OOTNwAWd9A.big.png" alt="" title="夜幕下的盛宴（全彩）" /> </a>
							<a href="http://www.u17.com/comic/66677.html" class="comic_tit" target="_blank" title="夜幕下的盛宴（全彩）">夜幕下的盛宴（全彩）</a>
							<p class="comic_type">恐怖短篇故事</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/40504.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/02/2861375_1486370913_Xo3aC9BGox5Z.big.jpg" alt="" title="盗墓笔记（官方正版）" /> </a>
							<a href="http://www.u17.com/comic/40504.html" class="comic_tit" target="_blank" title="盗墓笔记（官方正版）"><i class="ico_rec"></i>盗墓笔记（官方正版）</a>
							<p class="comic_type">盗墓笔记试读登录！</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/169068.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/09/25449007_1537189851_NMsLPsKhPnSg.big.jpg" alt="" title="异人馆怪谈" /> </a>
							<a href="http://www.u17.com/comic/169068.html" class="comic_tit" target="_blank" title="异人馆怪谈"><i class="ico_rec"></i>异人馆怪谈</a>
							<p class="comic_type">都市怪谈</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/180230.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/2017_1543851927_8m6tUM0tm3Hl.big.png" alt="" title="我要充电" /> </a>
							<a href="http://www.u17.com/comic/180230.html" class="comic_tit" target="_blank" title="我要充电">我要充电</a>
							<p class="comic_type">如果有了超能力</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/146233.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/05/12647_1494949142_5d94SKgH34g1.big.jpg" alt="" title="爱幽的密室" /> </a>
							<a href="http://www.u17.com/comic/146233.html" class="comic_tit" target="_blank" title="爱幽的密室"><i class="ico_rec"></i>爱幽的密室</a>
							<p class="comic_type">神秘恐怖的密室游戏</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/84103.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/11/6433_1415003670_42VlQHjwejdv.big.jpg" alt="" title="末日孢子" /> </a>
							<a href="http://www.u17.com/comic/84103.html" class="comic_tit" target="_blank" title="末日孢子">末日孢子</a>
							<p class="comic_type">最后的幸存者们</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/177740.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/09/21463161_1536850859_m8msTtBdm191.big.jpg" alt="" title="潜行的审判者" /> </a>
							<a href="http://www.u17.com/comic/177740.html" class="comic_tit" target="_blank" title="潜行的审判者">潜行的审判者</a>
							<p class="comic_type">审判者的隐形审判</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/175615.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/07/26333335_1532391707_qXx4qDO4XZq7.big.jpg" alt="" title="邪灵" /> </a>
							<a href="http://www.u17.com/comic/175615.html" class="comic_tit" target="_blank" title="邪灵">邪灵</a>
							<p class="comic_type">楼上的女孩</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/149780.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/04/19380226_1493288477_G6vEXxMdZWVD.big.jpg" alt="" title="大年儿初一来找你" /> </a>
							<a href="http://www.u17.com/comic/149780.html" class="comic_tit" target="_blank" title="大年儿初一来找你"><i class="ico_rec"></i>大年儿初一来找你</a>
							<p class="comic_type">同学找上门</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/126112.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/04/6214548_1524211182_3ZLJAJM18jBd.big.jpg" alt="" title="异闻录" /> </a>
							<a href="http://www.u17.com/comic/126112.html" class="comic_tit" target="_blank" title="异闻录">异闻录</a>
							<p class="comic_type">千万不要在晚上看</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/181063.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/28747539_1546528300_944DQwAVpdnt.big.jpg" alt="" title="深海" /> </a>
							<a href="http://www.u17.com/comic/181063.html" class="comic_tit" target="_blank" title="深海">深海</a>
							<p class="comic_type">《神殿》后续</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/166484.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/12/23354255_1513744494_BjlGOgoh7rrF.big.jpg" alt="" title="无人生还" /> </a>
							<a href="http://www.u17.com/comic/166484.html" class="comic_tit" target="_blank" title="无人生还">无人生还</a>
							<p class="comic_type">密室逃脱</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/179580.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/20103_1542008344_jfz31CKjM681.big.jpg" alt="" title="行星独行" /> </a>
							<a href="http://www.u17.com/comic/179580.html" class="comic_tit" target="_blank" title="行星独行"><i class="ico_rec"></i>行星独行</a>
							<p class="comic_type">来自白星</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/174306.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/06/27616980_1529594765_A6Aq6p9A7UJJ.big.jpg" alt="" title="时间海" /> </a>
							<a href="http://www.u17.com/comic/174306.html" class="comic_tit" target="_blank" title="时间海">时间海</a>
							<p class="comic_type">是我们创造了历史</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/74679.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/03/4421956_1488319223_Vy7T6K6yaY8b.big.jpg" alt="" title="太平广记" /> </a>
							<a href="http://www.u17.com/comic/74679.html" class="comic_tit" target="_blank" title="太平广记"><i class="ico_rec"></i>太平广记</a>
							<p class="comic_type">民间灵异故事集</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/172620.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/05/21975671_1525940623_0zcEof2zEpQC.big.jpg" alt="" title="吾非宁采臣" /> </a>
							<a href="http://www.u17.com/comic/172620.html" class="comic_tit" target="_blank" title="吾非宁采臣">吾非宁采臣</a>
							<p class="comic_type">不一样的聊斋世界</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/98416.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/07/311424_1531996709_aZAOYW7e60JC.big.jpg" alt="" title="肖花镇" /> </a>
							<a href="http://www.u17.com/comic/98416.html" class="comic_tit" target="_blank" title="肖花镇">肖花镇</a>
							<p class="comic_type">小镇恐怖故事</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/181119.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/260010_1546688094_ahainITRB55i.big.jpg" alt="" title="夜行人" /> </a>
							<a href="http://www.u17.com/comic/181119.html" class="comic_tit" target="_blank" title="夜行人"><i class="ico_rec"></i>夜行人</a>
							<p class="comic_type">黑夜行走在魑魅中</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/176081.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/09/4485761_1536211091_9TzX69aiz6iC.big.jpg" alt="" title="速度线" /> </a>
							<a href="http://www.u17.com/comic/176081.html" class="comic_tit" target="_blank" title="速度线">速度线</a>
							<p class="comic_type">飞车漂移 心跳加速</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/165172.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/10/22640257_1540542471_1nAn1h1T10TN.big.jpg" alt="" title="毕业游戏" /> </a>
							<a href="http://www.u17.com/comic/165172.html" class="comic_tit" target="_blank" title="毕业游戏">毕业游戏</a>
							<p class="comic_type">夺命手机拨号中</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/180006.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/28834931_1543249182_cVXU6urszU7R.big.jpg" alt="" title="生人勿近" /> </a>
							<a href="http://www.u17.com/comic/180006.html" class="comic_tit" target="_blank" title="生人勿近">生人勿近</a>
							<p class="comic_type">开始也是结束</p>
						</li>
					</ul>
					<!-- 左右按钮 -->
					<div class="comic_slide_prev" style="display:none;"></div>
					<div class="comic_slide_next"></div>
					<!-- 左右按钮 end -->
				</div>
			</div>
			<div class="fr comic_goup">
				<div class="overflow goup_tab">
					<h2 class="fl goup_tit">上升榜</h2> </div>
				<ul class="rank_bang rank_all">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/68109.html" target="_blank" class="fl rank_comic_tit" data-info="少女/生活/恋爱" data-img="http://cover.u17i.com/2017/03/4177111_1489509484_l8FsH161lxf2.middle.jpg">蓝翅</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/165172.html" target="_blank" class="fl rank_comic_tit" data-info="少年/推理" data-img="http://cover.u17i.com/2018/10/22640257_1540542471_1nAn1h1T10TN.middle.jpg">毕业游戏</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/179580.html" target="_blank" class="fl rank_comic_tit" data-info="少女/生活/推理" data-img="http://cover.u17i.com/2018/11/20103_1542008344_jfz31CKjM681.middle.jpg">行星独行</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/113995.html" target="_blank" class="fl rank_comic_tit" data-info="少女/魔幻/生活" data-img="http://cover.u17i.com/2017/01/631752_1484161139_ke3FP61IKO1I.middle.jpg">夏家灵异录(全彩)</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/98416.html" target="_blank" class="fl rank_comic_tit" data-info="少年/恋爱" data-img="http://cover.u17i.com/2018/07/311424_1531996709_aZAOYW7e60JC.middle.jpg">肖花镇</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/169068.html" target="_blank" class="fl rank_comic_tit" data-info="少年/推理" data-img="http://cover.u17i.com/2018/09/25449007_1537189851_NMsLPsKhPnSg.middle.jpg">异人馆怪谈</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/154345.html" target="_blank" class="fl rank_comic_tit" data-info="少女/魔幻" data-img="http://cover.u17i.com/2017/06/19584781_1498701811_0Lu9K51M11kQ.middle.jpg">画皮师</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/180651.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻" data-img="http://cover.u17i.com/2018/12/28806418_1545279170_w9rotI36Wob8.middle.jpg">缺一门</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<!-- <li class="click_read_more"> <a href="http://www.u17.com/comic_list/th99_gr3_ca99_ss0_ob0_ac0_as0_wm0_co99_ct99_p1.html" target="_blank">查看更多</a> </li> -->
					<li class="click_read_more more_pull">
						<a href="javascript:;" target="_blank">查看更多</a>
						<div class="choose_more">
							<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?order=2&th=110" target="_blank">惊奇</a>
							<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?order=2&th=257" target="_blank">悬疑</a>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<!-- 惊奇悬疑 end -->		
		<!-- 魔幻冒险 -->
		<div class="v5_comic_list lazyload comic_list_maoxian no_bg">
			<div class="fl comic_content">
				<div class="comic_content_tit">
					<div class="fl comic_sort_font">魔幻冒险</div>
					<!-- <a href="javascript:;" class="fr comic_look_more"> 更多 </a> -->
				</div>
				<div class="overflow comic_list_slide_box">
					<ul>
						<li>
							<a href="http://www.u17.com/comic/173916.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/20536808_1547816183_9RMmn0R00tjs.big.jpg" alt="" title="琴键" /> </a>
							<a href="http://www.u17.com/comic/173916.html" class="comic_tit" target="_blank" title="琴键">琴键</a>
							<p class="comic_type">钢琴家之死</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/121836.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/06/4486442_1496497477_zss3tq9b2Sq2.big.jpg" alt="" title="驭灵师" /> </a>
							<a href="http://www.u17.com/comic/121836.html" class="comic_tit" target="_blank" title="驭灵师"><i class="ico_rec"></i>驭灵师</a>
							<p class="comic_type">作者穿到自己的漫画</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/127223.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/06/15139127_1528267020_30GZzsShbfGG.big.jpg" alt="" title="蒸汽世界" /> </a>
							<a href="http://www.u17.com/comic/127223.html" class="comic_tit" target="_blank" title="蒸汽世界">蒸汽世界</a>
							<p class="comic_type">鼠国的时代</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/176506.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/13235386_1547430746_UA5Ad5PAU8j5.big.jpg" alt="" title="少女与异界骑士" /> </a>
							<a href="http://www.u17.com/comic/176506.html" class="comic_tit" target="_blank" title="少女与异界骑士"><i class="ico_rec"></i>少女与异界骑士</a>
							<p class="comic_type">少女与异界骑士</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/129970.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/07/46781_1500281923_vZXq4QXUN99Y.big.jpg" alt="" title="重生之—仙渊" /> </a>
							<a href="http://www.u17.com/comic/129970.html" class="comic_tit" target="_blank" title="重生之—仙渊">重生之—仙渊</a>
							<p class="comic_type">江湖缥缈剑行录</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/181877.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/20449884_1548928936_NWHDDYnO2WNc.big.jpg" alt="" title="邪凤求凰" /> </a>
							<a href="http://www.u17.com/comic/181877.html" class="comic_tit" target="_blank" title="邪凤求凰"><i class="ico_rec"></i>邪凤求凰</a>
							<p class="comic_type">修仙兔妖进宫记</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/181811.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/28622924_1548740831_p777p7ksP8xH.big.jpg" alt="" title="俺之森" /> </a>
							<a href="http://www.u17.com/comic/181811.html" class="comic_tit" target="_blank" title="俺之森">俺之森</a>
							<p class="comic_type">神秘牙兽改变世界</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/168447.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/04/24527468_1524472164_4BAc0BZBR5e0.big.jpg" alt="" title="捡只魔龙当男友" /> </a>
							<a href="http://www.u17.com/comic/168447.html" class="comic_tit" target="_blank" title="捡只魔龙当男友"><i class="ico_rec"></i>捡只魔龙当男友</a>
							<p class="comic_type">龙与人的恋爱</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/155729.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/07/9825994_1500017249_U0UmK6F00Vkq.big.jpg" alt="" title="迷津书店" /> </a>
							<a href="http://www.u17.com/comic/155729.html" class="comic_tit" target="_blank" title="迷津书店">迷津书店</a>
							<p class="comic_type">书中自有人间世</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/180652.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/28806418_1545279465_yBUHxVbgRHu8.big.jpg" alt="" title="兼职神仙" /> </a>
							<a href="http://www.u17.com/comic/180652.html" class="comic_tit" target="_blank" title="兼职神仙"><i class="ico_rec"></i>兼职神仙</a>
							<p class="comic_type">某天突然当神仙</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/142512.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/09/16600503_1536651880_26sj66tcPJ66.big.jpg" alt="" title="阿多尼斯" /> </a>
							<a href="http://www.u17.com/comic/142512.html" class="comic_tit" target="_blank" title="阿多尼斯"><i class="ico_rec"></i>阿多尼斯</a>
							<p class="comic_type">重生少女掀血雨</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/167904.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/01/23780865_1516005969_V1kex8thE8Gk.big.jpg" alt="" title="荒野行动预备役" /> </a>
							<a href="http://www.u17.com/comic/167904.html" class="comic_tit" target="_blank" title="荒野行动预备役">荒野行动预备役</a>
							<p class="comic_type">时刻准备着</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/180884.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/4566914_1545936386_N654mCW4r40R.big.jpg" alt="" title="黎明之战" /> </a>
							<a href="http://www.u17.com/comic/180884.html" class="comic_tit" target="_blank" title="黎明之战">黎明之战</a>
							<p class="comic_type">愚者旅途的意义</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/73060.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/1534671_1546599983_lNc23ymHE6u4.big.jpg" alt="" title="EVELYN鬼妻" /> </a>
							<a href="http://www.u17.com/comic/73060.html" class="comic_tit" target="_blank" title="EVELYN鬼妻">EVELYN鬼妻</a>
							<p class="comic_type">战栗鬼女友，也柔情</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/177541.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/09/12288596_1536303244_1ip1QH1dhi13.big.jpg" alt="" title="龙渊" /> </a>
							<a href="http://www.u17.com/comic/177541.html" class="comic_tit" target="_blank" title="龙渊"><i class="ico_rec"></i>龙渊</a>
							<p class="comic_type">龙骨密码</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/180701.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/02/4275_1549080598_X5zn8grgWWha.big.jpg" alt="" title="异界巡礼团" /> </a>
							<a href="http://www.u17.com/comic/180701.html" class="comic_tit" target="_blank" title="异界巡礼团"><i class="ico_rec"></i>异界巡礼团</a>
							<p class="comic_type">深渊中的烛光</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/171831.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/04/11480669_1523877599_Nz45O9w287Pd.big.jpg" alt="" title="兄长大人请吸血" /> </a>
							<a href="http://www.u17.com/comic/171831.html" class="comic_tit" target="_blank" title="兄长大人请吸血"><i class="ico_rec"></i>兄长大人请吸血</a>
							<p class="comic_type">哥哥是吸血鬼</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/178281.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/4676036_1548851389_438k6t2e6ve8.big.jpg" alt="" title="血妖" /> </a>
							<a href="http://www.u17.com/comic/178281.html" class="comic_tit" target="_blank" title="血妖">血妖</a>
							<p class="comic_type">死亡灵异事件</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/70716.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/12/4265452_1514274885_c11AVCAfrNVS.big.jpg" alt="" title="诺林牧师" /> </a>
							<a href="http://www.u17.com/comic/70716.html" class="comic_tit" target="_blank" title="诺林牧师">诺林牧师</a>
							<p class="comic_type">倾听亡灵之声</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/175016.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/07/11875241_1531362993_QtyciO5lUx9o.big.jpg" alt="" title="奥拉星·平行宇宙" /> </a>
							<a href="http://www.u17.com/comic/175016.html" class="comic_tit" target="_blank" title="奥拉星·平行宇宙"><i class="ico_rec"></i>奥拉星·平行宇宙</a>
							<p class="comic_type">穿越游戏世界</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/98443.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/02/4458150_1455366013_OimyYyZSIBYB.big.jpg" alt="" title="黑暗童话" /> </a>
							<a href="http://www.u17.com/comic/98443.html" class="comic_tit" target="_blank" title="黑暗童话">黑暗童话</a>
							<p class="comic_type">消失的女巫</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/141690.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/12/17529254_1512205038_I79T7xh7YU09.big.jpg" alt="" title="超质体" /> </a>
							<a href="http://www.u17.com/comic/141690.html" class="comic_tit" target="_blank" title="超质体">超质体</a>
							<p class="comic_type">少年进入手机施能力</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/115069.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/01/10835205_1516767461_BVCnj7v5J1Um.big.jpg" alt="" title="唐寅在异界" /> </a>
							<a href="http://www.u17.com/comic/115069.html" class="comic_tit" target="_blank" title="唐寅在异界">唐寅在异界</a>
							<p class="comic_type">王者之路</p>
						</li>
						<li>
							<a href="http://www.u17.com/comic/181869.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/29192861_1548919286_KMUSsMKL7m5m.big.jpg" alt="" title="水鬼的新娘" /> </a>
							<a href="http://www.u17.com/comic/181869.html" class="comic_tit" target="_blank" title="水鬼的新娘"><i class="ico_rec"></i>水鬼的新娘</a>
							<p class="comic_type">鬼干爹</p>
						</li>
					</ul>
					<!-- 左右按钮 -->
					<div class="comic_slide_prev" style="display:none;"></div>
					<div class="comic_slide_next"></div>
					<!-- 左右按钮 end -->
				</div>
			</div>
			<div class="fr comic_goup">
				<div class="overflow goup_tab">
					<h2 class="fl goup_tit">上升榜</h2> </div>
				<ul class="rank_bang rank_all">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/181616.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑" data-img="http://cover.u17i.com/2019/01/12647_1548151610_S2I1NLqOh3UH.middle.jpg">笼中人</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/75859.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/科幻" data-img="http://cover.u17i.com/2014/07/4431881_1405044822_6XsM9VnAV7nY.middle.jpg">噬规者</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/121836.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑/魔幻" data-img="http://cover.u17i.com/2017/06/4486442_1496497477_zss3tq9b2Sq2.middle.jpg">驭灵师</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/11072.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/动作" data-img="http://cover.u17i.com/2018/07/311700_1531131092_rVZFVZbQl7Qk.middle.jpg">惊叹之夜</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/141690.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/动作" data-img="http://cover.u17i.com/2017/12/17529254_1512205038_I79T7xh7YU09.middle.jpg">超质体</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/180701.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/恋爱" data-img="http://cover.u17i.com/2019/02/4275_1549080598_X5zn8grgWWha.middle.jpg">异界巡礼团</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/113995.html" target="_blank" class="fl rank_comic_tit" data-info="少女/魔幻/生活" data-img="http://cover.u17i.com/2017/01/631752_1484161139_ke3FP61IKO1I.middle.jpg">夏家灵异录(全彩)</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/150603.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑/恋爱" data-img="http://cover.u17i.com/2018/11/16798_1542262496_KHaZaTxK550r.middle.jpg">恋爱吧！勇者小黄鱼</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<!-- <li class="click_read_more"> <a href="http://www.u17.com/comic_list/th99_gr3_ca99_ss0_ob0_ac0_as0_wm0_co99_ct99_p1.html" target="_blank">查看更多</a> </li> -->
					<li class="click_read_more more_pull">
						<a href="javascript:;" target="_blank">查看更多</a>
						<div class="choose_more">
							<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?order=2&th=102" target="_blank">魔幻</a>
							<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?order=2&th=204" target="_blank">冒险</a>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<!-- 魔幻冒险 end -->
		<!-- 每日更新 -->
		<div class="v5_comic_list comic_list_sort lazyload comic_list_mohuan no_bg">
			<div class="fl comic_content">
				<div class="comic_content_tit">
					<div class="fl comic_sort_font">潜力追更</div>
					<ul class="fl comic_choose">
						<li class="rank_tab cur">全部</li>
						<li class="rank_tab">少年</li>
						<li class="rank_tab">少女</li>
					</ul>
					<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?order=1" target="_blank" class="fr comic_look_more">更多</a>
				</div>
				<div class="overflow comic_list_slide_box">
					<div class="cutUl lazyload cut1">
						<ul class="comic_all">
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/174314.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/06/16818419_1529637000_XWq0b36403x6.big.jpg" alt="" title="一念纵横" /> </a>
								<a href="http://www.u17.com/comic/174314.html" class="comic_tit" target="_blank" title="一念纵横"><i class="ico_rec"></i>一念纵横</a>
								<p class="comic_type">少年/魔幻</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/108569.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/12/4854735_1480597276_O454NjJ5sBFh.big.jpg" alt="" title="怪事界" /> </a>
								<a href="http://www.u17.com/comic/108569.html" class="comic_tit" target="_blank" title="怪事界">怪事界</a>
								<p class="comic_type">少年/生活</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/106655.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/1710832_1547276273_CYiQ9oTcpNvV.big.jpg" alt="" title="萧艺风云" /> </a>
								<a href="http://www.u17.com/comic/106655.html" class="comic_tit" target="_blank" title="萧艺风云">萧艺风云</a>
								<p class="comic_type">少年/动作</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/174566.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/06/24018946_1530082498_AQ2U50uPS3z5.big.jpg" alt="" title="妖道至尊" /> </a>
								<a href="http://www.u17.com/comic/174566.html" class="comic_tit" target="_blank" title="妖道至尊"><i class="ico_rec"></i>妖道至尊</a>
								<p class="comic_type">少年/魔幻/动作</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/108254.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2015/09/1088638_1443442892_rN50R888I0NN.big.jpg" alt="" title="游戏，未结束" /> </a>
								<a href="http://www.u17.com/comic/108254.html" class="comic_tit" target="_blank" title="游戏，未结束"><i class="ico_rec"></i>游戏，未结束</a>
								<p class="comic_type">少女/生活/恋爱/纯爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/71766.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/4168629_1543894930_7znYwiyEAWDo.big.jpg" alt="" title="左佑生死簿" /> </a>
								<a href="http://www.u17.com/comic/71766.html" class="comic_tit" target="_blank" title="左佑生死簿">左佑生死簿</a>
								<p class="comic_type">少女/魔幻/生活</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/165055.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/11/22565170_1511166559_h66i5oaE8ZnJ.big.jpg" alt="" title="光之契约" /> </a>
								<a href="http://www.u17.com/comic/165055.html" class="comic_tit" target="_blank" title="光之契约"><i class="ico_rec"></i>光之契约</a>
								<p class="comic_type">少女/生活/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/168570.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/01/24886316_1517279697_8j84KiKjNUn1.big.jpg" alt="" title="战神联盟" /> </a>
								<a href="http://www.u17.com/comic/168570.html" class="comic_tit" target="_blank" title="战神联盟">战神联盟</a>
								<p class="comic_type">少年/搞笑/推理</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/143371.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/04/16600503_1493261048_38Fh8bG31236.big.jpg" alt="" title="全职大师年代记 2" /> </a>
								<a href="http://www.u17.com/comic/143371.html" class="comic_tit" target="_blank" title="全职大师年代记 2">全职大师年代记 2</a>
								<p class="comic_type">少年/魔幻/动作</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/71084.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/08/3126292_1470427197_wW6b7wwbd8DO.big.jpg" alt="" title="一万零七夜-彩漫周更-" /> </a>
								<a href="http://www.u17.com/comic/71084.html" class="comic_tit" target="_blank" title="一万零七夜-彩漫周更-">一万零七夜-彩漫周更-</a>
								<p class="comic_type">少年/搞笑/魔幻</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/66677.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/90232_1545668761_v1OOTNwAWd9A.big.png" alt="" title="夜幕下的盛宴（全彩）" /> </a>
								<a href="http://www.u17.com/comic/66677.html" class="comic_tit" target="_blank" title="夜幕下的盛宴（全彩）">夜幕下的盛宴（全彩）</a>
								<p class="comic_type">少年/生活/惊奇</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/48839.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/1516890_1543145418_Ugf5b8Zc99ic.big.jpg" alt="" title="隐森瑰影" /> </a>
								<a href="http://www.u17.com/comic/48839.html" class="comic_tit" target="_blank" title="隐森瑰影">隐森瑰影</a>
								<p class="comic_type">少女/生活/恋爱/纯爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/151407.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/05/2243_1495601492_6zw8zpi80h6R.big.jpg" alt="" title="黑暗之魂3故事漫画" /> </a>
								<a href="http://www.u17.com/comic/151407.html" class="comic_tit" target="_blank" title="黑暗之魂3故事漫画"><i class="ico_rec"></i>黑暗之魂3故事漫画</a>
								<p class="comic_type">少年/魔幻/同人</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/99671.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/02/1548403_1549801947_d1N6YRdddTYc.big.jpg" alt="" title="假面" /> </a>
								<a href="http://www.u17.com/comic/99671.html" class="comic_tit" target="_blank" title="假面">假面</a>
								<p class="comic_type">少年/魔幻</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/119035.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/03/4939604_1457870337_EKOZ2We27wTe.big.png" alt="" title="异种奇谭（全彩）" /> </a>
								<a href="http://www.u17.com/comic/119035.html" class="comic_tit" target="_blank" title="异种奇谭（全彩）">异种奇谭（全彩）</a>
								<p class="comic_type">少年/魔幻/惊奇</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/126444.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/07/14314655_1467613123_aP9cQpAZumM9.big.jpg" alt="" title="I.N.A." /> </a>
								<a href="http://www.u17.com/comic/126444.html" class="comic_tit" target="_blank" title="I.N.A.">I.N.A.</a>
								<p class="comic_type">少女/恋爱/科幻</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/130695.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/07/11620079_1469037801_089qQrwCPiyA.big.jpg" alt="" title="今天我是女生" /> </a>
								<a href="http://www.u17.com/comic/130695.html" class="comic_tit" target="_blank" title="今天我是女生">今天我是女生</a>
								<p class="comic_type">少年/搞笑/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/158679.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/08/21033995_1503390047_hrrYCCK933Mk.big.jpg" alt="" title="游宠奇侠传（全彩）" /> </a>
								<a href="http://www.u17.com/comic/158679.html" class="comic_tit" target="_blank" title="游宠奇侠传（全彩）">游宠奇侠传（全彩）</a>
								<p class="comic_type">少年/搞笑/魔幻</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/129970.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/07/46781_1500281923_vZXq4QXUN99Y.big.jpg" alt="" title="重生之—仙渊" /> </a>
								<a href="http://www.u17.com/comic/129970.html" class="comic_tit" target="_blank" title="重生之—仙渊">重生之—仙渊</a>
								<p class="comic_type">少女/魔幻/恋爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/173597.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/06/27524270_1528253802_XUg7D3l9K4d6.big.jpg" alt="" title="诛仙·御剑行" /> </a>
								<a href="http://www.u17.com/comic/173597.html" class="comic_tit" target="_blank" title="诛仙·御剑行"><i class="ico_rec"></i>诛仙·御剑行</a>
								<p class="comic_type">少年/搞笑/同人</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/148824.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/04/17690807_1491983318_ZG4cy2or2eLt.big.jpg" alt="" title="半魂" /> </a>
								<a href="http://www.u17.com/comic/148824.html" class="comic_tit" target="_blank" title="半魂">半魂</a>
								<p class="comic_type">少年/魔幻/动作</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/70192.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/06/1735518_1402883384_dCAdZtg8dZVm.big.jpg" alt="" title="world game" /> </a>
								<a href="http://www.u17.com/comic/70192.html" class="comic_tit" target="_blank" title="world game">world game</a>
								<p class="comic_type">少年/魔幻/战争</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/72492.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/05/3784173_1400833417_dkTYKAKWjjgG.big.jpg" alt="" title="无尽的黎明" /> </a>
								<a href="http://www.u17.com/comic/72492.html" class="comic_tit" target="_blank" title="无尽的黎明">无尽的黎明</a>
								<p class="comic_type">少女/恋爱/纯爱</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/167289.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/12/20536808_1514618703_dfTlF2f8193u.big.jpg" alt="" title="恒" /> </a>
								<a href="http://www.u17.com/comic/167289.html" class="comic_tit" target="_blank" title="恒">恒</a>
								<p class="comic_type">少年/魔幻</p>
							</li>
						</ul>
						<div class="comic_slide_prev" style="display:none;"></div>
						<div class="comic_slide_next"></div>
					</div>
					<div class="cutUl cut2" style="display: none;">
						<ul class="comic_shaonian">
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/174314.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/06/16818419_1529637000_XWq0b36403x6.big.jpg" alt="" title="一念纵横" /> </a>
								<a href="http://www.u17.com/comic/174314.html" class="comic_tit" target="_blank" title="一念纵横"><i class="ico_rec"></i>一念纵横</a>
								<p class="comic_type">诸子百家日常互怼</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/108569.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/12/4854735_1480597276_O454NjJ5sBFh.big.jpg" alt="" title="怪事界" /> </a>
								<a href="http://www.u17.com/comic/108569.html" class="comic_tit" target="_blank" title="怪事界">怪事界</a>
								<p class="comic_type">那些怪事的集合</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/106655.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/1710832_1547276273_CYiQ9oTcpNvV.big.jpg" alt="" title="萧艺风云" /> </a>
								<a href="http://www.u17.com/comic/106655.html" class="comic_tit" target="_blank" title="萧艺风云">萧艺风云</a>
								<p class="comic_type">狗仔队与打狗队故事</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/174566.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/06/24018946_1530082498_AQ2U50uPS3z5.big.jpg" alt="" title="妖道至尊" /> </a>
								<a href="http://www.u17.com/comic/174566.html" class="comic_tit" target="_blank" title="妖道至尊"><i class="ico_rec"></i>妖道至尊</a>
								<p class="comic_type">涅槃重生，妖皇再现</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/168570.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/01/24886316_1517279697_8j84KiKjNUn1.big.jpg" alt="" title="战神联盟" /> </a>
								<a href="http://www.u17.com/comic/168570.html" class="comic_tit" target="_blank" title="战神联盟">战神联盟</a>
								<p class="comic_type">青年们反抗毁灭大帝</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/143371.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/04/16600503_1493261048_38Fh8bG31236.big.jpg" alt="" title="全职大师年代记 2" /> </a>
								<a href="http://www.u17.com/comic/143371.html" class="comic_tit" target="_blank" title="全职大师年代记 2">全职大师年代记 2</a>
								<p class="comic_type">广阔宇宙的大师们</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/71084.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/08/3126292_1470427197_wW6b7wwbd8DO.big.jpg" alt="" title="一万零七夜-彩漫周更-" /> </a>
								<a href="http://www.u17.com/comic/71084.html" class="comic_tit" target="_blank" title="一万零七夜-彩漫周更-">一万零七夜-彩漫周更-</a>
								<p class="comic_type">狼兄虎妹腹黑羊</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/66677.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/90232_1545668761_v1OOTNwAWd9A.big.png" alt="" title="夜幕下的盛宴（全彩）" /> </a>
								<a href="http://www.u17.com/comic/66677.html" class="comic_tit" target="_blank" title="夜幕下的盛宴（全彩）">夜幕下的盛宴（全彩）</a>
								<p class="comic_type">恐怖短篇故事</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/151407.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/05/2243_1495601492_6zw8zpi80h6R.big.jpg" alt="" title="黑暗之魂3故事漫画" /> </a>
								<a href="http://www.u17.com/comic/151407.html" class="comic_tit" target="_blank" title="黑暗之魂3故事漫画"><i class="ico_rec"></i>黑暗之魂3故事漫画</a>
								<p class="comic_type">黑暗之魂3故事解析</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/99671.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/02/1548403_1549801947_d1N6YRdddTYc.big.jpg" alt="" title="假面" /> </a>
								<a href="http://www.u17.com/comic/99671.html" class="comic_tit" target="_blank" title="假面">假面</a>
								<p class="comic_type">无限变化的面具</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/119035.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/03/4939604_1457870337_EKOZ2We27wTe.big.png" alt="" title="异种奇谭（全彩）" /> </a>
								<a href="http://www.u17.com/comic/119035.html" class="comic_tit" target="_blank" title="异种奇谭（全彩）">异种奇谭（全彩）</a>
								<p class="comic_type">诡异的小镇</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/130695.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/07/11620079_1469037801_089qQrwCPiyA.big.jpg" alt="" title="今天我是女生" /> </a>
								<a href="http://www.u17.com/comic/130695.html" class="comic_tit" target="_blank" title="今天我是女生">今天我是女生</a>
								<p class="comic_type">校园女神的神秘身份</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/158679.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/08/21033995_1503390047_hrrYCCK933Mk.big.jpg" alt="" title="游宠奇侠传（全彩）" /> </a>
								<a href="http://www.u17.com/comic/158679.html" class="comic_tit" target="_blank" title="游宠奇侠传（全彩）">游宠奇侠传（全彩）</a>
								<p class="comic_type">宠物猫变身游侠</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/173597.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/06/27524270_1528253802_XUg7D3l9K4d6.big.jpg" alt="" title="诛仙·御剑行" /> </a>
								<a href="http://www.u17.com/comic/173597.html" class="comic_tit" target="_blank" title="诛仙·御剑行"><i class="ico_rec"></i>诛仙·御剑行</a>
								<p class="comic_type">新的诛仙传奇开始了</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/148824.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/04/17690807_1491983318_ZG4cy2or2eLt.big.jpg" alt="" title="半魂" /> </a>
								<a href="http://www.u17.com/comic/148824.html" class="comic_tit" target="_blank" title="半魂">半魂</a>
								<p class="comic_type">千古之谜</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/70192.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/06/1735518_1402883384_dCAdZtg8dZVm.big.jpg" alt="" title="world game" /> </a>
								<a href="http://www.u17.com/comic/70192.html" class="comic_tit" target="_blank" title="world game">world game</a>
								<p class="comic_type">8人的密闭逃生房</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/167289.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/12/20536808_1514618703_dfTlF2f8193u.big.jpg" alt="" title="恒" /> </a>
								<a href="http://www.u17.com/comic/167289.html" class="comic_tit" target="_blank" title="恒">恒</a>
								<p class="comic_type">妖精和妖怪不能共存</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/159373.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/09/814430_1504263088_bH3Xb5h38o5R.big.jpg" alt="" title="斩魂" /> </a>
								<a href="http://www.u17.com/comic/159373.html" class="comic_tit" target="_blank" title="斩魂">斩魂</a>
								<p class="comic_type">仗义少年被邪神附体</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/128198.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/09/1602266_1536640941_9qWWVFzwW5qC.big.jpg" alt="" title="噢，潘达" /> </a>
								<a href="http://www.u17.com/comic/128198.html" class="comic_tit" target="_blank" title="噢，潘达">噢，潘达</a>
								<p class="comic_type">熊猫拯救噩梦公主</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/77550.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/01/1918026_1485612126_ZWfeMHfksfnd.big.jpg" alt="" title="孩子的歌谣" /> </a>
								<a href="http://www.u17.com/comic/77550.html" class="comic_tit" target="_blank" title="孩子的歌谣">孩子的歌谣</a>
								<p class="comic_type">孩子们人生的乐章</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/169068.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/09/25449007_1537189851_NMsLPsKhPnSg.big.jpg" alt="" title="异人馆怪谈" /> </a>
								<a href="http://www.u17.com/comic/169068.html" class="comic_tit" target="_blank" title="异人馆怪谈"><i class="ico_rec"></i>异人馆怪谈</a>
								<p class="comic_type">都市怪谈</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/127216.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/10/13898678_1540197507_0TAl8JstsG09.big.jpg" alt="" title="墨染莲" /> </a>
								<a href="http://www.u17.com/comic/127216.html" class="comic_tit" target="_blank" title="墨染莲">墨染莲</a>
								<p class="comic_type">世间沉浮</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/7614.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/01/156551_1546768095_4VH4mL4Xh4Vv.big.jpg" alt="" title="羽世界之谜" /> </a>
								<a href="http://www.u17.com/comic/7614.html" class="comic_tit" target="_blank" title="羽世界之谜">羽世界之谜</a>
								<p class="comic_type">奇异星球的发现之旅</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/158271.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/1794052_1544758003_thrrXT13TtVT.big.jpg" alt="" title="望都寻刀" /> </a>
								<a href="http://www.u17.com/comic/158271.html" class="comic_tit" target="_blank" title="望都寻刀">望都寻刀</a>
								<p class="comic_type">明国人的战斗</p>
							</li>
						</ul>
						<div class="comic_slide_prev" style="display:none;"></div>
						<div class="comic_slide_next"></div>
					</div>
					<div class="cutUl cut3" style="display: none;">
						<ul class="comic_shaonv">
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/108254.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2015/09/1088638_1443442892_rN50R888I0NN.big.jpg" alt="" title="游戏，未结束" /> </a>
								<a href="http://www.u17.com/comic/108254.html" class="comic_tit" target="_blank" title="游戏，未结束"><i class="ico_rec"></i>游戏，未结束</a>
								<p class="comic_type">我们之间的游戏</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/71766.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/4168629_1543894930_7znYwiyEAWDo.big.jpg" alt="" title="左佑生死簿" /> </a>
								<a href="http://www.u17.com/comic/71766.html" class="comic_tit" target="_blank" title="左佑生死簿">左佑生死簿</a>
								<p class="comic_type">灵魂至高无上</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/165055.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/11/22565170_1511166559_h66i5oaE8ZnJ.big.jpg" alt="" title="光之契约" /> </a>
								<a href="http://www.u17.com/comic/165055.html" class="comic_tit" target="_blank" title="光之契约"><i class="ico_rec"></i>光之契约</a>
								<p class="comic_type">穿越时空的少女</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/48839.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/11/1516890_1543145418_Ugf5b8Zc99ic.big.jpg" alt="" title="隐森瑰影" /> </a>
								<a href="http://www.u17.com/comic/48839.html" class="comic_tit" target="_blank" title="隐森瑰影">隐森瑰影</a>
								<p class="comic_type">终极小红帽传说</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/126444.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/07/14314655_1467613123_aP9cQpAZumM9.big.jpg" alt="" title="I.N.A." /> </a>
								<a href="http://www.u17.com/comic/126444.html" class="comic_tit" target="_blank" title="I.N.A.">I.N.A.</a>
								<p class="comic_type">爱上机器人</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/129970.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/07/46781_1500281923_vZXq4QXUN99Y.big.jpg" alt="" title="重生之—仙渊" /> </a>
								<a href="http://www.u17.com/comic/129970.html" class="comic_tit" target="_blank" title="重生之—仙渊">重生之—仙渊</a>
								<p class="comic_type">江湖缥缈剑行录</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/72492.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/05/3784173_1400833417_dkTYKAKWjjgG.big.jpg" alt="" title="无尽的黎明" /> </a>
								<a href="http://www.u17.com/comic/72492.html" class="comic_tit" target="_blank" title="无尽的黎明">无尽的黎明</a>
								<p class="comic_type">在天亮之前做好准备</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/18219.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/06/747632_1528005105_8u78gkztYuW8.big.jpg" alt="" title="人来魔往" /> </a>
								<a href="http://www.u17.com/comic/18219.html" class="comic_tit" target="_blank" title="人来魔往">人来魔往</a>
								<p class="comic_type">人与魔的故事</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/161723.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/10/17494662_1539936658_xHpsSoUSHGuT.big.jpg" alt="" title="尘间录" /> </a>
								<a href="http://www.u17.com/comic/161723.html" class="comic_tit" target="_blank" title="尘间录">尘间录</a>
								<p class="comic_type">奇闻轶事爱恨情仇</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/139134.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/11/321551_1478140271_GR3kPhHmk3C3.big.jpg" alt="" title="他眼中的星星" /> </a>
								<a href="http://www.u17.com/comic/139134.html" class="comic_tit" target="_blank" title="他眼中的星星">他眼中的星星</a>
								<p class="comic_type">少女身边出现梦中人</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/165047.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/11/22566244_1511161663_7bzFnmNiDmNM.big.jpg" alt="" title="今天小迟也郁郁寡欢" /> </a>
								<a href="http://www.u17.com/comic/165047.html" class="comic_tit" target="_blank" title="今天小迟也郁郁寡欢"><i class="ico_rec"></i>今天小迟也郁郁寡欢</a>
								<p class="comic_type">土地神也要业绩</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/163140.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/12/21625353_1513667462_5lePI6EimeRM.big.jpg" alt="" title="Keep Touch" /> </a>
								<a href="http://www.u17.com/comic/163140.html" class="comic_tit" target="_blank" title="Keep Touch"><i class="ico_rec"></i>Keep Touch</a>
								<p class="comic_type">带着回忆</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/163142.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/10/18899201_1507867956_pTyMhfFSw0fF.big.jpg" alt="" title="糊涂镖局糊涂账" /> </a>
								<a href="http://www.u17.com/comic/163142.html" class="comic_tit" target="_blank" title="糊涂镖局糊涂账">糊涂镖局糊涂账</a>
								<p class="comic_type">快乐的镖局</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/70489.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/08/2888314_1471054955_N9Olupl9Gp17.big.jpg" alt="" title="千心陵" /> </a>
								<a href="http://www.u17.com/comic/70489.html" class="comic_tit" target="_blank" title="千心陵">千心陵</a>
								<p class="comic_type">少女的穿越之旅</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/168651.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2019/02/4287788_1549815656_770KQk6AR7wz.big.jpg" alt="" title="旅途" /> </a>
								<a href="http://www.u17.com/comic/168651.html" class="comic_tit" target="_blank" title="旅途">旅途</a>
								<p class="comic_type">冒险旅途的开始</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/174353.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/06/27672518_1529662033_T9EnH2qgqh6X.big.jpg" alt="" title="饲养外星人的注意事项" /> </a>
								<a href="http://www.u17.com/comic/174353.html" class="comic_tit" target="_blank" title="饲养外星人的注意事项"><i class="ico_rec"></i>饲养外星人的注意事项</a>
								<p class="comic_type">人类与外星人日常</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/138704.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/11/10905866_1478011414_c47DJjoLmD1n.big.jpg" alt="" title="迷你熊" /> </a>
								<a href="http://www.u17.com/comic/138704.html" class="comic_tit" target="_blank" title="迷你熊">迷你熊</a>
								<p class="comic_type">总有一款你喜欢的熊</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/91354.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2015/10/5486806_1446275482_d711z66YZFjk.big.jpg" alt="" title="比同桌多一点" /> </a>
								<a href="http://www.u17.com/comic/91354.html" class="comic_tit" target="_blank" title="比同桌多一点">比同桌多一点</a>
								<p class="comic_type">和同桌谈恋爱</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/125122.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/06/5630898_1529036708_K8rlW3stn0Wt.big.jpg" alt="" title="百慕大" /> </a>
								<a href="http://www.u17.com/comic/125122.html" class="comic_tit" target="_blank" title="百慕大">百慕大</a>
								<p class="comic_type">在百慕大工作的日子</p>
							</li>
							<li>
								<!--  -->
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/168060.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/05/24064334_1525439893_qO70cotyOtZT.big.jpg" alt="" title="偏偏相当喜欢" /> </a>
								<a href="http://www.u17.com/comic/168060.html" class="comic_tit" target="_blank" title="偏偏相当喜欢"><i class="ico_rec"></i>偏偏相当喜欢</a>
								<p class="comic_type">漫展上的相遇</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/141061.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/12/12515758_1543917153_sr2lzNgHzhGG.big.jpg" alt="" title="伊格莱因的侵蚀" /> </a>
								<a href="http://www.u17.com/comic/141061.html" class="comic_tit" target="_blank" title="伊格莱因的侵蚀"><i class="ico_rec"></i>伊格莱因的侵蚀</a>
								<p class="comic_type">维尔莫的海边村庄</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/62599.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/04/24375_1523847761_Ma6k1m2MMMcm.big.jpg" alt="" title="冰雪质子" /> </a>
								<a href="http://www.u17.com/comic/62599.html" class="comic_tit" target="_blank" title="冰雪质子">冰雪质子</a>
								<p class="comic_type">苦苦的思恋</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/44800.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/09/1435937_1410769270_js44oNcCmsCO.big.jpg" alt="" title="水云边境" /> </a>
								<a href="http://www.u17.com/comic/44800.html" class="comic_tit" target="_blank" title="水云边境">水云边境</a>
								<p class="comic_type">一杀手和一乞丐</p>
							</li>
							<li>
								<!--  -->
								<!--  -->
								<a href="http://www.u17.com/comic/58002.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/12/3704163_1419629551_8FAeqRuE96ae.big.jpg" alt="" title="艾·拉之约" /> </a>
								<a href="http://www.u17.com/comic/58002.html" class="comic_tit" target="_blank" title="艾·拉之约">艾·拉之约</a>
								<p class="comic_type">小萝莉的进化史</p>
							</li>
						</ul>
						<div class="comic_slide_prev" style="display:none;"></div>
						<div class="comic_slide_next"></div>
					</div>
				</div>
			</div>
			<div class="fr comic_goup">
				<div class="overflow goup_tab">
					<h2 class="fl goup_tit">上升最快</h2>
					<a href="javascript:void(0);" class="fl rank_tab_up goup_tab_btn goup_tab_btn1 cur">全部</a>
					<a href="javascript:void(0);" class="fl rank_tab_up goup_tab_btn goup_tab_btn2">少年</a>
					<a href="javascript:void(0);" class="fl rank_tab_up goup_tab_btn goup_tab_bt3">少女</a>
				</div>
				<ul class="rank_bang rank_all">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/72492.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱/纯爱" data-img="http://cover.u17i.com/2014/05/3784173_1400833417_dkTYKAKWjjgG.middle.jpg">无尽的黎明</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/163140.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱/同人/纯爱" data-img="http://cover.u17i.com/2017/12/21625353_1513667462_5lePI6EimeRM.middle.jpg">Keep Touch</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/157365.html" target="_blank" class="fl rank_comic_tit" data-info="少年/科幻/战争" data-img="http://cover.u17i.com/2018/04/4939334_1522911347_sLFLF7eS5y5l.middle.jpg">穿越效应</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/169068.html" target="_blank" class="fl rank_comic_tit" data-info="少年/推理/惊奇" data-img="http://cover.u17i.com/2018/09/25449007_1537189851_NMsLPsKhPnSg.middle.jpg">异人馆怪谈</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/174566.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/动作" data-img="http://cover.u17i.com/2018/06/24018946_1530082498_AQ2U50uPS3z5.middle.jpg">妖道至尊</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/161460.html" target="_blank" class="fl rank_comic_tit" data-info="少女/生活/恋爱/纯爱" data-img="http://cover.u17i.com/2018/10/21378319_1539147299_7yyVKjjALlY6.middle.jpg">楼上楼下</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/168060.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱/纯爱" data-img="http://cover.u17i.com/2018/05/24064334_1525439893_qO70cotyOtZT.middle.jpg">偏偏相当喜欢</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/73060.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻" data-img="http://cover.u17i.com/2019/01/1534671_1546599983_lNc23ymHE6u4.middle.jpg">EVELYN鬼妻</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li class="click_read_more">
						<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?iv=12" target="_blank">查看更多</a>
					</li>
				</ul>
				<ul class="rank_bang rank_shaonian" style="display:none;">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/157365.html" target="_blank" class="fl rank_comic_tit" data-info="少年/科幻/战争" data-img="http://cover.u17i.com/2018/04/4939334_1522911347_sLFLF7eS5y5l.middle.jpg">穿越效应</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/169068.html" target="_blank" class="fl rank_comic_tit" data-info="少年/推理/惊奇" data-img="http://cover.u17i.com/2018/09/25449007_1537189851_NMsLPsKhPnSg.middle.jpg">异人馆怪谈</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/174566.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/动作" data-img="http://cover.u17i.com/2018/06/24018946_1530082498_AQ2U50uPS3z5.middle.jpg">妖道至尊</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/73060.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻" data-img="http://cover.u17i.com/2019/01/1534671_1546599983_lNc23ymHE6u4.middle.jpg">EVELYN鬼妻</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/71084.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑/魔幻" data-img="http://cover.u17i.com/2016/08/3126292_1470427197_wW6b7wwbd8DO.middle.jpg">一万零七夜-彩漫周更-</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/70192.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/战争" data-img="http://cover.u17i.com/2014/06/1735518_1402883384_dCAdZtg8dZVm.middle.jpg">world game</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/7166.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻" data-img="http://cover.u17i.com/2012/02/124212_1328896852_R7333YZCws7M.middle.jpg">山海师</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/66677.html" target="_blank" class="fl rank_comic_tit" data-info="少年/生活/惊奇" data-img="http://cover.u17i.com/2018/12/90232_1545668761_v1OOTNwAWd9A.middle.png">夜幕下的盛宴（全彩）</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li class="click_read_more">
						<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?iv=12" target="_blank">查看更多</a>
					</li>
				</ul>
				<ul class="rank_bang rank_shaonv" style="display:none;">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/72492.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱/纯爱" data-img="http://cover.u17i.com/2014/05/3784173_1400833417_dkTYKAKWjjgG.middle.jpg">无尽的黎明</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/163140.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱/同人/纯爱" data-img="http://cover.u17i.com/2017/12/21625353_1513667462_5lePI6EimeRM.middle.jpg">Keep Touch</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/161460.html" target="_blank" class="fl rank_comic_tit" data-info="少女/生活/恋爱/纯爱" data-img="http://cover.u17i.com/2018/10/21378319_1539147299_7yyVKjjALlY6.middle.jpg">楼上楼下</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/168060.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱/纯爱" data-img="http://cover.u17i.com/2018/05/24064334_1525439893_qO70cotyOtZT.middle.jpg">偏偏相当喜欢</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/175666.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑/恋爱" data-img="http://cover.u17i.com/2019/01/21464835_1548594132_Nj7RVTBiDOyi.middle.jpg">人妖经</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/95630.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱" data-img="http://cover.u17i.com/2019/01/4483307_1547305260_wR7yQHRpWI9P.middle.jpg">我的太子妃</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/44800.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱/纯爱" data-img="http://cover.u17i.com/2014/09/1435937_1410769270_js44oNcCmsCO.middle.jpg">水云边境</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/108254.html" target="_blank" class="fl rank_comic_tit" data-info="少女/生活/恋爱/纯爱" data-img="http://cover.u17i.com/2015/09/1088638_1443442892_rN50R888I0NN.middle.jpg">游戏，未结束</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li class="click_read_more">
						<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss99_ob0_ac0_as0_wm0_co99_ct99_p1.html?iv=12" target="_blank">查看更多</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- 每日更新 end -->
		<!-- 广告 -->
		<div class="generalize_box">
			<a href="http://www.u17.com/click/1_117_42017.html" class="generalize_new fl g1" target="_blank"><img src="http://image.mylife.u17t.com/2019/01/31/1548930693_LoWoO1XK93TJ.jpg" alt=""></a>
			<a href="http://www.u17.com/click/1_116_42018.html" class="generalize_new fr g2" target="_blank"><img src="http://image.mylife.u17t.com/2018/12/05/1544004311_77424IFFb4So.png" alt=""></a>
		</div>
		<!-- 广告 end -->
		<!-- 完结精品部分 -->
		<div class="v5_comic_list comic_list_sort lazyload comic_list_over no_bg">
			<div class="fl comic_content">
				<div class="comic_content_tit">
					<div class="fl comic_sort_font">完结精品</div>
					<!-- <div class="fl comic_sort_line"></div> -->
					<ul class="fl comic_choose">
						<li class="rank_tab cur">全部</li>
						<li class="rank_tab">少年</li>
						<li class="rank_tab">少女</li>
					</ul>
					<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss1_ob0_ac0_as0_wm0_co99_ct99_p1.html?order=1" target="_blank" class="fr comic_look_more">更多</a>
				</div>
				<div class="overflow comic_list_slide_box">
					<div class="cutUl lazyload cut1">
						<ul class="comic_all">
							<li>
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/155092.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/07/16549869_1500613915_i8legGLbGBE2.big.jpg" alt="" title="我管漂亮你管帅" /> </a>
								<a href="http://www.u17.com/comic/155092.html" class="comic_tit" target="_blank" title="我管漂亮你管帅"><i class="ico_rec"></i>我管漂亮你管帅</a>
								<p class="comic_type">少女/恋爱</p>
							</li>
							<li>
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/101411.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/05/1542682_1464574005_53uWjw1LUAsp.big.jpg" alt="" title="奔三那年" /> </a>
								<a href="http://www.u17.com/comic/101411.html" class="comic_tit" target="_blank" title="奔三那年">奔三那年</a>
								<p class="comic_type">少女/搞笑/生活</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/103781.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/01/11762093_1452843143_pKZKP8femLZt.big.jpg" alt="" title="遇龙记" /> </a>
								<a href="http://www.u17.com/comic/103781.html" class="comic_tit" target="_blank" title="遇龙记">遇龙记</a>
								<p class="comic_type">少女/魔幻/恋爱</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/142219.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/01/10835205_1483536326_pPbb3qN3dimY.big.jpg" alt="" title="占骨师" /> </a>
								<a href="http://www.u17.com/comic/142219.html" class="comic_tit" target="_blank" title="占骨师"><i class="ico_rec"></i>占骨师</a>
								<p class="comic_type">少女/魔幻</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/134809.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/11/16539219_1478499612_tZz8n4N0y12t.big.jpg" alt="" title="异能女仆MAD MAID" /> </a>
								<a href="http://www.u17.com/comic/134809.html" class="comic_tit" target="_blank" title="异能女仆MAD MAID"><i class="ico_rec"></i>异能女仆MAD MAID</a>
								<p class="comic_type">少年/恋爱/动作</p>
							</li>
							<li>
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/140898.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/12/17740155_1481096748_JG70ZGvaVjv7.big.jpg" alt="" title="甜心教练" /> </a>
								<a href="http://www.u17.com/comic/140898.html" class="comic_tit" target="_blank" title="甜心教练"><i class="ico_rec"></i>甜心教练</a>
								<p class="comic_type">少女/生活/体育</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/114960.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/01/9844725_1452588393_EY5FCBFeJYKP.big.jpg" alt="" title="大唐除妖司" /> </a>
								<a href="http://www.u17.com/comic/114960.html" class="comic_tit" target="_blank" title="大唐除妖司"><i class="ico_rec"></i>大唐除妖司</a>
								<p class="comic_type">少年/魔幻/动作</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/93828.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/07/4945394_1468129720_k6OBkiZYyahV.big.jpg" alt="" title="花叶" /> </a>
								<a href="http://www.u17.com/comic/93828.html" class="comic_tit" target="_blank" title="花叶">花叶</a>
								<p class="comic_type">少女/生活/纯爱</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/6929.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/08/118794_1472105201_69Xg9DCQG3fl.big.jpg" alt="" title="火影 鼬 Vs 佩恩" /> </a>
								<a href="http://www.u17.com/comic/6929.html" class="comic_tit" target="_blank" title="火影 鼬 Vs 佩恩">火影 鼬 Vs 佩恩</a>
								<p class="comic_type">少年/搞笑/动作</p>
							</li>
							<li>
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/150926.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/07/18833170_1499071632_e9111QbNWwqn.big.jpg" alt="" title="一夜豪门：总裁我已婚" /> </a>
								<a href="http://www.u17.com/comic/150926.html" class="comic_tit" target="_blank" title="一夜豪门：总裁我已婚"><i class="ico_rec"></i>一夜豪门：总裁我已婚</a>
								<p class="comic_type">少女/恋爱</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/74712.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/06/164862_1403902012_wPwxFCKLBvpU.big.jpg" alt="" title="开封奇谈-这个包公不太行" /> </a>
								<a href="http://www.u17.com/comic/74712.html" class="comic_tit" target="_blank" title="开封奇谈-这个包公不太行"><i class="ico_rec"></i>开封奇谈-这个包公不太</a>
								<p class="comic_type">少女/搞笑/生活</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/77368.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/09/4345430_1410596419_q1Hee6d7d5ZW.big.jpg" alt="" title="陆判官" /> </a>
								<a href="http://www.u17.com/comic/77368.html" class="comic_tit" target="_blank" title="陆判官">陆判官</a>
								<p class="comic_type">少女/纯爱</p>
							</li>
							<li>
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/118160.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/06/310727_1498200631_0ts0wi0toSt6.big.jpg" alt="" title="不要小瞧乙女之魂啊" /> </a>
								<a href="http://www.u17.com/comic/118160.html" class="comic_tit" target="_blank" title="不要小瞧乙女之魂啊">不要小瞧乙女之魂啊</a>
								<p class="comic_type">少女/搞笑/生活</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/99059.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2015/06/4093128_1433996640_tn848Y72OebK.big.jpg" alt="" title="星球拟鸟" /> </a>
								<a href="http://www.u17.com/comic/99059.html" class="comic_tit" target="_blank" title="星球拟鸟"><i class="ico_rec"></i>星球拟鸟</a>
								<p class="comic_type">少女/科幻</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/31280.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/06/1080199_1496727260_snjX1iiGUhYh.big.jpg" alt="" title="我是君子" /> </a>
								<a href="http://www.u17.com/comic/31280.html" class="comic_tit" target="_blank" title="我是君子">我是君子</a>
								<p class="comic_type">少女/魔幻/搞笑/纯爱</p>
							</li>
							<li>
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/121692.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/04/14293342_1461653817_rGTGXeERxrlr.big.jpg" alt="" title="锈铁之书" /> </a>
								<a href="http://www.u17.com/comic/121692.html" class="comic_tit" target="_blank" title="锈铁之书">锈铁之书</a>
								<p class="comic_type">少女/生活/恋爱</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/190.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/11/1213_1478322908_NjjWJwz3DTTd.big.jpg" alt="" title="拜见女皇陛下" /> </a>
								<a href="http://www.u17.com/comic/190.html" class="comic_tit" target="_blank" title="拜见女皇陛下"><i class="ico_rec"></i>拜见女皇陛下</a>
								<p class="comic_type">少年/生活/恋爱</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/82405.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/11/3134983_1414856000_FbMpPoZkD9RM.big.jpg" alt="" title="朋友限定" /> </a>
								<a href="http://www.u17.com/comic/82405.html" class="comic_tit" target="_blank" title="朋友限定"><i class="ico_rec"></i>朋友限定</a>
								<p class="comic_type">少女/生活/纯爱</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/74105.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/10/4380467_1413436750_L2llIL8022Az.big.jpg" alt="" title="召唤万岁" /> </a>
								<a href="http://www.u17.com/comic/74105.html" class="comic_tit" target="_blank" title="召唤万岁">召唤万岁</a>
								<p class="comic_type">少年/魔幻/动作</p>
							</li>
							<li>
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/163319.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/10/18833170_1508136094_Ivj9loJiGbvO.big.jpg" alt="" title="枕上恶魔总裁" /> </a>
								<a href="http://www.u17.com/comic/163319.html" class="comic_tit" target="_blank" title="枕上恶魔总裁"><i class="ico_rec"></i>枕上恶魔总裁</a>
								<p class="comic_type">少女/恋爱</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/3751.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2013/03/13118_1362118992_iYM70Q0LtQYd.big.jpg" alt="" title="我不是女王" /> </a>
								<a href="http://www.u17.com/comic/3751.html" class="comic_tit" target="_blank" title="我不是女王">我不是女王</a>
								<p class="comic_type">少女/魔幻/恋爱</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/136190.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/02/16752138_1486371673_HB64qpbeQnQv.big.jpg" alt="" title="极品修真少年" /> </a>
								<a href="http://www.u17.com/comic/136190.html" class="comic_tit" target="_blank" title="极品修真少年"><i class="ico_rec"></i>极品修真少年</a>
								<p class="comic_type">少年/魔幻/动作</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/43371.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2013/06/19624_1370440459_0aqHShSWGuKS.big.jpg" alt="" title="龙诏雪" /> </a>
								<a href="http://www.u17.com/comic/43371.html" class="comic_tit" target="_blank" title="龙诏雪">龙诏雪</a>
								<p class="comic_type">少女//纯爱</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/74351.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2015/02/280764_1423904261_ZJg6KgRg3F8R.big.jpg" alt="" title="一笑奈何" /> </a>
								<a href="http://www.u17.com/comic/74351.html" class="comic_tit" target="_blank" title="一笑奈何">一笑奈何</a>
								<p class="comic_type">少女/同人/纯爱</p>
							</li>
						</ul>
						<div class="comic_slide_prev" style="display:none;"></div>
						<div class="comic_slide_next"></div>
					</div>
					<div class="cutUl cut2" style="display: none;">
						<ul class="comic_shaonian">
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/134809.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/11/16539219_1478499612_tZz8n4N0y12t.big.jpg" alt="" title="异能女仆MAD MAID" /> </a>
								<a href="http://www.u17.com/comic/134809.html" class="comic_tit" target="_blank" title="异能女仆MAD MAID"><i class="ico_rec"></i>异能女仆MAD MAID</a>
								<p class="comic_type">女仆可爱又能打？</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/114960.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/01/9844725_1452588393_EY5FCBFeJYKP.big.jpg" alt="" title="大唐除妖司" /> </a>
								<a href="http://www.u17.com/comic/114960.html" class="comic_tit" target="_blank" title="大唐除妖司"><i class="ico_rec"></i>大唐除妖司</a>
								<p class="comic_type">盛世大唐 妖孽横生</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/6929.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/08/118794_1472105201_69Xg9DCQG3fl.big.jpg" alt="" title="火影 鼬 Vs 佩恩" /> </a>
								<a href="http://www.u17.com/comic/6929.html" class="comic_tit" target="_blank" title="火影 鼬 Vs 佩恩">火影 鼬 Vs 佩恩</a>
								<p class="comic_type">火影同人恶搞作品</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/190.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/11/1213_1478322908_NjjWJwz3DTTd.big.jpg" alt="" title="拜见女皇陛下" /> </a>
								<a href="http://www.u17.com/comic/190.html" class="comic_tit" target="_blank" title="拜见女皇陛下"><i class="ico_rec"></i>拜见女皇陛下</a>
								<p class="comic_type">小学生萝莉正太成长</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/74105.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/10/4380467_1413436750_L2llIL8022Az.big.jpg" alt="" title="召唤万岁" /> </a>
								<a href="http://www.u17.com/comic/74105.html" class="comic_tit" target="_blank" title="召唤万岁">召唤万岁</a>
								<p class="comic_type">龙腾大陆召唤万岁</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/136190.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/02/16752138_1486371673_HB64qpbeQnQv.big.jpg" alt="" title="极品修真少年" /> </a>
								<a href="http://www.u17.com/comic/136190.html" class="comic_tit" target="_blank" title="极品修真少年"><i class="ico_rec"></i>极品修真少年</a>
								<p class="comic_type">修仙少年穿越世界</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/20801.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2011/11/1115675_1322013959_dfLggFyR9GLy.big.jpg" alt="" title="秀逗海盗（漫画世界）" /> </a>
								<a href="http://www.u17.com/comic/20801.html" class="comic_tit" target="_blank" title="秀逗海盗（漫画世界）">秀逗海盗（漫画世界）</a>
								<p class="comic_type">爆笑海盗生活</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/76308.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/07/4486442_1405513623_uMMmYmHWh4wM.big.jpg" alt="" title="斩龙" /> </a>
								<a href="http://www.u17.com/comic/76308.html" class="comic_tit" target="_blank" title="斩龙">斩龙</a>
								<p class="comic_type">房东大姐饶了我！</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/3420.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2012/07/18708_1342409500_oUZzNesnm0rr.big.jpg" alt="" title="我，女机器人1＋2部" /> </a>
								<a href="http://www.u17.com/comic/3420.html" class="comic_tit" target="_blank" title="我，女机器人1＋2部"><i class="ico_rec"></i>我，女机器人1＋2部</a>
								<p class="comic_type">天才少女穿越机器杀手</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/110817.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/08/4486442_1533284354_6d2ADK1Dk1PP.big.jpg" alt="" title="三集男主角" /> </a>
								<a href="http://www.u17.com/comic/110817.html" class="comic_tit" target="_blank" title="三集男主角"><i class="ico_rec"></i>三集男主角</a>
								<p class="comic_type">漫画家进入漫画世界</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/93578.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2015/08/5939501_1439874441_Tt9tQ5VBkY77.big.jpg" alt="" title="胖次异闻录" /> </a>
								<a href="http://www.u17.com/comic/93578.html" class="comic_tit" target="_blank" title="胖次异闻录">胖次异闻录</a>
								<p class="comic_type">寻找胖次的萝莉</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/2144.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2012/07/5592_1342409367_U086XqwdTYe6.big.jpg" alt="" title="春哥传" /> </a>
								<a href="http://www.u17.com/comic/2144.html" class="comic_tit" target="_blank" title="春哥传">春哥传</a>
								<p class="comic_type">信春哥原地复活</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/21800.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2011/10/1105091_1319711239_uIVhVScS2ZzV.big.jpg" alt="" title="斗破苍穹" /> </a>
								<a href="http://www.u17.com/comic/21800.html" class="comic_tit" target="_blank" title="斗破苍穹">斗破苍穹</a>
								<p class="comic_type">斗破苍穹漫画版</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/8236.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2011/09/19916_1316156690_VBCqQ6m2v17K.big.jpg" alt="" title="什么，什么物语" /> </a>
								<a href="http://www.u17.com/comic/8236.html" class="comic_tit" target="_blank" title="什么，什么物语">什么，什么物语</a>
								<p class="comic_type">各种鬼神的热血冒险</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/5726.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2012/05/75854_1336546649_SRObjsJP6Osp.big.jpg" alt="" title="真月的森林" /> </a>
								<a href="http://www.u17.com/comic/5726.html" class="comic_tit" target="_blank" title="真月的森林">真月的森林</a>
								<p class="comic_type">租房帅哥美女后宫房客</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/145632.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/02/2092742_1487918210_BkdzHHk2fkgp.big.jpg" alt="" title="驱灵事务所" /> </a>
								<a href="http://www.u17.com/comic/145632.html" class="comic_tit" target="_blank" title="驱灵事务所">驱灵事务所</a>
								<p class="comic_type">驱除恶灵</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/2244.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2012/03/6056_1333077141_zmAlPkzt50mK.big.jpg" alt="" title="分裂女武神" /> </a>
								<a href="http://www.u17.com/comic/2244.html" class="comic_tit" target="_blank" title="分裂女武神">分裂女武神</a>
								<p class="comic_type">合体兄妹的生活</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/15533.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2011/05/737877_1306735303_46k02JK2OuT2.big.jpg" alt="" title="魁拔" /> </a>
								<a href="http://www.u17.com/comic/15533.html" class="comic_tit" target="_blank" title="魁拔">魁拔</a>
								<p class="comic_type">每隔333年复活魁拔</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/136657.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/10/311424_1477565950_bQyy4yfQJZqJ.big.jpg" alt="" title="魔女囚笼" /> </a>
								<a href="http://www.u17.com/comic/136657.html" class="comic_tit" target="_blank" title="魔女囚笼">魔女囚笼</a>
								<p class="comic_type">魔女间的战争</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/24743.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2012/04/1074512_1335331124_Dqcx3zNs3dzn.big.png" alt="" title="U茶短篇集" /> </a>
								<a href="http://www.u17.com/comic/24743.html" class="comic_tit" target="_blank" title="U茶短篇集">U茶短篇集</a>
								<p class="comic_type">末世死亡手册</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/76564.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/07/5592_1405766247_whri1MCpPhF6.big.jpg" alt="" title="星迹" /> </a>
								<a href="http://www.u17.com/comic/76564.html" class="comic_tit" target="_blank" title="星迹"><i class="ico_rec"></i>星迹</a>
								<p class="comic_type">人类少年的星际探险</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/20000.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2012/07/179654_1341987511_ZJg3HGUm6NMz.big.jpg" alt="" title="暴走的食法师" /> </a>
								<a href="http://www.u17.com/comic/20000.html" class="comic_tit" target="_blank" title="暴走的食法师">暴走的食法师</a>
								<p class="comic_type">魔法食物的神奇世界</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/35238.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2015/08/2432180_1438428118_272nYNP1bzLy.big.jpg" alt="" title="剑巫" /> </a>
								<a href="http://www.u17.com/comic/35238.html" class="comic_tit" target="_blank" title="剑巫">剑巫</a>
								<p class="comic_type">少年决定成为一名剑巫</p>
							</li>
							<li>
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/126112.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2018/04/6214548_1524211182_3ZLJAJM18jBd.big.jpg" alt="" title="异闻录" /> </a>
								<a href="http://www.u17.com/comic/126112.html" class="comic_tit" target="_blank" title="异闻录">异闻录</a>
								<p class="comic_type">千万不要在晚上看</p>
							</li>
						</ul>
						<div class="comic_slide_prev" style="display:none;"></div>
						<div class="comic_slide_next"></div>
					</div>
					<div class="cutUl cut3" style="display: none;">
						<ul class="comic_shaonv">
							<li>
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/155092.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/07/16549869_1500613915_i8legGLbGBE2.big.jpg" alt="" title="我管漂亮你管帅" /> </a>
								<a href="http://www.u17.com/comic/155092.html" class="comic_tit" target="_blank" title="我管漂亮你管帅"><i class="ico_rec"></i>我管漂亮你管帅</a>
								<p class="comic_type">霸气总裁求二胎</p>
							</li>
							<li>
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/101411.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/05/1542682_1464574005_53uWjw1LUAsp.big.jpg" alt="" title="奔三那年" /> </a>
								<a href="http://www.u17.com/comic/101411.html" class="comic_tit" target="_blank" title="奔三那年">奔三那年</a>
								<p class="comic_type">女孩大胆往前走！</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/103781.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/01/11762093_1452843143_pKZKP8femLZt.big.jpg" alt="" title="遇龙记" /> </a>
								<a href="http://www.u17.com/comic/103781.html" class="comic_tit" target="_blank" title="遇龙记">遇龙记</a>
								<p class="comic_type">成为龙之妻</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/142219.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/01/10835205_1483536326_pPbb3qN3dimY.big.jpg" alt="" title="占骨师" /> </a>
								<a href="http://www.u17.com/comic/142219.html" class="comic_tit" target="_blank" title="占骨师"><i class="ico_rec"></i>占骨师</a>
								<p class="comic_type">少女与猫的茶馆等待</p>
							</li>
							<li>
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/140898.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/12/17740155_1481096748_JG70ZGvaVjv7.big.jpg" alt="" title="甜心教练" /> </a>
								<a href="http://www.u17.com/comic/140898.html" class="comic_tit" target="_blank" title="甜心教练"><i class="ico_rec"></i>甜心教练</a>
								<p class="comic_type">史上最年轻女教练</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/93828.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/07/4945394_1468129720_k6OBkiZYyahV.big.jpg" alt="" title="花叶" /> </a>
								<a href="http://www.u17.com/comic/93828.html" class="comic_tit" target="_blank" title="花叶">花叶</a>
								<p class="comic_type">四叶草物语般的爱</p>
							</li>
							<li>
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/150926.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/07/18833170_1499071632_e9111QbNWwqn.big.jpg" alt="" title="一夜豪门：总裁我已婚" /> </a>
								<a href="http://www.u17.com/comic/150926.html" class="comic_tit" target="_blank" title="一夜豪门：总裁我已婚"><i class="ico_rec"></i>一夜豪门：总裁我已婚</a>
								<p class="comic_type">无奈新娘勇斗总裁</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/74712.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/06/164862_1403902012_wPwxFCKLBvpU.big.jpg" alt="" title="开封奇谈-这个包公不太行" /> </a>
								<a href="http://www.u17.com/comic/74712.html" class="comic_tit" target="_blank" title="开封奇谈-这个包公不太行"><i class="ico_rec"></i>开封奇谈-这个包公不太</a>
								<p class="comic_type">这个包公不太行</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/77368.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/09/4345430_1410596419_q1Hee6d7d5ZW.big.jpg" alt="" title="陆判官" /> </a>
								<a href="http://www.u17.com/comic/77368.html" class="comic_tit" target="_blank" title="陆判官">陆判官</a>
								<p class="comic_type">陆判官来了</p>
							</li>
							<li>
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/118160.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/06/310727_1498200631_0ts0wi0toSt6.big.jpg" alt="" title="不要小瞧乙女之魂啊" /> </a>
								<a href="http://www.u17.com/comic/118160.html" class="comic_tit" target="_blank" title="不要小瞧乙女之魂啊">不要小瞧乙女之魂啊</a>
								<p class="comic_type">满满的都是帅哥</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/99059.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2015/06/4093128_1433996640_tn848Y72OebK.big.jpg" alt="" title="星球拟鸟" /> </a>
								<a href="http://www.u17.com/comic/99059.html" class="comic_tit" target="_blank" title="星球拟鸟"><i class="ico_rec"></i>星球拟鸟</a>
								<p class="comic_type">记得佩戴望远镜观看</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/31280.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/06/1080199_1496727260_snjX1iiGUhYh.big.jpg" alt="" title="我是君子" /> </a>
								<a href="http://www.u17.com/comic/31280.html" class="comic_tit" target="_blank" title="我是君子">我是君子</a>
								<p class="comic_type">路遇银发魔神后失身？</p>
							</li>
							<li>
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/121692.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/04/14293342_1461653817_rGTGXeERxrlr.big.jpg" alt="" title="锈铁之书" /> </a>
								<a href="http://www.u17.com/comic/121692.html" class="comic_tit" target="_blank" title="锈铁之书">锈铁之书</a>
								<p class="comic_type">在这纷乱的江湖中</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/82405.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2014/11/3134983_1414856000_FbMpPoZkD9RM.big.jpg" alt="" title="朋友限定" /> </a>
								<a href="http://www.u17.com/comic/82405.html" class="comic_tit" target="_blank" title="朋友限定"><i class="ico_rec"></i>朋友限定</a>
								<p class="comic_type">小贱受和渣攻的故事</p>
							</li>
							<li>
								<!-- <em class="ico_tiaoman"></em> -->
								<a href="http://www.u17.com/comic/163319.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2017/10/18833170_1508136094_Ivj9loJiGbvO.big.jpg" alt="" title="枕上恶魔总裁" /> </a>
								<a href="http://www.u17.com/comic/163319.html" class="comic_tit" target="_blank" title="枕上恶魔总裁"><i class="ico_rec"></i>枕上恶魔总裁</a>
								<p class="comic_type">掉入恶魔巢穴</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/3751.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2013/03/13118_1362118992_iYM70Q0LtQYd.big.jpg" alt="" title="我不是女王" /> </a>
								<a href="http://www.u17.com/comic/3751.html" class="comic_tit" target="_blank" title="我不是女王">我不是女王</a>
								<p class="comic_type">烫血少女历险记</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/43371.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2013/06/19624_1370440459_0aqHShSWGuKS.big.jpg" alt="" title="龙诏雪" /> </a>
								<a href="http://www.u17.com/comic/43371.html" class="comic_tit" target="_blank" title="龙诏雪">龙诏雪</a>
								<p class="comic_type">睚眦之血的牵绊</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/74351.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2015/02/280764_1423904261_ZJg6KgRg3F8R.big.jpg" alt="" title="一笑奈何" /> </a>
								<a href="http://www.u17.com/comic/74351.html" class="comic_tit" target="_blank" title="一笑奈何">一笑奈何</a>
								<p class="comic_type">唐晓和奈合现代生活</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/6453.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2011/01/20103_1294427915_B3CPZ8Yitsvj.big.jpg" alt="" title="越界·双生" /> </a>
								<a href="http://www.u17.com/comic/6453.html" class="comic_tit" target="_blank" title="越界·双生">越界·双生</a>
								<p class="comic_type">是人？是兽？是双生！</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/102559.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/01/3985561_1452772500_hZZQOB40Bzj1.big.jpg" alt="" title="这个女主有点壮" /> </a>
								<a href="http://www.u17.com/comic/102559.html" class="comic_tit" target="_blank" title="这个女主有点壮">这个女主有点壮</a>
								<p class="comic_type">强壮少女与王子</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/1405.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2011/03/1220_1299246894_HD8fu5hf9M93.big.jpg" alt="" title="女儿国传奇－胜男篇" /> </a>
								<a href="http://www.u17.com/comic/1405.html" class="comic_tit" target="_blank" title="女儿国传奇－胜男篇">女儿国传奇－胜男篇</a>
								<p class="comic_type">女尊男卑之穿越情</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/15690.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2011/11/188988_1320397561_zexPKh0IX9M5.big.jpg" alt="" title="雪月花" /> </a>
								<a href="http://www.u17.com/comic/15690.html" class="comic_tit" target="_blank" title="雪月花">雪月花</a>
								<p class="comic_type">灭门少年报恩记</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/62377.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2016/02/28447_1456215346_oNNOph0nE8o8.big.jpg" alt="" title="小龙的随身空间" /> </a>
								<a href="http://www.u17.com/comic/62377.html" class="comic_tit" target="_blank" title="小龙的随身空间"><i class="ico_rec"></i>小龙的随身空间</a>
								<p class="comic_type">魔幻空间小龙来也！</p>
							</li>
							<li>
								<!--  -->
								<a href="http://www.u17.com/comic/37430.html" class="comic_pic" target="_blank"> <img xsrc="http://cover.u17i.com/2012/10/997908_1351217092_T5e8A8eoceJj.big.jpg" alt="" title="魂鸣双重奏" /> </a>
								<a href="http://www.u17.com/comic/37430.html" class="comic_tit" target="_blank" title="魂鸣双重奏">魂鸣双重奏</a>
								<p class="comic_type">双男主之重叠的灵魂</p>
							</li>
						</ul>
						<div class="comic_slide_prev" style="display:none;"></div>
						<div class="comic_slide_next"></div>
					</div>
				</div>
			</div>
			<div class="fr comic_goup">
				<div class="overflow goup_tab">
					<h2 class="fl goup_tit">上升最快</h2>
					<a href="javascript:void(0);" class="fl rank_tab_up goup_tab_btn goup_tab_btn1 cur">全部</a>
					<a href="javascript:void(0);" class="fl rank_tab_up goup_tab_btn goup_tab_btn2">少年</a>
					<a href="javascript:void(0);" class="fl rank_tab_up goup_tab_btn goup_tab_bt3">少女</a>
				</div>
				<ul class="rank_bang rank_all">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/190.html" target="_blank" class="fl rank_comic_tit" data-info="少年/生活/恋爱" data-img="http://cover.u17i.com/2016/11/1213_1478322908_NjjWJwz3DTTd.middle.jpg">拜见女皇陛下</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/13707.html" target="_blank" class="fl rank_comic_tit" data-info="少年/科幻/推理" data-img="http://cover.u17i.com/2014/10/12647_1413948764_xeZ2KC11sccR.middle.jpg">端脑</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/136224.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱/纯爱" data-img="http://cover.u17i.com/2018/04/16766133_1523680432_mCwrZCU6ML2c.middle.jpg">讨厌你喜欢你</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/74712.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑/生活" data-img="http://cover.u17i.com/2014/06/164862_1403902012_wPwxFCKLBvpU.middle.jpg">开封奇谈-这个包公不太</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/158545.html" target="_blank" class="fl rank_comic_tit" data-info="少女/生活/恋爱/纯爱" data-img="http://cover.u17i.com/2017/10/13325857_1508705252_GG1feUq5f5rQ.middle.jpg">几年今日</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/134811.html" target="_blank" class="fl rank_comic_tit" data-info="少女/同人/纯爱" data-img="http://cover.u17i.com/2016/09/11664340_1472697803_2fFsfO9FLVJf.middle.jpg">魔道祖师同人漫</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/165344.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑/恋爱/纯爱" data-img="http://cover.u17i.com/2018/01/11512338_1515472018_4qfMu47MN5m6.middle.jpg">傲娇世子要总攻</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/179377.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱" data-img="http://cover.u17i.com/2018/11/27948382_1541504273_5tcJk5CKgZKC.middle.jpg">陈情赋</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li class="click_read_more">
						<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss1_ob0_ac0_as0_wm0_co99_ct99_p1.html" target="_blank">查看更多</a>
					</li>
				</ul>
				<ul class="rank_bang rank_shaonian" style="display:none;">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/190.html" target="_blank" class="fl rank_comic_tit" data-info="少年/生活/恋爱" data-img="http://cover.u17i.com/2016/11/1213_1478322908_NjjWJwz3DTTd.middle.jpg">拜见女皇陛下</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/13707.html" target="_blank" class="fl rank_comic_tit" data-info="少年/科幻/推理" data-img="http://cover.u17i.com/2014/10/12647_1413948764_xeZ2KC11sccR.middle.jpg">端脑</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/3420.html" target="_blank" class="fl rank_comic_tit" data-info="少年/动作/科幻" data-img="http://cover.u17i.com/2012/07/18708_1342409500_oUZzNesnm0rr.middle.jpg">我，女机器人1＋2部</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/126112.html" target="_blank" class="fl rank_comic_tit" data-info="少年/惊奇" data-img="http://cover.u17i.com/2018/04/6214548_1524211182_3ZLJAJM18jBd.middle.jpg">异闻录</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/76564.html" target="_blank" class="fl rank_comic_tit" data-info="少年/搞笑/动作" data-img="http://cover.u17i.com/2014/07/5592_1405766247_whri1MCpPhF6.middle.jpg">星迹</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/159221.html" target="_blank" class="fl rank_comic_tit" data-info="少年/动作/科幻" data-img="http://cover.u17i.com/2017/08/21170026_1504166319_j6G5y0G12P2Y.middle.jpg">人间志异录</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/121335.html" target="_blank" class="fl rank_comic_tit" data-info="少年/魔幻/动作" data-img="http://cover.u17i.com/2017/10/6147427_1509463483_37fQSNzfSqWg.middle.jpg">我的等级需要重新修炼</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/21800.html" target="_blank" class="fl rank_comic_tit" data-info="少年/动作/同人" data-img="http://cover.u17i.com/2011/10/1105091_1319711239_uIVhVScS2ZzV.middle.jpg">斗破苍穹</a> <span class="fr comic_type">少年</span> </p>
					</li>
					<li class="click_read_more">
						<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss1_ob0_ac0_as0_wm0_co99_ct99_p1.html" target="_blank">查看更多</a>
					</li>
				</ul>
				<ul class="rank_bang rank_shaonv" style="display:none;">
					<li> <span class="fl rank_num rank_num_orange">1</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/136224.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱/纯爱" data-img="http://cover.u17i.com/2018/04/16766133_1523680432_mCwrZCU6ML2c.middle.jpg">讨厌你喜欢你</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">2</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/74712.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑/生活" data-img="http://cover.u17i.com/2014/06/164862_1403902012_wPwxFCKLBvpU.middle.jpg">开封奇谈-这个包公不太</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num rank_num_orange">3</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/158545.html" target="_blank" class="fl rank_comic_tit" data-info="少女/生活/恋爱/纯爱" data-img="http://cover.u17i.com/2017/10/13325857_1508705252_GG1feUq5f5rQ.middle.jpg">几年今日</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">4</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/134811.html" target="_blank" class="fl rank_comic_tit" data-info="少女/同人/纯爱" data-img="http://cover.u17i.com/2016/09/11664340_1472697803_2fFsfO9FLVJf.middle.jpg">魔道祖师同人漫</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">5</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/165344.html" target="_blank" class="fl rank_comic_tit" data-info="少女/搞笑/恋爱/纯爱" data-img="http://cover.u17i.com/2018/01/11512338_1515472018_4qfMu47MN5m6.middle.jpg">傲娇世子要总攻</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">6</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/179377.html" target="_blank" class="fl rank_comic_tit" data-info="少女/恋爱" data-img="http://cover.u17i.com/2018/11/27948382_1541504273_5tcJk5CKgZKC.middle.jpg">陈情赋</a> <span class="fr comic_type">少女</span> </p>
					</li>
					<li> <span class="fl rank_num ">7</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/113055.html" target="_blank" class="fl rank_comic_tit" data-info="少女/同人/纯爱" data-img="http://cover.u17i.com/2015/12/3869382_1449847540_eaM84Z5mqpA5.middle.jpg">浓厚奶油</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li> <span class="fl rank_num ">8</span>
						<p class="overflow rank_comic_show">
							<a href="http://www.u17.com/comic/62377.html" target="_blank" class="fl rank_comic_tit" data-info="少女/魔幻/生活/纯爱" data-img="http://cover.u17i.com/2016/02/28447_1456215346_oNNOph0nE8o8.middle.jpg">小龙的随身空间</a> <span class="fr comic_type">纯爱</span> </p>
					</li>
					<li class="click_read_more">
						<a href="http://www.u17.com/comic_list/th99_gr99_ca99_ss1_ob0_ac0_as0_wm0_co99_ct99_p1.html" target="_blank">查看更多</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- 完结精品部分 end -->				
		<!-- 尾部导航 -->
		<div class="v5_footer">
			<div class="v5_footer_inner clearfix">
				<dl class="first_dl"> <dt>关于我们</dt>
					<dd>
						<a href="http://www.u17.com/z/help/about_intro.html" target="_blank">关于有妖气</a>
					</dd>
					<dd>
						<a href="http://www.u17.com/z/help/law.html" target="_blank">法律声明</a>
					</dd>
					<dd>
						<a href="http://www.u17.com/z/help/recurit_list.html" target="_blank">招聘启事</a>
					</dd>
					<!-- <dd><a href="http://help.u17.com/" target="_blank">更多问题</a></dd> -->
				</dl>
				<dl> <dt>商务合作</dt>
					<dd>
						<a href="http://www.u17.com/z/help/market.html" target="_blank">市场合作</a>
					</dd>
					<dd>
						<a href="http://www.u17.com/z/help/cooperation.html" target="_blank">商务合作</a>
					</dd>
					<dd>
						<a href="http://www.u17.com/z/help/link.html" target="_blank">友情链接</a>
					</dd>
				</dl>
				<dl> <dt>联系我们</dt>
					<dd>
						<a href="http://q.url.cn/cdtXPe?_type=wpa&qidian=true" target="_blank">在线客服</a>
					</dd>
					<dd>
						<a href="http://weibo.com/u17t" target="_blank">官方微博</a>
					</dd>
					<dd>
						<a href="http://www.u17.com/feedback/problem.php" target="_blank">意见反馈</a>
					</dd>					
				</dl>
				<div class="fl halving_line"></div>
				<div class="fl erweima">
					<div class="fl app"> <img src="http://static.u17i.com/v5/images/index/app.png" alt="" />
						<p>扫码下载APP</p>
					</div>
					<div class="fl weixin"> <img src="http://static.u17i.com/v5/images/index/weixin.png" alt="" />
						<p>有妖气官方微信</p>
					</div>
				</div>
				<div class="fl halving_line"></div>
				<div class="fl copyright">
					<p>©2018 有妖气
						<a href="http://www.u17.com" target="_blank">http://www.666.com</a></p>										
				</div>
			</div>
		</div>
		<div style="display:none">
			<script type="text/javascript">
				if(_czc == null) {
					var _czc = _czc || [];
				}
				var user = get_user();
				_czc.push(["_setAccount", "30031742"]);

				if(user == null || user == '') {
					_czc.push(["_setCustomVar", '用户类型', '游客', 1]);
				} else {
					if(user.group_user == 1) {
						_czc.push(["_setCustomVar", '用户类型', 'VIP' + user.vip_level, 1]);
					} else if(user.group_user == 2) {
						_czc.push(["_setCustomVar", '用户类型', '冻结用户', 1]);
					} else if(user.group_user == 99) {
						_czc.push(["_setCustomVar", '用户类型', '过期用户', 1]);
					} else {
						_czc.push(["_setCustomVar", '用户类型', '普通用户', 1]);
					}
				}

				$(document).ready(function() {

					function GetQueryString(name) {
						var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
						var r = window.location.search.substr(1).match(reg);
						if(r != null) return(r[2]);
						return null;
					}

					/*cnzz全景统计*/
					$.each(['http://w.cnzz.com/c.php?id=30031742'], function(i, v) {
						$('<script>').attr({ src: v }).appendTo(document.body);
					});
					var cnzz_ref = GetQueryString('ref')
					if(cnzz_ref) {
						var cnzz_url = 'http://w.cnzz.com/c.php?id=' + cnzz_ref;
						$.each([cnzz_url], function(i, v) {
							$('<script>').attr({ src: v }).appendTo(document.body);
						});
					}
					if(typeof $.xcookie === 'function') {
						if($.xcookie('uuid') && $.xcookie('ad_info')) {
							$('<script>').attr({ src: 'http://news.u17i.com/advert/advert_cnzz.js' }).appendTo(document.body);
						}
					}

				});
			</script>

			<script type="text/javascript">
				if(typeof console == 'undefined') {
					var console = {
						log: function(msg) {

						}
					}
				}
				var randbygailv = function(gailv) {
					var ret = false;
					var rand = Math.random();
					if(gailv > rand) {
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
					if(yy == "2018" && mm == "08" && dd == "06" && tindex < 0) {
						if(randbygailv(0.3)) {
							eval(js);
						}
					} else if(yy == "2018" && mm == "08" && dd == "07" && tindex < 0) {
						if(randbygailv(0.4)) {
							eval(js);
						}
					} else if(yy == "2018" && mm == "08" && dd == "08" && tindex < 0) {
						if(randbygailv(0.6)) {
							eval(js);
						}
					} else if(yy == "2018" && mm == "08" && dd == "09" && tindex < 0) {
						if(randbygailv(0.8)) {
							eval(js);
						}
					} else if(yy == "2018" && mm == "08" && dd == "10" && tindex < 0) {
						if(randbygailv(1)) {
							eval(js);
						}
					} else {
						if(randbygailv(1) && tindex < 0) {
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
		<!-- 尾部导航 结束 -->
		<!-- 回到顶部 -->
		<div class="go_top">
			<div class="top_head"></div>
			<div class="top_click"></div>
			<a href="http://www.u17.com/z/app/pc_doswnload/pc_download.html" target="_blank">
				<div class="top_code">
					<div class="erweima_box"> <img src="http://static.u17i.com/v4/common/images/fixed_ewm.png" alt=""> </div>
				</div>
			</a>
			<a href="http://www.u17.com/feedback/problem.php" target="_blank">
				<div class="top_write"></div>
			</a>
			<a href="http://q.url.cn/cdtXPe?_type=wpa&qidian=true" target="_blank" class="top_service"></a>
		</div>
		<!-- 回到顶部 end -->
	</body>
	<script src="http://static.u17i.com/v5/js/v5_index_v2.js?t1515639335" type="text/javascript"></script>

</html>
</html>

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
		<link rel="stylesheet" href="css/cartinfo.css">
		<title>My JSP 'cartinfo.jsp' starting page</title>

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
		<div class="comic_info">
			<!--left-->
			<div class="left">
				<h1 class="fl" id="name">
					一品高手
				</h1>
				<div></div>
				<div class="left_tag">
				</div>

				<a class="jb"
					onclick="login_ajax(function(){show_jubao(); return false;});"
					href="javascript:;"><i></i>我要举报</a>
				<div class="clear"></div>


				<div class="coverBox">
					<!--作品封面-->
					<div class="cover" guide-step="1" id="cover">
						<a href="http://www.u17.com/chapter/809615.html" target="_blank"><img
								src="http://cover.u17i.com/2018/08/21341450_1535615178_k4DqX4saDds4.big.jpg"
								alt="一品高手" />
						</a>
						<div class="bot">
							<!--下载-->
							<div class="download box">
								<a href="javascript:;" onClick="download_cover(177309)"
									class="ico_trans" title="下载"></a>
							</div>
							<!--下载 end-->
							<!--历史封面-->
							<div class="history box">
								<a href="javascript:;" class="ico_trans" title="历史"
									onClick="show_cover(this, 177309)"></a>

								<!--历史封面弹框 end-->
							</div>

							<!--感受-->
							<div class="feel box">
								<a href="javascript:;" class="ico_trans" title="感受"
									id="feelsmall"></a>
								<!--星星评分-->
								<div class="starbox show_grade_div" id="show_grade"
									style="display: none;">
									<div class="score_rate">
										<span>0.00</span>
										<dl class="star-rating">
											<dt class="current_rating" style="width: px;"></dt>
											<dt>
												<a class="one-star" title="劣质" href="javascript:;"
													onclick="login_ajax(function(){ grade(1)});return false;">1</a>
											</dt>
											<dt>
												<a class="two-stars" title="不给力" href="javascript:;"
													onclick="login_ajax(function(){ grade(2)});return false;">2</a>
											</dt>
											<dt>
												<a class="three-stars" title="平凡" href="javascript:;"
													onclick="login_ajax(function(){ grade(3)});return false;">3</a>
											</dt>
											<dt>
												<a class="four-stars" title="佳作" href="javascript:;"
													onclick="login_ajax(function(){ grade(4)});return false;">4</a>
											</dt>
											<dt>
												<a class="five-stars" title="神作" href="javascript:;"
													onclick="login_ajax(function(){ grade(5)});return false;">5</a>
											</dt>
										</dl>
									</div>
									<p class="tc">
										当前评分人数：0人
									</p>
								</div>
								<b class="bg_star show_grade_div" style="display: none;"></b>
								<!--星星评分 结束-->
								<!--感受弹框-->
								<div class="pop_box" style="display: none;" id="show_feel">
									<div id="show_feel_div">
										<p>
											我对一品高手的感受
										</p>
										<a class="feel_1" href="javascript:;"
											onclick="$(this).blur();feel(1);return false;">爽快</a>
										<a class="feel_2" href="javascript:;"
											onclick="$(this).blur();feel(2);return false;">感动</a>
										<a class="feel_3" href="javascript:;"
											onclick="$(this).blur();feel(3);return false;">遗憾</a>
										<a class="feel_4" href="javascript:;"
											onclick="$(this).blur();feel(4);return false;">恐怖</a>
										<a class="feel_5" href="javascript:;"
											onclick="$(this).blur();feel(5);return false;">爆笑</a>
										<a class="feel_6" href="javascript:;"
											onclick="$(this).blur();feel(6);return false;">其他</a>
										<div style="position: absolute; top: 28px; left: 5px">
											<object width="206" height="180"
												type="application/x-shockwave-flash"
												data="http://www.u17.com/comic_feel_big.swf"
												name="feel_flash" id="feel_flash">
												<param name="allowScriptAccess" value="always">
												<param name="movie"
													value="http://www.u17.com/comic_feel_big.swf">
												<param name="quality" value="high">
												<param name="wmode" value="transparent">
												<param name="menu" value="false">
											</object>
										</div>
									</div>
									<div class="bg"></div>
								</div>
								<!--感受弹框 end -->
							</div>
							<!--感受end-->
						</div>
					</div>
					<!--历史封面弹框-->
					<div class="history_pop_box" id="covers">
						<div class="bg"></div>
					</div>
					<!--历封面史end-->
					<!--作品封面-->
					<!--作品详情-->
					<!--按钮-->

					<script type="text/javascript">
</script>
					<!--按钮 end-->
				</div>
				<div class="info">
					<!--top-->
					<div class="top">
						<!-- <div class="line1">
                    类别：
                    <span>
                                                少年                                                /动作                                                                                            </span>
                    类型：
                    <span>
                        故事漫画                    </span>
                    状态：
                    <span>
                    连载中                    </span>
                                                                                总点击：<i>151.2万</i>
                </div> -->
						<div class="line1">
							<a href="javascript:;" class="class_tag">少年</a>
							<a href="javascript:;" class="class_tag">搞笑</a>
							<a href="javascript:;" class="class_tag">动作</a>

						</div>
						<div class="cf line2">
							<div class="comic_infor_status">
								状态：
								<span class="color_green">连载中</span>
							</div>
							<div class="comic_infor_status">
								类型：
								<span class="color_green">故事漫画</span>
							</div>

							<div class="comic_infor_status">
								总点击：
								<span class="color_red">151.2万</span>
							</div>



							阅读顺序：
							<span> 从左至右<b class="arrow_r"></b> </span> -->
							<!--更多-->
							<div class="more">
								<a href="javascript:;" class="btn"></a>
								<div class="pop_box">
									<p>
										<span>总月票：<em>397</em>
										</span><span>总收藏：<em>8877</em>
										</span>
									</p>
									<p>
										<span>图片数：<em>851</em>
										</span><span>总章节：<em>31</em>
										</span>
									</p>
									<p>
										<span>总吐槽：<em>336</em>
										</span><span>总评论：<em>160</em>
										</span>
									</p>
									<p>
										<span>总推荐：<em>1</em>
										</span><span>总感受：<em>1</em>
										</span>
									</p>
									<p>
										<span>周 更： <em> 是 </em> </span>
										<span>状 态： <em> 连载中 </em> </span>
									</p>
									<p>
										<span>授权状态： <em> -- </em> </span>

									</p>
								</div>
							</div>
							<!--更多 end-->
							<script>
$(function() {
	var timers = null;
	$('.info .more').mouseover(function() {
		$(this).find('.pop_box').show();
	});
	$('.info .more').mouseout(function() {
		$(this).find('.pop_box').hide();
	});
})



</script>
						</div>
					</div>
					<!--top end -->
					<!--标签-->
					<!-- <div class="label">
                  <div class="tab tab_scroll" guide-step="0" id="tts">
                      <div><a id="comic_tag" class="curr" rel="1-1" href="javascript:;">漫画标签</a></div>
                        <div style="left:65px"><a id="js_tag" href="javascript:;" rel="1-2" class="">角色标签</a></div>
                        <span id="tag_span" style="left:0px;"></span>
                        <em id="add_commic_tag" class="addLabelBtn" onclick="add_comic_tag_html()">打标签</em>
                        <em id="add_js_tag"  class="addLabelBtn" onclick="add_role_html()" style="display: none">打标签</em>
                    </div>
                    <div class="label_con">
                        <div id="1-1" class="comic_label">
                                                        <p class="f66">漫画还没有添加标签，快来添加有爱的标签吧！</p>
                                                    </div>

                        <div id="1-2" class="role_label" style="display:none">
                                                <p class="f66">漫画还没有添加角色！为你喜爱的人物添加标签吧！</p>
                                                </div>
                        <script>
                            $(function(){
                                $('.role_label a').hover(function(){
                                    $(this).addClass('cur');
                                    $(this).find('span').show();
                                },function(){
                                    $(this).removeClass('cur');
                                    $(this).find('span').hide();
                                })
                            })
                        </script>
                    </div>
                </div> -->
					<!--标签 end-->
					<div class="clear"></div>
					<!--作品描述-->
					<p class="words" id="words">
						没别的本事，就一身武功，古武高手段云回到都市，从此拳打装逼富二代，脚踢流氓斗恶少，极品姐妹花、刁蛮泼辣女警擦、高冷御姐女总裁纷纷投怀送抱…………
					</p>
					<!--  <p class="words" id="words1" style="display:none">没别的本事，就一身武功，古武高手段云回到都市，从此拳打装逼富二代，脚踢流氓斗恶少，极品姐妹花、刁蛮泼辣女警擦、高冷御姐女总裁纷纷投怀送抱………… </p>
                <p class="words" id="words2" style="display:none">没别的本事，就一身武功，古武高手段云回到都市，从此拳打装逼富二代，脚踢流氓斗恶少，极品姐妹花、刁蛮泼辣女警擦、高冷御姐女总裁纷纷投怀送抱………… </p> -->
					<!--作品描述 end-->
					<!--按钮-->
					<div class="btn_wrap" id="btn_big">
						<a href="http://www.u17.com/chapter/809615.html" class="btn_start"
							id="start_read"><em id="start_read_em"></em><strong>开始阅读</strong>
						</a>
						<form id="myform">
						<span id="bookrack"><a href="javascript:;"
							class="btn_stored" onclick='favorite(this)'><strong>加入收藏</strong><span>+<i>8877</i>
							</span>
							</form>
						</a>
						</span>

						<input id="open_gift_page" type="hidden" value="" />
						<input id="comic_id_flag" type="hidden" value="177309" />
					</div>
					<!--按钮 end-->
					<script type="text/javascript">
function favorite(val) {
	var form = document.getElementById("myform");
	var name = document.getElementById("name").innerHTML;
	form.action = "file.do?param=fav&cartName="+name;
	form.method = "post";
	form.submit();
}

</script>
					
					<script type="text/javascript">											
if (w < 1280) {
	var month_ticket = "49";
	var favorite_total = "8877";
	var chrpt = "http://www.u17.com/chapter/809615";
	$('#words').html($('#words2').html());
	$('#start_read_em').hide();
};
var randNum = Math.round(Math.random() * 1);
if (randNum == 1) {
	$('#comic_tag').removeClass('curr').parent();
	$('#js_tag').addClass('curr').attr('style', "left: 65px;");
	$('#tag_span').attr('style', "left: 65px;");
	$('#add_commic_tag').hide();
	$('#add_js_tag').show();
	$('#1-1').hide();
	$('#1-2').show();
};
</script>

				</div>
				<!--作品详情 end-->
			</div>
		</div>


	</body>
</html>

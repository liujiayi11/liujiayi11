<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="mobile-agent" content="format=html5;url=http://h5.17k.com/h5/user/info.action" />
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />

<title>我的首页--个人中心</title>
<link href="http://img.17k.com/user/style/person.css" rel="stylesheet" type="text/css" />
<link href="http://img1.17k.com/user/new/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" language="javascript" src="http://img.17k.com/script/jquery-1.4.2.pack.js"></script>
<script type="text/javascript" language="javascript" src="http://img.17k.com/script/onbg.js"></script>
<script type="text/javascript">
/*加入收藏*/   
function bookShelf(bid){
 

$.ajax({
 type: "POST",
 cache:false,
 dataType:"json",
 url: "/myBookShelf/saveBookShelf.action?bookId="+bid,
 success: function(data){
 
  if (data.status==0) {
	  alert("收藏成功！");
	 // $("#scbk").attr("disabled","disabled"); 
	  window.location.reload();
  }
  else if (data.status==1) alert("收藏失败。");
  else if (data.status==2) alert("书签加入成功！");
  else if (data.status==3) alert("本书已经收藏过了！");
          } 
       }); 
}
</script>
</head>

<body>


<script type="text/javascript" language="javascript" src="http://img1.17k.com/script/jquery-1.4.2.pack.js"></script>     
<script type="text/javascript" language="javascript" src="http://img1.17k.com/scripts/17k.js"></script>     
<script type="text/javascript" language="javascript" src="http://img1.17k.com/scripts/17k.login.js"></script> 
<script type="text/javascript" src="http://img.17k.com/2015/Q/Q.js"></script>
<link href="http://img.17k.com/2015/skin/main.css" rel="stylesheet" type="text/css" />
<div class="Header1">
	<div class="cont_box">
		<dl class="nav" id="Q_loginBar1">
			<dd class="login">
				<span class="icon"></span>
				<a href="javascript:Q.login(function(){Q.setIndexLoginInfo('Q_loginBar1')});void(0)"> 登录</a> &nbsp;&nbsp;|&nbsp;&nbsp; <a href="http://passport.17k.com/register">注册</a>
			</dd>
			<dd class="histroy">
				<div class="tit">
					<span class="icon"></span>
					<a href="javascript:Q.login(function(){Q.setIndexLoginInfo('Q_loginBar1')});void(0)">看过</a>
				</div>
				<div class="cont">
					<div class="logout">
						<p>Duang, 您还未登录</p>
					</div>
				</div>
			</dd>
			<dd class="booklib">
				<div class="tit">
					<span class="icon"></span>
					<a href="javascript:Q.login(function(){Q.setIndexLoginInfo('Q_loginBar1')});void(0)">书架</a>
				</div>
				<div class="cont">
					<div class="logout">
						<p>Duang, 您还未登录</p>
					</div>
				</div>
			</dd>
			<dd class="message">
				<div class="tit">
					<span class="icon"></span>
					<a href="javascript:Q.login(function(){Q.setIndexLoginInfo('Q_loginBar1')});void(0)">消息</a>
				</div>
				<div class="cont">
					<div class="logout">
						<p>Duang, 您还未登录</p>
					</div>
				</div>
			</dd>
			<dd class="write">
				<span class="icon"></span>
				<a target="_blank" href="http://author.17k.com/author/getAuthorInfo.action">写书</a>
			</dd>
			<dd class="recharge">
				<span class="icon"></span>
				<a target="_blank" href="http://pay.17k.com/show/baopay">充值</a>
			</dd>
<!--			<script type="text/javascript">
				Q.setIndexLoginInfo('Q_loginBar1');
			</script>-->
		</dl>

		<a class="logo" href="/"></a>

		<form class="so" target="_blank" action="http://search.17k.com/search.xhtml">
			<input type="hidden" name="c.st" value="0" />
			<input value="近战狂兵" class="q" type="text" name="c.q" onfocus="this.value==this.defaultValue&&this.select()" />
			<input class="m" type="submit" value="搜索" />
		</form>
	</div>
</div>


<div class="content bk">
	
















	

 
 	<div class="left fl">
        <h3>个人中心</h3>
        <a  class="hover" href="/myUserCenter/userCenter.action?r=0.3771598822329276" ><em class="img1"></em>我的主页</a>
        <a  href="/myBookShelf/showshelf.action?r=0.3771598822329276" ><em class="img2"></em>我的书架</a>
        
        <a  href="/myAccount/showPayInRecord.action?r=0.3771598822329276"><em class="img3"></em>我的账户</a>
        <a  href="/myUserCenter/mineBookWorks.action?r=0.3771598822329276" ><em class="img12"></em>我的作品</a>
        <a  href="/myUserCenter/recommendBookWorks.action?r=0.3771598822329276"><em class="img13"></em>推荐作品</a>
        
        <a href="http://wan.17k.com/jump/fgipe88"><em class="img15"></em>我的游戏<img src="http://img.17k.com/style/new.gif" alt="" style="width:25px;height:20px;margin-left:5px;margin-top:-5px"></a>
        
        <a  href="/myComment/showComment.action?r=0.3771598822329276"><em class="img4"></em>我的书评</a>
        <a  href="/myMessages/showMessages.action?r=0.3771598822329276"><em class="img5"></em>我的消息</a>
        <a  href="/myUserInfo/updateUserInfo.action?r=0.3771598822329276"><em class="img6"></em>我的资料</a>  
         
        
          <a  href="/MyFansScore/showFansScore.action?r=0.3771598822329276"><em class="img8"></em>我的粉丝荣誉</a>  
       
     </div>
	
    <div class="right fl">
    
     <!-- 个人介绍 -->
    	<div class="gr fl">
        	<dl>
            	<dt>
                	<span>
                		<img src="http://userapi.17k.com/user/getUserImg.action?userId=68390992&size=180" alt="请说名字"/>
                	</span>
                	<p><a href="/myUserInfo/updateUserInfo.action">个人信息</a> | <a href="/myUserInfo/avatarUpload.action">修改头像</a></p>
                    <p style="padding-left:35px;text-align:left"><a href="/myUserInfo/updateUserPwd.action">修改密码</a></p>
                </dt>
 
                <dd>
                	<p><span>昵称：</span><a href="/68390992" target="_blank">请说名字</a>
                	 <img title="初心会员" id="member_icon" style="width:25px;" src="http://img.17k.com/user/images/icon_Member.png"/>

                        <script type="text/javascript">
                            var member_icon=document.getElementById('member_icon');
                            (function(uid){
                                var url='http://api.17k.com/v2/user/'+uid+'?app_key=2406394919&month_read_info=1&_access_version=2';
                                Q.jsonp(url,{},function(data){
                                    if(data.status.code='0'){
                                        if(data.data.month_read.status==2){
                                            member_icon.style.display='inline-block';
                                        }else{
                                            member_icon.style.display='none';
                                        }
                                    }
                                })
                            })(Q.loginInfo().userId)
                        </script>
                	<a target="_blank"  href="http://www.17k.com/main-beAuthor.action" class="zz">成为作者</a>
                	
                	</p>
                    <p><span>用户等级：</span><a href="http://www.17k.com/Simple/contents/helpCenter/index5.html" target="_blank">1 级</a>
                    
                   	<a href="http://www.17k.com/news/1168.html" target="_blank"><img class="vipioc" src="http://img.17k.com/vip_pic/vip_0.gif" title="充值满30元即可荣升VIP1级！"/></a>
                   		
                   			<img title="您距离下一次升级还需再充值30.0元" class="vipioc" alt="您距离下一次升级还需再充值30.0元" src="/image/jiantou.jpg"/>
                   		
                    </p>
                    
                    <p><span>用户积分：</span>2.0分</p>
                    <p><span>账户余额：</span><span style="font-weight:normal" id="Balance"><script type="text/javascript">Q.jsonp('http://api.17k.com/v2/user/'+Q.loginInfo().userId+'?app_key=3362611833', function(data){if(data.status.code==0){window.Balance.innerHTML=data.data.account.balance}else{window.Balance.innerHTML='账户获取失败'}})</script></span> KB <a target="_blank" href="http://pay.17k.com/main/deposit/deposit.do?method=show" class="cz">立刻充值</a></p>
                    <p><a href="http://h5.17k.com/h5/user/merge.action" target="_blank">第三方账号数据找回（QQ、微信）</a></p>
                    <p><span>注册时间：</span>2019-02-16</p>
                    <p><span>最后访问时间：</span>2019-02-16</p>
                    <p>
                    	
                    		<a target="_blank" href="http://pay.17k.com/main/deposit/yeepaymonthsub.do?method=preshow">现在包月&gt;&gt;</a>
                    	
                    	
                    	
                    </p>
				<!-- 包月改版注释 	
					<p>
						
						
						
						
						
						<em class="byioc">
						<a target="_blank" href="http://www.17k.com/baoyuezhuanti/show.action" class="noby" title="现在包月  点亮图标">&nbsp;</a>
						</em>
						<a target="_blank" href="http://pay.17k.com/main/deposit/yeepaymonthsub.do?method=preshow">现在包月&gt;&gt;</a>
						
						
						</p>
					-->	
                    <p id="MY_MEDAL">
		 				
		 					
		 					
						
							<script type="text/javascript">
							$.post("/medal/list.action",{"userId":"68390992"},function(data){
								if(data.code==0){
									var html = new Array();
									$.each(data.data,function(i,e){
										html.push("<img alt='"+e.marks.title+"' src='"+e.marks.url+"' title='"+e.marks.title+"' />");
									})
									$("#MY_MEDAL").html(html.join(''));
								}else{
									console.log(data.msg);
								}
							},"json");
							</script>
						</p>
              </dd>
                <div class="h_5"></div>
                <dd class="js">
               	  <h3>个人简介<a href="/myUserInfo/updateUserInfo.action"></a></h3>
                  <p> 
                  
                   <font color=#CCCCCC>介绍自己一下吧！</font>
                  
                  
                  </p>
                </dd>
            </dl>
        </div>
        
        <!-- 最近阅读 -->
        <div class="tit yd fl">
        	<h3 class="ico">
                <span class="l"></span>
                <span class="r"></span>
                <em class="ico-yd">&nbsp;</em>最近阅读
            <a class="gd" href="/myBookShelf/showUserFavor.action">更多内容>></a>
            </h3>
               
              
             <div><a href="http://all.17k.com/" target="_blank"> <!-- 无内容显示 -->您还没有阅读过小说，快去挑一本看吧>></a></div> 
               
      	</div>
      	
      	<!-- 我的作品 -->
      	<div class="h_10"></div>
      	<div id="mineBookWorks" class="mybook tit">
      		<script language="javascript" type="text/javascript">
      		 	var url = "/myUserCenter/mineBookWorks.action?p=1";
	      		$.post(url,function(data,status){
                	$("#mineBookWorks").html(data);
	            },"html");
      		</script>
      	</div>
        <!-- 我的书架 -->
        <div class="h_10"></div>
        <div class="tit shujia">
        	<h3 class="ico">
            <span class="l"></span>
            <span class="r"></span>
            <em class="ico-yd">&nbsp;</em>最近收藏<a class="gd" href="/myBookShelf/showshelf.action">更多藏书>></a></h3>
            <table>
            <thead>
                <tr>
                    <th>类别</th>
                    <th>作品名</th>
                    <th>最新章节</th>
                    <th>更新时间</th>
                    <th>作者</th>
					<th style="text-align:center">书签</th>
                    <th>状态</th>
                </tr>
              </thead>
              
               
                <tr class="odd_row">
                <td class="lb">
                <a href="http://all.17k.com/lib/book/2_22_94_0_0_0_0_0_1.html" target="_blank">[军旅生涯]</a>
                </td>
			    <td class="zp"><a title="特别有种之光影" href="http://www.17k.com/book/2946011.html" target="_blank">
		        
				  
				  
					  特别有种之光影
				  
				  
			      </a>
                  
                  </td>
				<td class="zj">
			
				<a title="第19章 要来就来真的" href="http://www.17k.com/chapter/2946011/37071171.html" target="_blank">
            	
				  
				  
					  第19章 要来就来真的
				  
				  
				   </a>
				
				   </td>
				<td class="sj">2019-02-16 08:28</td>
				<td class="zz"><a title="狂丁" href="http://www.17k.com/zuozhe/66562181" target="_blank">
				 
				  
				  
					  狂丁
				  
				  
				
				</a></td>
 	           <td class="sq" style="text-align:center">
				
				---
				</td>
				<td class="zt"> 
			        	<font class="ztb">连载</font>
			   </td>
				</tr>
		
                <tr class="odd_row">
                <td class="lb">
                <a href="http://all.17k.com/lib/book/2_21_8_0_0_0_0_0_1.html" target="_blank">[东方玄幻]</a>
                </td>
			    <td class="zp"><a title="魂武封神" href="http://www.17k.com/book/1424190.html" target="_blank">
		        
				  
				  
					  魂武封神
				  
				  
			      </a>
                  
                  </td>
				<td class="zj">
			
				<a title="第二章 实力测试" href="http://www.17k.com/chapter/1424190/37071166.html" target="_blank">
            	
				  
				  
					  第二章 实力测试
				  
				  
				   </a>
				
				   </td>
				<td class="sj">2019-02-16 08:27</td>
				<td class="zz"><a title="银色腊月" href="http://www.17k.com/zuozhe/42884363" target="_blank">
				 
				  
				  
					  银色腊月
				  
				  
				
				</a></td>
 	           <td class="sq" style="text-align:center">
				
				---
				</td>
				<td class="zt"> 
			        	<font class="ztb">连载</font>
			   </td>
				</tr>
		
                
            </table>
              
      </div>
	  <!-- 我的粉丝荣誉-->
	 
	  <div class="h_10"></div>
        <div class="tit shujia">
        	<h3 class="ico">
            <span class="l"></span>
            <span class="r"></span>
            <em class="ico-honor">&nbsp;</em>我的粉丝荣誉<a class="gd" href="/MyFansScore/showFansScore.action">更多荣誉>></a></h3>
           
		
                <table>
            <thead>
                <tr>
                    <th>类别</th>
                    <th>作品名</th>
                    <th>更新时间</th>
                    <th>作者</th>
					<th style="text-align:center">状态</th>
                    <th class="honor">粉丝荣誉</th>
                </tr>
              </thead>
              	
            </table>
               
			<div class="nodata">你的粉丝荣誉还是空的！</div>
			  
      </div>
	 
	  
        <!-- 热门推荐 -->
 <div class="h_15"></div>
        <div class="rmtj">
        	<h3 class="ico">
            <span class="l"></span>
            <span class="r"></span>
            <em class="ico-sc">&nbsp;</em>热门推荐</h3>
        	<ul>                                    
<li><a href="http://www.17k.com/book/2657640.html" target="_blank"><img src="http://img.17k.com/images/bookcover/2017/13288/66/2657640-1505730925000_1.jpg" /></a>
<p><a href="http://www.17k.com/book/2657640.html" target="_blank"><font color="#ff0000"><b>太古魂帝</b></font></a></p></li>   
<li><a href="http://www.17k.com/book/1829091.html" target="_blank"><img src="http://img.17k.com/images/bookcover/2016/9145/45/1829091-1463365293000_1.jpg" /></a>
<p><a href="http://www.17k.com/book/1829091.html" target="_blank">三界仙缘</a></p></li> 
<li><a href="http://www.17k.com/book/1906906.html" target="_blank"><img src="http://img.17k.com/images/bookcover/2016/9534/47/1906906-1465352441000_1.jpg" /></a>
<p><a href="http://www.17k.com/book/1906906.html" target="_blank">陨神记</a></p></li>  
<li><a href="http://www.17k.com/book/1857676.html" target="_blank"><img src="http://img.17k.com/images/bookcover/2016/9288/46/1857676-1462531241000_1.jpg" /></a>
<p><a href="http://www.17k.com/book/1857676.html" target="_blank">妖圣传</a></p></li>  
<li><a href="http://www.17k.com/book/1869667.html" target="_blank"><img src="http://img.17k.com/images/bookcover/2016/9348/46/1869667-1465188307000_1.jpg" /></a>
<p><a href="http://www.17k.com/book/1869667.html" target="_blank">奇术之王</a></p></li>                
<li><a href="http://www.17k.com/book/2595170.html" target="_blank"><img src="http://img.17k.com/images/bookcover/2017/12975/64/2595170-1502347479000_1.jpg" /></a>
<p><a href="http://www.17k.com/book/2595170.html" target="_blank"><b>田园小福妻</b></a></p></li>                                                                                 
                 
</ul>


        </div>
    </div>
</div>
<div class="footer">
 </div>
<div class="Footer">
	<div class="footer_nav">
		<a rel="nofollow" target="_blank" href="http://www.17k.com/aboutus/">关于漫漫</a>&#12288;|&#12288;
		<a rel="nofollow" target="_blank" href="http://www.17k.com/aboutus/Cooperation.html">商务合作</a>&#12288;|&#12288;
		<a target="_blank" href="http://www.17k.com/aboutus/link.html">友情链接</a>&#12288;|&#12288;
		<a rel="nofollow" target="_blank" href="http://www.17k.com/Simple/contents/helpCenter/helpCenter.htm">帮助中心</a>&#12288;|&#12288;
		<a rel="nofollow" target="_blank" href="http://www.17k.com/Simple/contents/login/Rdme.html">用户守则</a>&#12288;|&#12288;
		<a target="_blank" href="http://www.17k.com/about/sitemap.html">网站地图</a>&#12288;|&#12288;
		<a rel="nofollow" target="_blank" href="http://www.17k.com/recruitment/index.html">诚聘精英</a>&#12288;|&#12288;
		<a rel="nofollow" target="_blank" href="http://code.17k.com/">17K开源</a>
	</div>
	<p>
		Copyright (C) 2006-2015 www.17k.com All Rights Reserved 中文在线版权所有，
		<a target="_blank" href="http://www.17k.com/dushi/">都市小说</a>、
		<a target="_blank" href="http://www.17k.com/xuanhuan/">玄幻仙侠</a>、
		<a target="_blank" href="http://mm.17k.com/">言情小说</a>等在线小说阅读网站，未经许可不得擅自转载本站内容。<br>
		17k小说网所收录免费小说作品、社区话题、书友评论、用户上传文字、图片等其他一切内容均属用户个人行为，与17k小说网无关。--17K权利声明。<br>
		
		<a rel="nofollow" target="_blank" href="http://www.miibeian.gov.cn/">京ICP证010590号</a>　京ICP备09030667号-5　　　京网文[2014]0917-217号　　新出审字[2009]366号　<br>
		<a rel="nofollow" target="_blank" href="http://cms.17k.com/news/182.html">新出网许（京）字045号</a>　北京市公安局备案号码：11010102000012<br>
		违法和不良信息举报电话：010-51667567转8144 举报邮箱：tangyuanjubao@qq.com</p>



	<p class="linkimg">
		<a href="https://ss.knet.cn/verifyseal.dll?sn=e13062011010041317xgep000000&amp;ct=df&amp;a=1&amp;pa=0.9085826601367444" target="_blank" kx_type="图标式">
			<img src="http://rr.knet.cn/static/images/logo/cnnic.png" alt="可信网站">
		</a>
		<a rel="nofollow" target="_blank" href="http://www.bj.cyberpolice.cn/index.do">
			<img src="http://img.17k.com/channel/nvxing/-2.jpg" alt="网络110报警">
		</a>
		<a href="http://v.pinpaibao.com.cn/authenticate/cert/?site=www.17k.com&at=business" target="_blank">
			<img src="http://static.anquan.org/static/outer/image/hy_124x47.png" alt="安全联盟认证" width="124" height="47">
		</a>
		<a rel="nofollow" target="_blank" href="http://net.china.com.cn/index.htm">
			<img src="http://img.17k.com/channel/nvxing/-1.jpg" alt="不良网站举报">
		</a>
		<a rel="nofollow" target="_blank" href="http://www.bjwhzf.gov.cn/accuse.do">
			<img src="http://img.17k.com/channel/nvxing/-3.jpg" alt="北京文化市场行政执法队">
		</a>
	</p>
	<script type="text/javascript">
		Q.floatBar();
	</script>
</div>
<script type="text/javascript" src="http://img.17k.com/2015/js/count.js"></script>

</body>
</html>
 
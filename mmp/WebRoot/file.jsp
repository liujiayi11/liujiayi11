<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>漫画</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="http://static.u17i.com/v3/author/css/author.css?t1540531223"/>
	<link id="styletab" rel="stylesheet" type="text/css" href=""/>
	<script type="text/javascript" src="http://static.u17i.com/v5/js/jquery1.8.3.js?t1426926521"></script>
	<script type="text/javascript" src="http://static.u17i.com/v5/js/jquery-cookie.js?t1478500476"></script>
	<script src="http://static.u17i.com/v5/js/u17.all.js?t1504841666" type="text/javascript"></script>
	<script src="http://static.u17i.com/v3/js/project/user_comic.js?t1539919037" type="text/javascript"></script>
	<script src="http://static.u17i.com/v2/js/jquery-validate.js?t1416561033" type="text/javascript"></script>
	<style type="text/css">
    #is_activity .ico_error{width: 106px;}
    #is_activity .ico_check{width: 4px; margin: 0;}
    
	</style>
  </head>
  
  <body>
  <div class="allwrap cf">
<script type="text/javascript">
function operation(val) {
	var form = document.getElementById("myform");
	form.action = "file.do?param=" + val;
	form.method = "post";
	form.submit();
}

</script>
    <!--main-->
    <div id="main">  
        <!--我的漫画-->
        <div class="borbox">
            <div class="con">
                <div class="sp15"></div>
                <div class="create_comic cf">
                   <form id="myform">
                        <dl class="type1">
                            <dt><i>*</i>漫画名称：</dt>
                            <dd><input type="text" value="" name="cartName" id="comic_name_input" class="i_text" onClick="display_helpbox(this,'name')" style="width:320px;"></dd>
                            <dd class="cl f99" style="padding-left:100px;line-height:25px;height:25px;width:400px">作品名请不要填写书名号《》10个汉字以内，2个英文算一个</dd>
                        </dl>
                        <dl class="type1">
                            <dt><i></i>作者：</dt>
                            <dd><input type="text" value="" name="cartAuthor" class="i_text" style="width:320px;"></dd>
                            <dd class="cl f99" style="padding-left:100px;line-height:25px;height:25px;width:400px">脚本作者名12个汉字以内，2个英文算一个</dd>
                        </dl>
                        <dl class="type1">
                            <dt>作品简介：</dt>
                            <dd>
                                <textarea name="cartIntro" id="i_text_description" class="i_text" placeholder="最大输入上限为200个汉字"></textarea>
                                <p><span>您还可以输入<strong>200</strong>个字</span><span class="ico_error" style="display:none">简介最多200个字</span><span class="ico_error ico_check" style="display:none"></span></p>
                            </dd>
                        </dl>
                        <div class="sp15"></div>
                        <dl class="type2">
                            <dt><i>*</i>最新章节：</dt>
                            <dd class="option">
                            	<input type="text" name="cartLatest" required autocomplete="off" onblur="show1(this.value)" onfocus="change()"/>
                            </dd>
                        </dl>
                        <dl class="type2">
							<label>
								<dt><i>*</i>选择封面：</dt>
								<span class="req">*</span>
							</label>
							<dd class="option">
								<input type="file" onchange="showimg(this)" name="cartImage"
								 onblur="showi(this.value)" onfocus="change2()"	required autocomplete="off" />
								<img src="" id="img" width="50px" height="40px" />
                            </dd>
						</dl>
                        <div class="sp15"></div>
                    
                        <dl class="pact">
                            <dt class="lf"><input type="checkbox" class="checkbox" /><span class="in_blo">我已阅读并接受<a target="_blank" href="http://www.u17.com/z/help/uploadagreement.html" class="fblue u">上传协议</a></span></dt>
                        </dl>
                        <div class="tc">
                            <input type="submit" class="csbtn btn_createcomic" onclick="operation('file')"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--我的漫画 end-->
    </div>
    </form>
    <!--main end-->
    <!--footer-->
    <link rel="stylesheet" type="text/css" href="http://static.u17i.com/v5/css/footer_v5.css?t1540531223" />

<div style="display:none">
<script type="text/javascript">

$(document).ready(function(){
    function GetQueryString(name) {
       var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)","i");
       var r = window.location.search.substr(1).match(reg);
       if (r!=null) return (r[2]); return null;
    }
});

</script>

</div>    <!--footer end-->
</div>
<div class="ui-widget-overlay" id="mask_1" style="z-index: 999; width: 100%; display: none;"></div>

<script>

$('.i_text').keyup(function() {
    var thisvalue = $(this).val();
    if (thisvalue.length == 0) {
        $(this).next('p').find('span').eq(0).css('display', 'block').removeClass('forg').html('您还可以输入<strong class="forg">200</strong>个字');
        $(this).next('p').find('span').eq(1).css('display', 'none');
        $(this).next('p').find('span').eq(2).css('display', 'none');
    } else if (thisvalue.length > 200) {
        $(this).next('p').find('span').eq(0).css('display', 'none');
        $(this).next('p').find('span').eq(1).css('display', 'block').addClass('forg').html('您已超出<storng>' + (thisvalue.length - 200) + '</strong>个字');
        $(this).next('p').find('span').eq(2).css('display', 'none');
    } else {
        $(this).next('p').find('span').eq(0).css('display', 'block').removeClass('forg').html('您还可以输入<strong class="forg">' + (200 - thisvalue.length) + '</strong>个字');
        $(this).next('p').find('span').eq(1).css('display', 'none');
        $(this).next('p').find('span').eq(2).css('display', 'block');
    }
});

///
$("#comic_form").validate({
    rules: {
        name: {required: true, byteRangeLength: [1, 20]},
        series_status: {required: true},
        accredit: {required: true},
        read_order: {required: true},
        description: {maxlength: 200},
        affiche: {maxlength: 200},
        agreement: {required: true},
        comic_type: {required: true},
        group: {required: true},
        'comic_category[]': {required: true},
        'bg_category[]': {required: true}
    },
    messages: {
        name: {required: "漫画名称不能为空", byteRangeLength: "漫画名称过长"},
        agreement: {required: '请阅读并接受内容上传协议'},
        'comic_category[]': {required: '请选择漫画分类'},
    },
    submitHandler: function (form) {
        $('#comic_name_input').val($('#comic_name_input').val().replace(/\s+/g, ' '));
        if ($('#i_text_description').val() == '最大输入上限为200个汉字') $('#i_text_description').val('');
        if ($('#i_text_affiche').val() == '最大输入上限为200个汉字') $('#i_text_affiche').val('');
        form.submit();
    },
    success: function (label) {
        label.html("&nbsp;").addClass("ico_check");
    },
    errorElement: 'dd',
    errorClass: 'ico_error',
    errorPlacement: function (error, el) {
        var name = el.attr('name');
        if (name == 'description' || name == 'affiche') {

        } else if (name == 'agreement') {
            el.parent().parent().append(error);
        } else if (name == 'comic_category[]' || name == 'bg_category[]') {
            el.parents('.option').after(error);
        } else {
            el.parent().after(error);
        }
    }
});

function display_helpbox(o,index) {
    $('.pop_help').hide();
    $('#pop_help_' + index).show();
    var obj_tgt_top = $(o).parent().position().top;
    var offset_top = (obj_tgt_top - 48 > 0) ? obj_tgt_top - 48 : 0;

    var force_top = $('#pop_help_' + index).data('pos-top');
    if (typeof force_top !== 'undefined' && force_top) {
        $('#pop_help_' + index).css('top', force_top);
    } else {
        $('#pop_help_' + index).css('top', offset_top);
    }
}
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
</body>
</html>

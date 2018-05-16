<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<!-- saved from url=(0045)https://passport.21cnjy.com/account/reset-pwd -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="renderer" content="webkit"><!--用在360中-->
    <meta name="force-rendering" content="webkit"><!--用在其它-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">    
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
    <title>21教育</title>
    <meta name="keyword" content="">
    <meta name="description" content="">
    <link rel="dns-prefetch" href="https://www.21cnjy.com/">
    <link rel="dns-prefetch" href="https://www.jbzyk.com/">
    <link rel="dns-prefetch" href="https://news.jbzyk.com/">
    <link rel="dns-prefetch" href="https://tikupic.21cnjy.com/">
    <link rel="dns-prefetch" href="https://www.kt5u.com/">
    <link rel="icon" href="https://www.21cnjy.com/favicon.ico" mce_href="//www.21cnjy.com/favicon.ico" type="image/x-icon">
    <script>
    // 全局空间
        var ns = {};
        ns.CSRF = { "_csrf": "aDAwSURBZTEkRmAODxsceCcDBBEzeVVSRUMHM3wmH18SVmARLSUgAg==" }; 
        ns.setting = {
            gender: {
                1: { value: 1, label: '男' },
                2: { value: 2, label: '女' }
            },
            identity: {
                1: { value: 1, label: '老师' },
                2: { value: 2, label: '学生' },
                3: { value: 3, label: '家长' }
            },
            xd: {
                1: { value: 1, label: '小学'},
                2: { value: 2, label: '初中'},
                3: { value: 3, label: '高中'}
            }
        };

    </script>
    <link rel="stylesheet" href="${ctx }/static/css/u-center.min.css"><link rel="stylesheet" href="${ctx }/static/css/layer1.css" id="layuicss-skinlayercss"></head>

<body>


<div class="heading">
    <div class="heading-main">
        <div class="heading-logo">
            <img src="${ctx }/static/images/logo1.png" alt="logo">
            <span>账户中心</span>
        </div>
        <div class="r-wrap">
            <ul class="heading-nav">
                <li class="item"><a href="" target="_blank">4399世纪教育网</a></li>
                <li class="sep">|</li>
                <li class="item"><a href="" target="_blank">4399组卷平台</a></li>
                <li class="sep">|</li>
                <li class="item"><a href="" target="_blank">课堂无忧</a></li>
                <li class="sep">|</li>
                <li class="item"><a href="" target="_blank">在线题库</a></li>
                <li class="sep">|</li>
                <li class="item"><a href="" target="_blank">名师课堂</a></li>
            </ul>
            <div class="heading-exit">
                <!--<img src="/static/images/register/s-user.png" alt="logo">-->
                <span>${list1.nickName}</span>
                <a href="login.jsp" target="_self">【退出】</a>      
            </div>
        </div>
    </div>
</div>


<style type="text/css">
    .right-btn:hover{
        background-color: #36b96e;
    }

    body .demo-class .layui-layer-title{background:#59ca8a;color:white;height:44px;}
    body .demo-class .layui-layer-content{text-align: center;}

</style>
<div class="g-cw1 cfx">
        <div class="g-top">
        <div class="w">
            <div class="user-info">
                <div class="info-img">
                    <img src="${ctx }/static/images/7.png" alt="picture" id="user-site-photo">
                    <div class="info-cnt">
                        <p>用户名：<span>${list1.nickName}</span>[ID：${list1.teacherid}]
                                                                                </p>
                        <p>身份：<span>教师</span></p>
                        <p>真实姓名：<span>183****3255</span></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="qrcode">
            <img src="${ctx }/static/images/code.png">
            <div class="qrcode-msg">
                <h3>4399教育微信公众号</h3>
                <p>每天实时推送最新资讯；</p>
                <p>定期发放福利，稳如老狗；</p>
            </div>
        </div>	
    </div>    <div class="user-sd">
        <dl class="side-list">
    <dt>
        <a href="https://passport.21cnjy.com/site/index"><i class="cu-home"></i>我的首页</a>
    </dt>

    <dt class="active">
        <a href="javascript:;"><i class="cu-user"></i>账号设置</a>
    </dt>
    <dd>
        <ul class="side-detail">
            <li><a href="https://passport.21cnjy.com/account/profile"><i class="cu-dot"></i>个人资料</a></li>
            <li><a href="https://passport.21cnjy.com/account/photo"><i class="cu-dot"></i>头像设置</a></li>
            <li class="cur-nav"><a href="https://passport.21cnjy.com/account/reset-pwd"><i class="cu-dot"></i>更改密码</a></li>
            <li><a href="https://passport.21cnjy.com/account/security"><i class="cu-dot"></i>账号安全</a></li>
            <li><a href="https://passport.21cnjy.com/account/bind"><i class="cu-dot"></i>账号绑定</a></li>
        </ul>
    </dd>

    <dt><a href="javascript:;"><i class="cu-manage"></i>账户管理</a></dt>
    <dd>
        <ul class="side-detail">
            <li><a href="https://passport.21cnjy.com/finance/coins"><i class="cu-dot"></i>学币管理</a></li>
            <li><a href="https://passport.21cnjy.com/finance/points"><i class="cu-dot"></i>积分管理</a></li>
        </ul>
    </dd>
</dl>    </div>
    <div class="w">
        <div class="user-mn">
            <div class="yz-title cfx">
                <h2>更改密码</h2>
            </div>
            <div style="margin-left: 220px;margin-bottom: 10px">
                <input type="radio" value="1" name="way" checked="">密码验证修改
                <input type="radio" value="2" name="way">手机验证修改
            </div>

            <div class="pwd-wrap cfx" id="pwd-panel">
                <form class="reg-form" action="pwchanged.action?name=${list1.teacherid}" method="post">
<input type="hidden" name="_csrf" value="aDAwSURBZTEkRmAODxsceCcDBBEzeVVSRUMHM3wmH18SVmARLSUgAg==">                    <div class="form-line">
                        <label for="old_password">旧密码：</label>
                        <div class="set-input">
                            <input type="password" name="old_password" id="old_password" placeholder="请输入登录密码">
                        </div>
                    </div>
                    <div class="form-line">
                        <label for="password">新密码：</label>
                        <div class="set-input">
                            <input type="password" name="password" id="password" placeholder="请输入新的登录密码">
                        </div>
                    </div>
                    <div class="form-line">
                        <label for="password2">重复密码：</label>
                        <div class="set-input">
                            <input type="password" name="password2" id="password2" placeholder="请输入新的登录密码">
                        </div>
                    </div>
                    <button class="right-btn" type="submit">确认</button>
                </form>            </div>
            <div class="pwd-wrap cfx" id="pwd-panel1" style="display: none">
                <form class="reg-form" action="https://passport.21cnjy.com/account/reset-pwd" method="post">
<input type="hidden" name="_csrf" value="aDAwSURBZTEkRmAODxsceCcDBBEzeVVSRUMHM3wmH18SVmARLSUgAg==">                <div class="form-line">
                    <label for="old_password">手机号码：</label>
                    <div class="set-input">
                        <input type="text" name="mobile" id="" placeholder="请输入手机号码">
                    </div>
                </div>
                <div class="form-line">
                    <label>图形验证码：</label>
                    <div class="set-input" id="mobile-captcha-template">
                        <label class="ie-placeholder" for="scode2">图形验证码</label>
                        <div class="input-b"><input type="text" name="verifyCode" id="verifyCode" class="code-txt" placeholder="图形验证码"></div>
                        <img id="mobile-captcha" src="${ctx }/static/images/captcha" alt="换一个" title="换一个" style="cursor:pointer;">
                    </div>
                </div>
                <div class="form-line">
                    <label for="scode">手机验证码：</label>
                    <div class="set-input">
                        <div class="input-b"><input type="text" name="scode" id="scode" class="code-txt" placeholder="请输入验证码"></div>
                        <a href="https://passport.21cnjy.com/site/send-code?do=9" class="get-code" id="get_code" data-type="mobile" style="width:102px;">获取验证码</a>
                    </div>
                </div>
                <div class="form-line">
                    <label for="password">新密码：</label>
                    <div class="set-input">
                        <input type="password" name="password" id="password3" placeholder="请输入新的登录密码">
                    </div>
                </div>
                <div class="form-line">
                    <label for="password2">重复密码：</label>
                    <div class="set-input">
                        <input type="password" name="password2" id="password4" placeholder="请输入新的登录密码">
                    </div>
                </div>
                <button class="right-btn" type="submit">确认</button>
                </form>            </div>

        </div>
    </div>
</div>
<div class="address">
    <p><span> 地址：深圳市龙岗区横岗街道深峰路3号启航商务大厦5楼5M</span><span> 邮编：518000</span><span>电话：0775-25526569</span></p>
    <p>2007-2016 二一教育股份有限公司粤ICP备11039084号 粤教信息(2013)2号</p>
</div>
<script src="${ctx }/static/js/jquery-1.9.1.min.js"></script>
<script src="${ctx }/static/js/underscore-1.8.3.min.js"></script>
<script src="${ctx }/static/js/backbone-1.3.3.min.js"></script>
<script src="${ctx }/static/js/layer.js"></script>
<script>
ns.layer_defaults = function ($el, option) { 
    var defaults = {
        content: '',
        area: '500px',
        fixed: false,
        offset: "140px",
        title: ($el ? $el.data('title') : false),
        type: 1,
        success: function (layero, index) {
            if ($el) {
                $el.trigger('before-render');
                layero.find('.layui-layer-content').append($el);
                $el.trigger('render');
                $el.on('close', function () {
                    layer.close(index);
                });
            }
        }
    };

    return $.extend({}, defaults, option);
    
};

</script>
<script src="./21教育_files/common-form.min.js.下载"></script><script src="./21教育_files/reset-pwd.min.js.下载"></script><script>
    new PasswordForm($('#pwd-panel')).init();
    $('input:radio[name=way]').change(function () {
        var val = $(this).val();
        if(val == 1 ){
            new PasswordForm($('#pwd-panel')).init();
            $('#pwd-panel1').hide();
            $('#pwd-panel').show();
        }else{
            new PasswordForm($('#pwd-panel1')).init();
            $('#pwd-panel1').show();
            $('#pwd-panel').hide();
        }
    });
</script>



</body></html>
/**
 * 全局站点代码
 *
 */
var _util = OT2.Util; // 辅助函数

OT2.Global = {
    initPage: function () { 
        this.goTop();
        this.searchMenu();
        this.topNavMenu();
        this.topheadMenu();
        this.toggleSearchTypes();
        var self = this;
        $(function () {
            self.strcut(); // 字符长度截取
            if (typeof user_news === 'function') user_news(); // 消息提示
        });
    },

    // 滚动到顶部
    goTop: function ($el) {
        var max_width = 1200;
        if (typeof SIZE !== 'undefined') {
            max_width = SIZE == 'XL' ? 1200 : 1000;
        }
        var goTopBtn = $el;
        var updateRight = function () {
            var w = $(window).width();
            if (w > max_width) {
                var r = (w - max_width) / 2 - 70;
                goTopBtn.css('right', r + 'px');
            }
        }
        if (!goTopBtn) {
            goTopBtn = $('<a class="return" href="javascript:;"><i class="icona-top"></i></a>');
            goTopBtn.appendTo(document.body);
            updateRight();
        }    
        goTopBtn.on('click', function () {       
            goTopBtn.hide();
            if (typeof window.dispatchEvent === 'undefined') $('html, body').scrollTop(0);
            else $('html, body').animate({ scrollTop: 0 }, 'fast');
        });
        var h = $(window).height();
        $(window).on('scroll', function () {
            H =  Math.max.call(null, document.documentElement.scrollTop, document.body.scrollTop);
            goTopBtn[H > h / 2 ? 'show' : 'hide']();
            // updateRight();
        });
        $(window).on('resize', updateRight);
    },

    // banner顶部搜索下拉选择
    searchMenu: function () {
        var menu = $('#J_SearchMenu');
        var mbd = menu.find('.select-items');
        var tit = menu.find('.J_tit');
        menu.hover(
            function () { mbd.show() },
            function () { mbd.hide() }
        );
        menu.on('click', 'a', function () { 
            var $el = $(this);
            $el.find('input').prop('checked', true);
            var v = $.trim($el.find('input').val());
            v = v.indexOf('/') === 0 ? v : '/' + v;
            $el.parents().find('form').attr({'action': v});
            var txt = $el.find('span').text();
            tit.text(txt);
            mbd.hide();
        });
    },

    // 主导航菜单
    topNavMenu: function () {
        var menu = $('.nav-items');
        var mbd = menu.find('.item-list');
        _util.dropList(menu, mbd, 500);
    },

    // 顶部导航工具下拉菜单
    topheadMenu: function () {
        var menu = $('.topbar-dropmap');
        menu.each(function () {
            var mbd = $(this).find('.drop-bd');
            _util.dropList($(this), mbd, 300);
        });
    },

    // 筛选折叠
    toggleSearchTypes: function () {
        var $show_more = $('<span class="show-more">更多<i></i></span>');
        var minHeight = 40; 
        var fn = function (el) {
            var $el = $(el);
            var is_expand = $el.hasClass('expand-mode'); // 默认不展开
            var h = $el.find('.con-items').height();
            if (h <= minHeight) return true; // continue 
            var $btn = $show_more.clone().appendTo(el);
            $btn.on('click', function () {
                is_expand = !is_expand;
                $el[is_expand ? 'addClass' : 'removeClass']('expand-mode');
            });
            var pos = $el.find('.type-active').position();
            if (pos.top > 5 && !is_expand) $btn.trigger('click');
        }
        $('.search-type').find('div.type-con').each(function () {fn(this)});
        $('.tag-type').find('div.tag-con').each(function () {fn(this)});
    },
    // 字符截断
    strcut: function () { 
        $('[data-cut]').each(function () {
            var len = parseInt($(this).data('cut'), 10);
            var txt = $(this).text();
            if (txt.length > len) {
                $(this).text(txt.substr(0, len) + '...');
                $(this).attr('title', txt);
            }
        });
    },

    // 弹窗登录, 通过样式绑定
    initLogin: function (returnurl) {

        if(typeof USER.uid !== 'undefined' && USER.uid != 0){
            if (returnurl) {
                window.location = returnurl;
                return false;
            }
            return true;
        }

        if (typeof this.LoginModal !== 'undefined') {
            this.LoginModal.formObj.clearError();
            this.LoginModal.show(returnurl);
            return false;
        }    
        
        this.LoginModal = {
            init: function () { 
                var self = this;
                var subscribe = null;
                this.login_url = "http://passport.zujuan.com";
                this.$el = $('#Login_Pal');
                this.$form = this.$el.find('.reg-form').first();
                OT2.UserForm.initPlaceholder();
                // OT2.UserForm.Login().init(); // 登录表单
                this.formObj = new OT2.UserForm.Login;
                this.formObj.$form = this.$el.find('#J_LoginForm');
                this.formObj.init();
                this.$form.find('.checkbox').each(function() {
                    new OT2.Element.checkbox(this).bindEvent(); // 模拟复选框
                });

                this.$form.find('.J_CloseForm').on('click', function () {
                    self.$el.hide();
                    clearTimeout(self.subscribe);
                });
                this.$form.find('.J_QrCode').on('click', function(){
                    clearTimeout(self.subscribe);
                    OT2.Global.initLogin();
                });
                return this;
            },
            refreshCheck: function(ticket) {
                var self = this;
                self.subscribe = setTimeout(function() { 
                    self.checkScan(ticket);
                }, 1500);
            },
            checkScan: function(ticket) {
                var self = this;
                $.getJSON(self.login_url+"/connect/issubscribe?ticket="+ticket+"&r="+Math.random()).
                    done(function(data){
                        if(data.code==1){
                            $.get(self.login_url+'/connect/wxlogin', {ticket:ticket, jump_url:OT2.HostUrl, loginajax: 'yes'})
                                    .done(function(data){
                                        if(data.code == 300){
                                            OT2.Util.alert(data.message);
                                        } else if(data.code == 400){
//                                            console.log(data);
//                                            console.log(self.login_url+data.url+'?ticket='+ticket+'&jump_url='+OT2.HostUrl+'&headimgurl='+data.headimgurl);return false;
                                            window.location.href = self.login_url+data.url+'?ticket='+ticket+'&jump_url='+OT2.HostUrl+'&headimgurl='+data.headimgurl+'&bindtype=1';
                                        } else if(data.code == 200){
                                            $.get('/site/sync-login?value='+data.value).done(function(){
                                                window.location.reload();
                                            })
                                        }
                                    }).fail(function(){
                                        
                                    })
                            
                        }
                        else {
                            self.refreshCheck(ticket);
                        }
                    }).
                    fail(function() {
                        self.refreshCheck(ticket);
                    });
            },
            show: function (returnurl) {
                var self = this;
                this.$el.show();
                $.get(self.login_url+"/connect/weixin-qrcode?cross=1").done(function(data){
                    $('.wxcode-loading').hide();
                    $('.J_QrCode').attr('src',data.qrcodeurl).show();
                    self.checkScan(data.ticket);
                });
                var _top = document.body.scrollTop || document.documentElement.scrollTop;
                var _h = ($(window).height() - this.$form.height()) / 2;
                this.$form.css('top', _top + _h);
                this.formObj.returnurl = returnurl;
            }
            
        };

        this.LoginModal.init().show(returnurl);
        return false;
        
    }

    
};






/**
 * js初始化工作
 *
 */
OT2.Global.initPage();
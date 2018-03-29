/**
 * 试卷模块
 *
 */
OT2.Paper = (function () {
    
    // 试卷设置项
    var setting = {
        1: '密封线', 2: '大题评分区',
        3: '主标题', 4: '注意事项',
        5: '副标题', 6: '分卷',
        7: '考试时间', 8: '分卷注释',
        9: '考生填写', 10: '分大题',
        11: '总评分', 12: '大题注释'
    };
    // 试卷设置项-默认模板al
    var paperset = {
        'simple': { name: '简易模板', val: "3 10 12".split(/\s+/) },
        'common': { name: '普通模板', val: "3 4 5 7 9 10 11 12".split(/\s+/) },
        'normal': { name: '正式模板', val: "1 2 3 4 5 6 7 8 9 10 11 12".split(/\s+/) }
    };

    var QuestionTypes = {
        "单选题": { "name": "单选题", "order": 1, "part": 1 },
        "多选题": { "name": "多选题", "order": 2, "part": 1 },
        "判断题": { "name": "判断题", "order": 3, "part": 1 }
    };
    
    

    // 试卷类构造函数
    var Klass = function (model, types) {
        OT2.Event.call(this);
        types = (typeof types === 'undefined') ? {} : types; // 大题型
        this.$el = $('#J_PaperLayout');
        this.$body = $('#J_PaperBody'); // 试题列表区域
        this.editableInput = null; // 当前处于编辑状态de编辑框
        // 试卷属性
        this.attributes = {
            template: 'simple', // 试卷模板类型, 默认简易模板
            setting: _.clone(paperset.simple.val), // 试卷模板具体设置项, 默认简易模板
            title: '', // 主标题
            subtitle: '', // 试卷副标题
            xd: '', // 学段编号
            xk: '', // 学科编号
            xdName: '', // 学段名
            xkName: '', // 学科名
            notes: '1、填写答题卡的内容用2B铅笔填写<br>2、提前 xx 分钟收取答题卡', // 注意事项
            paperPart: {
                // 分卷标题
                1: { name: "第Ⅰ卷 客观题", tip: "第Ⅰ卷的注释"},
                2: { name: "第Ⅱ卷 主观题", tip: "第Ⅱ卷的注释"}
            },
            // types: $.extend({}, QuestionTypes), // 试卷所有题型 
            types: types, // 试卷所有题型 
            examtime: '* *', // 考试时间
            score: '* *', // 试卷总分设置
            sheet: '1', // 答题卡样式, 默认普通表格
            // expires: 0
            expires: (new Date().getTime()) // 组卷有效期,0 永久有效
        };
        _.extend(this.attributes, model);
        this.paper_key = ['paper2016', this.attributes.xd, this.attributes.xk].join(':'); // 试卷关键字, 客户端缓存键值
        this.pid = null;
        this.isedit = null;
        this.cacheObj = {}; // 试题篮缓存，试题ID编号->部分属性映射


        this.basketQids = []; // 试题篮所有试题ID编号列表
        // this.init();
    };
    
    Klass.prototype = {
        // 试卷初始化
        init: function (data,is_clean) {
            var self = this;
            if(typeof is_clean !== 'undefined' && is_clean){
                _.each(data,function(q, k){
                    self.cacheObj[q.id] = {
                        id: q.id,
                        order: k+1,
                        type:q.type,
                        xd: q.xd,
                        xk: q.xk
                    };
                    
                });
                //console.log(data);
                OT2.Util.setBasketCacheObj((self.cacheObj));
            }

            this.unserialize(); // 反序列化客户端存储数据
            //console.log(self.cacheObj,is_clean);
            if (typeof data !== 'undefined') {
                self.render(data);
                return self;
            }
            this.fetchQuestionsDetail('/getQuestionsByCategory').done(function (data) { 
                self.render(data);
            });
        },
        render: function (data) { 
            this.renderBody(data); // 渲染:试题列表
            this.bindEvent();
            this.renderPagerHeader(); // 可编辑区内容初始化
            this.renderSideSet(); // 渲染:侧栏设置
            this.renderSideTypes(); // 渲染:侧栏题型统计
            // this.initSideTypeDragSorting(); // 旧的侧栏统计大题型拖动
            this.initNewSideTypeDrag(); // 新的侧栏统计大题型拖动
            this.initNewSideGridDrag(); // 新的侧栏题号拖动排序
            this.intervalPublish('question:width', 150);
            this.manual_events();
        },
         // 渲染试卷侧栏试题题型统计 
        renderSideTypes_old: function () { 
            var htm = OT2.Util.Template().get('paper-types');
            var size = this.getList().length;

            var typeArr = [];
            var _parts = this.getParts();
            _parts.sort(function (a, b) {
                return a.id - b.id;
            });
            for (var i = 0, item; item = _parts[i++];) {
                var arr = item.getSections();
                //console.log(arr);
                arr.sort(function (a, b) {
                    return a.order - b.order;
                });
                
                for (var j = 0, item2; item2 = arr[j++];) {
                    var len = item2.getQuestions().length;
                    // if (len == 0) continue;
                    typeArr.push({ type: item2.type, size: len });
                }
            }
            //console.log(_parts);
            var $el = $(_.template(htm, { self: this, size: size, data: typeArr }));
            this.$sideTypes = $('#J_PaperTypes');                
            this.$sideTypes.empty().append($el);
            
            // 发布渲染试卷总评分区表格
            var htm = OT2.Util.Template().get('paper-score');
            var $htm_score = $(_.template(htm, {self: this}));
            $('#J_PaperScore').empty().append($htm_score);
            
        },
        manual_events: function () { 
            var self = this;
            this.$el.on('click', '.toggle-sd-box', function () { 
                var $ee = $(this).parent('h3').next('div');
                var visible = !$ee.is(':visible');
                $ee[visible ? 'show' : 'hide']();
                this.innerHTML = visible ? '收起' : '展开';
                self.autoHeightSideType();
            });
            
            // 侧栏序号点击
            this.$sideTypes.on('click', '.drag-grid', function (evt) { 
                var qid = $(this).attr('_qid');
                self.publish('question:scrolltoview', qid);
            });
        },
        //侧栏统计 - 新统计
        renderSideTypes: function () { 
            var data = [];
            var score = 0; // 总分
            var num = 0; // 题数
            var dd = 0; // 难度系数
            var dd_xs = {
                '容易': [0, 1.7],
                '普通': [1.7, 2.4],
                '困难': [2.4, Infinity]
            };
            var _parts = this.getParts().sort(function (a, b) { return a.id - b.id });
            _.each(_parts, function (item, i) { 
                var _sections = item.getSections().sort(function (a, b) { return a.order - b.order });
                _.each(_sections, function (item2, j) { 
                    var _questions = item2.getQuestions().sort(function (a, b) { 
                        return a.attributes.order - b.attributes.order;
                    });
                    var short_type = item2.type.substr(0, 8);
                    short_type = short_type.length > 7 ? short_type + '...' : short_type;
                    data.push({
                        type: item2.type,
                        short_type: short_type,
                        _cid: item2._cid,
                        list: _questions
                    });
                    _.each(_questions, function (item3, k) { 
                        num++;
                        score += parseInt(item3.attributes.score);
                        var _difficult_index = Number(item3.model._difficult_index) || Number(item3.model.difficult_index);
                        dd += _difficult_index || 0;
                    });
                });
            });
            if (num) {
                dd = dd / num;
                _.each(dd_xs, function (v, k) { 
                    if (dd > v[0] && dd <= v[1]) {
                        dd = k;
                        return false;
                    }
                });
            }
            var htm = OT2.Util.Template().get('paper-club');
//            console.log(score);
            var $el = $(_.template(htm, { data: data, score: score, num: num, dd: dd }));
            this.$sideTypes = $('#J_PaperTypes');                
            this.$sideTypes.html($el);
            // 发布渲染试卷总评分区表格
            var htm = OT2.Util.Template().get('paper-score');
            var $htm_score = $(_.template(htm, {self: this}));
            $('#J_PaperScore').empty().append($htm_score);


        },
        // 获取当前试卷所有分卷
        getParts: function () {
            var parts = [];
            this.publish('part:sum', parts); // 发布分卷统计事件
            return parts;
        },

        getList: function () { 
            var arr = [];
            this.publish('question:list', this, arr);
            return arr;
        },

        // 题型拖动排序
        initSideTypeDragSorting: function () {
            return false;
            var self = this;
            var $doc = $(document);
            var dragging = false;
            var cloneDiv = null;
            var targetObj = null;
            var x = 0;
            var y = 0;
            var y0 = 0;
            var down = false;
            var _y1 = 0;
            var zIndex = 1000;
            var $xbar = null;

            this.$sideTypes.on('mousedown', '.numbarbg', function (event) {
                $xbar = $(this).parent('.editset-typeitem');
                dragging = true;
                targetObj = $xbar.siblings();
                if (targetObj.length == 0) dragging = false;
                if (!dragging) return false;
                var w = $xbar.width();
                var h = $xbar.height();
                cloneDiv = $xbar.clone();
                cloneDiv.attr('id', 'xbar-clone-div');
                cloneDiv.css({ "position": "absolute", "width": w, height: h, "z-index": zIndex++ });
                x0 = $xbar.position().left;
                y0 = $xbar.position().top;
                y = event.clientY - y0;
                cloneDiv.css({left: x0, top: y0});
                if ($('#xbar-clone-div').length < 1) self.$sideTypes.append(cloneDiv);
                $xbar.addClass('dragging');
                
            });

            $doc.on('mousemove', function (event) {
                if (dragging) {
                    var y1 = event.clientY - y;
                    cloneDiv.css({ left: x0, top: y1 });
                    down = y1 > _y1;
                    _y1 = y1;
                    targetObj.each(function () {
                        var y2 = $(this).position().top;
                        var h = $(this).height();
                        if (y1 > y2 && y1 < y2 + h) {
                            var action = down ? 'insertAfter' : 'insertBefore';
                            $xbar[ action ](this);
                            var stype = $xbar.data('typename');
                            var dtype = $(this).data('typename');
                            var srcSection = self.getSectionByType(stype);
                            var destSection = self.getSectionByType(dtype);
                            srcSection.part = destSection.part;
                            self.attributes.types[stype].part = destSection.part.id;
                            srcSection.$el[action](destSection.$el);
                            srcSection.$el.addClass('sorting-section');
                            setTimeout(function () {
                                srcSection.$el.removeClass('sorting-section');
                            }, 2000);
                            self.resortSections();
                            self.serialize();
                        }
                    });
                }
            });
            $doc.on('mouseup', function () {
                if (dragging) {
                    cloneDiv.remove();
                    $xbar.removeClass('dragging');
                    self.initQuestionListSort();
                    self.serialize();
                }
                dragging = false;
            });
        },
        // 拖动后题型更新序号
        resortSections: function () { 
            var self = this;
            self.$el.find('.paper-section').each(function (index) { 
                var _cid = $(this).attr('_cid');
                self.publish('section:manual:resorting', _cid, index);
            });
        },
        // 侧栏统计 新的大题型 拖动排序
        initNewSideTypeDrag: function () { 
            var self = this;
            $doc = $(document);
            var dragging = false; // 是否正在拖动
            var mousedown = false; // 是否按下
            var $srcObj = null; // 正在拖动的dom节点
            var $cloneDiv = null; // 克隆移动dom节点
            var $targetObj = null; // 目标碰撞 dom节点，同级节点
            var crash_obj = null; // 上次的碰撞dom

            var zIndex = 100;
            var down = false; // 拖动方向 false 向上， true 向下
            var x = 0; // 偏移量
            var y = 0; // 偏移量
            var x0 = 0; // 最初位置
            var y0 = 0; // 最初位置 
            var _y1 = 0; // 上次位置： y
            var w = 0;
            var h = 0;
            var clone_id = 'clone-drag-wire'; // 克隆的dom
            var drag_class = 'drag-wire-dragging'; // 正在移动的dom
            var sorting_class = 'sorting-section'; // 右侧正在移动试卷大题


            // 移动碰撞检测处理
            var move_crash = function (evt) { 
                if (mousedown) {
                    dragging = true;
                    $srcObj.addClass(drag_class);
                    var x1 = evt.clientX - x;
                    var y1 = evt.clientY - y;
                    $cloneDiv.offset({ left: x0, top: y1 });
                    crash_obj = null;
                    $targetObj.each(function () {
                        var $me = $(this);
                        // var _offset = $me.offset();
                        var _offset = this._offset;
                        var y2 = _offset.top;
                        var x2 = _offset.left;
                        var h2 = $me.height();
                        var w2 = $me.width();
                        var none_crash = (x1 > x2+w2 || y1 > y2+h2 || x1+w < x2 || y1+h < y2);
                        if (!none_crash) {
                            crash_obj = this;
                            down = y1 > _y1; // 以两个目标碰撞点作为方向判断
                            _y1 = y1; // 记录每次移动的位置
                            var action = down ? 'insertAfter' : 'insertBefore';
                            $srcObj[action](crash_obj);     
                            return false; // 跳出循环 !!! 很重要
                        }
                    });
                }

            };

            this.$sideTypes.on('mousedown', 'div.drag-wire', function (evt) {
                $('html,body').stop(); // 拖动的时候，停止滚动条滚动
                mousedown = true;
                var $me = $(evt.target);
                if ($me.hasClass('t-del') || $me.hasClass('t-order') || $me.hasClass('drag-grid')) {
                    mousedown = false;
                }
                $srcObj = $(this);
                $targetObj = $srcObj.siblings();
                if ($targetObj.length == 0) {
                    mousedown = false;
                }
                if (!mousedown) {
                    return false;
                }
                $targetObj.each(function () { 
                    this._offset = $(this).offset(); // 取得坐标
                });
                w = $srcObj.width();
                h = $srcObj.height();
                $cloneDiv = $srcObj.clone();
                $cloneDiv.attr('id', clone_id);
                $cloneDiv.css({
                    "position": "absolute",
                    "width": w,
                    "height": h,
                    "z-index": zIndex++
                });
                var _offset = $srcObj.offset();
                x0 = _offset.left;
                y0 = _offset.top;
                y = evt.clientY - y0; // 偏移量
                x = evt.clientX - x0;
                _y1 = y0;
                $cloneDiv.offset({ left: x0, top: y0 });
                if ($('#' + clone_id).length < 1) $srcObj.parent().append($cloneDiv);
                
            });
            $doc.on('mousemove', _.throttle(move_crash, 50));
            $doc.on('mouseup', function (evt) {
                if (mousedown && dragging && crash_obj) {
                    var action = down ? 'insertAfter' : 'insertBefore';
                    var stype = $srcObj.data('typename');
                    var dtype = $(crash_obj).data('typename');
                    var srcSection = self.getSectionByType(stype);
                    var destSection = self.getSectionByType(dtype);
                    srcSection.part = destSection.part;
                    self.attributes.types[stype].part = destSection.part.id;
                    srcSection.$el[action](destSection.$el);
                    srcSection.$el.addClass(sorting_class);
                    srcSection.scrolltoView();
                    self.resortSections();
                    self.initQuestionListSort();
                    self.renderSideTypes();
                    self.serialize();
                }
                if (mousedown) {
                    if ($srcObj) $srcObj.removeClass(drag_class);
                    if ($cloneDiv) $cloneDiv.remove();
                    $cloneDiv = null;
                    dragging = false;
                    mousedown = false;
                    $srcObj = null;
                    $targetObj = null;
                    crash_obj = null;
                }
            });
        },

        // 侧栏统计， 题号拖动排序
        initNewSideGridDrag: function () { 
            var self = this;
            var $doc = $(document);
            var dragging = false;
            var mousedown = false;
            var $cloneDiv = null;
            var $targetObj = null;
            var crashObj = null; // 当前碰撞的对象 dom
            var $srcObj = null;
            var x = 0;
            var y = 0;
            var x0 = 0;
            var y0 = 0;
            var left = false;
            var _x1 = 0;
            var zIndex = 500;
            var drag_class = 'grid-dragging';
            var w = 0;
            var h = 0;

            var move_crash = function (evt) {
                if (mousedown) {
                    dragging = true;
                    $srcObj.addClass(drag_class);
                    var x1 = evt.clientX - x;
                    var y1 = evt.clientY - y;
                    $cloneDiv.offset({ left: x1, top: y1 });
                    crashObj = null;
                    $targetObj.each(function () {
                        var $me = $(this);
                        // var _offset = $me.offset();
                        var _offset = this._offset;
                        var x2 = _offset.left;
                        var y2 = _offset.top;
                        var w2 = $me.width();
                        var h2 = $me.height();
                        // 碰撞判断
                        var none_crash = (x1 > x2+w2 || y1 > y2+h2 || x1+w < x2 || y1+h < y2);
                        if (!none_crash) {
                            left = x1 < _x1; // 以两个目标碰撞点作为方向判断
                            _x1 = x1; // 记录每次移动的位置
                            crashObj = this;
                            $srcObj[left ? 'insertBefore' : 'insertAfter'](crashObj);
                            return false; // 跳出循环, 很重要 !!!
                        }
                    });
                }
            };

            this.$sideTypes.on('mousedown', '.drag-grid', function (evt) {
                $('html,body').stop(); // 拖动的时候，停止滚动条滚动
                evt.stopPropagation();
                mousedown = true;
                $srcObj = $(this);
                $targetObj = $srcObj.siblings();
                if ($targetObj.length == 0) {
                    mousedown = false;
                }
                if (!mousedown) {
                    return false;
                }
                $targetObj.each(function () { 
                    this._offset = $(this).offset(); // 取得坐标
                });
                w = $srcObj.width();
                h = $srcObj.height();
                $cloneDiv = $srcObj.clone();
                $cloneDiv.attr('id', 'clone-drag-grid');
                $cloneDiv.css({
                    "position": "absolute",
                    "width": w,
                    "height": h,
                    "z-index": zIndex++
                });
                var _offset = $srcObj.offset();
                x0 = _offset.left;
                y0 = _offset.top;
                x = evt.clientX - x0; // 偏移量
                y = evt.clientY - y0; // 偏移量
                _x1 = x0; // 上次的位置
                $cloneDiv.offset({
                    left: x0,
                    top: y0
                });
                if ($('#clone-drag-grid').length < 1) $srcObj.parent().append($cloneDiv);

            });

            $doc.on('mousemove', _.throttle(move_crash, 50));
            $doc.on('mouseup', function (evt) {
                if (mousedown && dragging) {
                    var _items = $srcObj.parent().find('.drag-grid');
                    _items.each(function (index) { 
                        if (this.id == 'clone-drag-grid') return true;
                        var _qid = $(this).attr('_qid');
                        self.publish('question:setorder', ('question-'+_qid), index);
                    });
                    self.publish('paper:questionlist:sort');
                    self.renderSideTypes();
                    self.publish('question:scrolltoview', $srcObj.attr('_qid'));
                    self.serialize();
                }
                if (mousedown) {
                    if ($srcObj) $srcObj.removeClass(drag_class);
                    if ($targetObj) $targetObj.removeClass('grid-crash');
                    if ($cloneDiv) $cloneDiv.remove();
                    dragging = false;
                    mousedown = false;
                    $cloneDiv = null;
                    $srcObj = null;
                    $targetObj = null;
                    crashObj = null;
                }

            });
        },
        resortSideGrids: function () { 

        },
        // 获取题型实例对象 -- OT2.Paper.Section
        getSectionByType: function (type) { 
            var section = null;
            var parts = this.getParts();
            _.each(parts, function (part) {
                var arr = part.getSections();
                _.each(arr, function (_section) { 
                    if (type == _section.type) {
                        section = _section;
                        return false;
                    } 
                });
            });
            return section;
        },
        getSectionByCid: function (cid) { 
            var section = null;
            _.each(this.getParts, function (part) { 
                _.each(part.getSections, function (s) { 
                    if (cid === s._cid) {
                        section = s;
                        return false;
                    }
                });
            });
            return section;
        },
        // 获取分卷实例对象 -- OT2.Paper.Part
        getPartById: function (id) {
            var parts = this.getParts();
            return _.find(parts, function (_part) { 
                return _part.id == id;
            });
        },
        // 获取所有的题型实例对象
        getAllSection: function () {
            var arr = [];
            var parts = this.getParts();
            _.each(parts, function (part) { 
                arr = arr.concat(part.getSections());
            });
            return arr;
        },
        // 渲染试卷试题列表
        renderBody: function (data) { 
            var self = this;

            // 1 - 统计题型
            var qList = {};
            _.each(data, function (model) {
                if (model && model.id  && _.contains(self.basketQids, model.id)) {
                    var attr = self.cacheObj[model.id] || {}; 
                    var type = attr.type || model.type;
                    qList[model.id] = {model: model, attr: attr, type: type};
                }
            });
            var _dd = _.sortBy(self.cacheObj, 'order'); // 排序 lgh 20180105
            _.each(_dd, function (model) {
                if(model.new_model && model.xd == self.attributes.xd && model.xk == self.attributes.xk){
                    var attr = model || {}; 
                    var type = attr.type || model.new_model.type;
                    qList[model.id] = {model: model.new_model, attr: attr, type: type};
                }
            });
            // 按序号进行排序 lgh 20180105
            qList = _.sortBy(qList, function(q) {
                return q.attr.order-0;
            });

            var types = _.uniq(_.map(qList, function (item) {
                return item.type;
            }));
            var typeObj = {};
            var ii = 0;
            _.each(types, function (v, k) {
                var _part = 2;
                if (QuestionTypes[v]) {
                    // typeObj[v] = $.extend({}, QuestionTypes[v]);
                    typeObj[v] = $.extend({}, QuestionTypes[v], { order: ii++ });

                }
                else {
                    // 主观题
                    // typeObj[v] = {name: v, order: types.length, part: _part}
                    typeObj[v] = {name: v, order: ii++, part: _part}

                }                 
            });
            //console.log(types,typeObj,self.attributes.types,QuestionTypes);
            self.attributes.types = $.extend({}, typeObj, self.attributes.types);
           
            self.serialize();
            // 2 - 渲染试卷页面            
            var group = {};
            self.$body.empty();
            var index0 = 0;
            _.map(self.attributes.paperPart, function (part, id) {
                var _data = {
                    id: id,
                    name: part.name,
                    tip: part.tip,
                    order: index0++
                };
                new OT2.Paper.Part(self, _data).init(); // 分卷实例化                
            });
            var parts = self.getParts();
            // parts.sort(function (a, b) {
            //     return a.order - b.order;
            // });
            parts = _.sortBy(parts, 'order');
            var orderSn = 0;
            var _types = _.sortBy(self.attributes.types, 'order'); 
            _.each(parts, function (part) {
                _.each(_types, function (typeitem, name) {
                    var type = typeitem.name;
                    if (part.id == typeitem.part) {                      
                        var _data = {
                            order: orderSn, // 题型序号
                            type: type // 题型名称
                        };
                        self.attributes.types[type].order = orderSn;
                        var section = new OT2.Paper.Section(self, part, _data);
                        section.init();
                        _.chain(qList).sortBy(function (q) { 
                            return q.attr.sort;
                        }).each(function (q, id) {
                            if (q.type == type) {
                                var questionObj = new OT2.Paper.Question(self, section, q.model, q.attr);
                                section.$body.append(questionObj.$el);
                            }
                        });
                        part.$el.append(section.$el);
                        orderSn++; 
                    }
                });
                self.$body.append(part.$el);                
            });

            self.initQuestionListSort();
            self.serialize();

        },
        // 初始化试题排序, 基于整张试卷试题排序
        initQuestionListSort: function () { 
            var self = this;
            self.subscribe('paper:questionlist:sort', function () {
                var arr = self.getAllSection();
                arr = _.sortBy(arr, 'order');
                var baseNum = 0;
                _.each(arr, function (sec) {
                    sec.initQuestionSort(baseNum);
                    baseNum += sec.getQuestions().length;
                });
            });
            
            self.publish('paper:questionlist:sort'); 

        },
        // 试卷头部区域可编辑区编辑监听
        renderPagerHeader: function () { 
            var self = this;
            this.$el.find('.contenteditable').each(function () {
                var attr = $(this).data('edit');
                if (_.contains(['title', 'subtitle', 'examtime', 'score', 'notes'], attr)) {
                    $(this).html(self.attributes[attr]);
                }
            });
        },
        // 异步获取试卷试题详细信息
        fetchQuestionsDetail: function (url) { 
            var self = this;
            var deffered = $.Deferred();
            $.post(url, {list: self.basketQids }, 'json').done(function (res) {
                deffered.resolve(res); // 拉取试题的原始属性
            });
            return deffered.promise(); // Promise 对象
        },
        // 客户端序列换缓存试卷所有数据
        serialize: function () {
            if(this.pid){
                //删除已经保存的pid
                this.pid = null;
            }
            OT2.LocalData.set(this.paper_key, JSON3.stringify(this.attributes));
            OT2.Util.setBasketCacheObj((this.cacheObj));
        },

        // 客户端反序列读取试卷缓存数据
        unserialize: function () {
            var self = this;
            var cache = null;
            try {
                cache = JSON3.parse(OT2.LocalData.get(this.paper_key));
            }
            catch (e) {

            }
            var passtime = new Date().getTime();
            if (cache) {
                passtime = passtime - cache.expires; 
                if (cache.expires == 0) {
                    this.attributes = cache || this.attributes; // 客户端缓存数据
                } 
                else if (passtime < 7 * 24 * 3600 * 1000) {
                    // 七天有效期
                    cache.expires = new Date().getTime();
                    this.attributes = cache || this.attributes; // 客户端缓存数据
                }

            }
            var _cache = {};
            try {
                _cache = OT2.Util.getBasketCacheObj();
            }
            catch (e) {

            }
            this.cacheObj = _cache || {};
            this.getPaperBasketQids();

        },
        stringify: function(){
            var self = this;
            var jsonData = {
                content : [],
                title   : self.attributes.title,
                subtitle: self.attributes.subtitle,
                xd      : self.attributes.xd,
                chid    : self.attributes.xk,
                notes   : self.attributes.notes,
                examtime: '考试时间：112&nbsp;分钟&nbsp;&nbsp;&nbsp;&nbsp;满分：33&nbsp;分',
                paperPart: self.attributes.paperPart,
                setting : self.attributes.setting
            };
            var qList = {};
            try {
                qList = OT2.Util.getBasketCacheObj() || {};
            }
            catch (e) {

            }
            var qList = _.sortBy(qList, 'order');
            var _types = _.sortBy(self.attributes.types, 'order');            
            _.each(_types, function (typeitem, name) {
                var piece = {
                    'head_title':typeitem.name,
                    'questions':[],
                    'scores':{}
                };
                _.each(qList, function (q, id) {
                    if (q.type == typeitem.name && q.xd == self.attributes.xd && q.xk ==self.attributes.xk) {
                        piece.questions.push(q.id);
                        var score = {
                            'score': "4"
                        };
                        if(typeof q.subScore !== 'undefined'){
                            score.subScore = q.subScore;
                        }
                        if(typeof q.score !== 'undefined'){
                            score.score = q.score;
                        }
                        //var pieceS = {"q.id":score};
                        piece.scores[q.id] = score;
                    }
                });
                jsonData.content.push(piece);
            });
            return jsonData;
        },

        // 获取试卷试题id列表
        getPaperBasketQids: function () {    
            var self = this;
            self.basketQids = [];
            _.each(self.cacheObj, function (v, k) {
                // if (v.xd == self.attributes.xd && v.xk == self.attributes.xk) {
                //     self.basketQids.push(v.id);
                // }
                self.basketQids.push(v.id); // 测试用，不区分学段学科 -- just test !!!!!
            });
            return self.basketQids;
        },
        
        getSetting: function () { return setting }, // 获取设置项列表
        getPaperSet: function () { return paperset }, // 获取所有设置项默认模板

        // 渲染侧栏试卷设置模块        
        renderSideSet: function () {
            var self = this;
            // 单选框模板选择
            var htm = OT2.Util.Template().get('paper-template');
            var data = { setting: this.getSetting(), paperset: this.getPaperSet(), attr: this.attributes };
            
            this.$set = $(_.template(htm, data));
            $('#J_PaperSetRadio').empty().append(this.$set);

            // 复选框设置项 
            htm = OT2.Util.Template().get('paper-setoptions');
            this.$setopt = $(_.template(htm, data));
            $('#J_PaperSetCheck').empty().append(this.$setopt);

            // 模拟表单元素            
            var radioGoup = [];
            var checkboxGroup = [];

            // 单选框
            this.$set.find('.radiobox').each(function() {
                new OT2.Element.radio(this, radioGoup).bindEvent(function () {
                    self.attributes.template = this.$input.val();
                    self.publish('paper:template', this.$input.val()); 
                });
            });
            
            // 复选框
            this.$setopt.find('.checkbox').each(function() {
                var elem_obj = new OT2.Element.checkbox(this, checkboxGroup);
                elem_obj.bindEvent(function () {
                    self.publish('paper:setting', this.checked, this.$input.val());
                    if (this.$input.val() == 1) {
                        // 密封线设置
                        self.publish('question:width');
                    }
                });
                self.publish('paper:setting', elem_obj.checked, elem_obj.$input.val());
                // 监听模板切换事件
                self.subscribe('paper:template', function (template_id) {
                        var _options = self.getPaperSet()[template_id]['val'];
                        var id = elem_obj.$input.val();
                        var checked = false;
                        if (_.contains(_options, id)) checked = true;
                        elem_obj.switchChecked(checked, function () {
                            self.publish('paper:setting', this.checked, this.$input.val());
                        });                    
                });
            });


            
        },

        // 事件监听
        bindEvent: function () {
            var self = this;
            this.bindContentEditArea();
            this.bindPaperSetting();

            // 监听删除单个试题                
            this.subscribe('question:destroy', function (q) {
                self.destroyQuestionById(q.model.id, q);
                self.publish('paper:questionlist:sort');
                self.renderSideTypes();
            });

            // 监听批量删除试题
            this.subscribe('question:destroyBatch', function (q) {
                self.destroyQuestionById(q.model.id, q);
                self.renderSideTypes();
            });

            // 监听试题随机更换            
            this.subscribe('question:replace', function (oldq, newq) {
                self.replaceQuestion(oldq, newq);
            });

            // 监听移动试题，渲染侧栏            
            this.subscribe('question:transfer:renderSideType', function (id, type) {
                self.cacheObj[ id ].type = type;
                self.serialize();
                self.renderSideTypes();
            });

            // 可编辑区回车保存            
            $(document).on('keyup', function (e) {
                if (e.keyCode == 13 && self.editableInput && self.editableInput.is('input')) {
                    self.editableInput.blur();
                }
            });

            $(window).on('scroll', _.throttle(function () {
                self.fixedSide();
            }, 100));
            $(window).on('resize', _.debounce(function () {
                self.autoHeightSideType();
            }, 100));
        },

        // 更换试题，试题随机替换
        replaceQuestion: function (oldq, newq) {
            var self = this;
            self.cacheObj[newq.attributes.id] = $.extend(true, {}, newq.attributes);
            delete (self.cacheObj[oldq.attributes.id]);
            oldq.paper = null;
            oldq.section = null;
            oldq = null;
            self.publish('question:width');
            self.serialize();
        },
        // 批量删除试题
        deleteQuestions: function (type) { 
            var self = this;
            var d = dialog({
                title: '友情提示',
                content: '你确定要删除"' + type + '"吗?',
                padding: 20,
                okValue: '确定',
                cancelValue: '取消',
                ok: function () {
                    self.doDeleteQuestions(type);
                },
                cancel: function () {
                    this.close();
                }
            });
            d.showModal();
        },  
        doDeleteQuestions: function (type) {
            this.publish('question:deleteBatch', type);
            delete this.attributes.types[type];
            this.publish('paper:questionlist:sort');
            this.serialize();
            this.renderSideTypes(); // 重新渲染侧栏题型统计
        },
        renderSideOrder: function (cid) { 
            var self = this;
            var data = [];
            var _parts = this.getParts().sort(function (a, b) { return a.id - b.id });
            _.each(_parts, function (item, i) { 
                var _sections = item.getSections().sort(function (a, b) { return a.order - b.order });
                _.each(_sections, function (item2, j) { 
                    var short_type = item2.type.substr(0, 8);
                    short_type = short_type.length > 7 ? short_type + '...' : short_type;
                    data.push({
                        _cid: item2._cid,
                        type: item2.type,
                        short_type: short_type
                    });
                });
            });            
            var $el = $(_.template(OT2.Util.Template().get('club-sort'), { data: data, _cid: cid }));
            var g1 = [];
            var g2 = [];
            $el.find('.custom-checkbox').each(function () { 
                new OT2.Element.checkbox(this, g1).bindEvent();
            });
            $el.find('.custom-radio').each(function () {
                new OT2.Element.radio(this, g2).bindEvent();
            });
            return $el;
        },
        // 侧栏统计，题型排序
        askOrder: function (_cid) { 
            var self = this;
            var $el = this.renderSideOrder(_cid);
            var d = dialog({
                title: '试题排序',
                content: $el,
                okValue: '确定',
                cancelValue: '取消',
                width: 600,
                ok: function () { 
                    var form_data = $el.find('form').serializeArray();
                    var types = [];
                    var orderby = 1;
                    _.each(form_data, function (v, i) {
                        if (v.name === 'type[]')  types.push(v.value);
                        if (v.name === 'orderby') orderby = v.value;
                    });
                    self.multi_resort_questions(types, orderby);
                },
                cancel: function () {
                    this.remove();
                }
            });
            d.showModal();
        },
        /**
         * 侧栏批量排序，按难度排序
         * types： 大题型 _cid
         * orderby: 按难度排序 1->升序排序, -1->降序排序
         *
         */
        multi_resort_questions: function (types, orderby) { 

            var self = this;
            var arr = _.sortBy(self.getAllSection(), 'order');
            var baseNum = 0;
            var comparator = function (a, b) { 
                // 试题排序函数
                var x = Number(a.model._difficult_index - b.model._difficult_index) || 0;
                x = x * orderby; 
                if (x == 0) {
                    x = Number(b.model.question_id - a.model.question_id) || 0;
                }
                return x;
            };
            _.each(arr, function (sec) {
                if (_.contains(types, sec._cid)) {
                    sec.initQuestionSort(baseNum, comparator);
                }
                baseNum += sec.getQuestions().length;
            });
            self.serialize();
            self.renderSideTypes(); // 更新侧栏统计
            
        },
        // 试卷设置项变更监听
        bindPaperSetting: function () {
            var that = this;
            this.subscribe('paper:setting', function (checked, val) {
                that.$el.find('[data-paperset]').each(function () {
                    if (val == $(this).data('paperset')) {
                            $(this)[checked ? 'show' : 'hide']();
                        }
                });

                that.attributes.setting = _.uniq(that.attributes.setting);                
                if (!checked) {
                    that.attributes.setting = _.reject(that.attributes.setting, function(i) { return i == val });
                }
                else {
                    that.attributes.setting.push(val);
                }
//                that.serialize();
            });
        },

        // 可编辑区            
        bindContentEditArea: function () {
            this.listenContenteditable();
            var that = this;
            this.$el.on('click', '.contenteditable', function () {
                var self = this;
                
                var edit_field = $(this).data('edit')
                if (typeof this._input === 'undefined') {
                    if ( edit_field == 'notes') this._input = $('<textarea>');
                    else this._input = $('<input>');
                    this._input.insertAfter(this);
                    var _val = this.innerHTML; // 旧值
                    this._input.on('blur', function () {
                        _val = $(this).data('oldvalue') || _val; 
                        $(self).show();
                        $(this).hide();
                        var val = $.trim(this.value);
                        if (!val) return false;
                        if (edit_field == 'notes') {
                            this.value = val.replace(/\n/g, "<BR>");
                        }
                        $(self).html(this.value);
                        $(this).data('oldvalue', this.value);
                        that.publish('paper:contenteditable', edit_field, this.value, self, _val);
                        that.editableInput = null;
                    });
                    
                }
                that.editableInput = this._input;
                this._input.show();
                this._input.focus();
                var val = this.innerHTML;
                if (edit_field == 'notes') {
                    val = val.replace(/<br>|<BR>/g, "\n");
                }
                this._input.val(val);
                $(this).hide();
            });
            
        },
        // 可编辑区监听
        listenContenteditable: function () {
            var self = this;
            this.subscribe('paper:contenteditable', function (attr, val, el, _val) {
                if (_.contains(['title', 'subtitle', 'examtime', 'score', 'notes'], attr)) {
                    self.attributes[attr] = val;
                }
                else if (attr == 'paperPart.name' || attr == 'paperPart.tip') {
                    var part = $(el).data('part');
                    var key = 'tip';
                    if (attr == 'paperPart.name') key = 'name';
                    self.attributes.paperPart[part][key] = val;
                }
                else if (attr == 'type') {
                    self.publish('question:changeType', val, _val);
                    self.attributes.types[val] = $.extend({}, self.attributes.types[_val]);
                    self.attributes.types[val].name = val;
                    delete self.attributes.types[_val];
                    self.renderSideTypes();
                }
                self.serialize();
            });
        },
        // 自定义添加新题型
        addNewType: function () {
            var self = this;
            var $form = $(_.template(OT2.Util.Template().get('add-type'), {}));
            var $input = $form.find('input');
            var $tip = $form.find('.error-msg');
            var d = dialog({
                title: '添加自定义题型',
                content: $form.get(0),
                okValue: '确定',
                ok: function () { 
                    var val = $.trim($input.val()); // 自定义题型名称
                    var msg = '';
                    if (val.length <= 0) {
                        msg = '题型名称不能为空！'
                    }
                    else if (val.length > 10 || val.length < 3) {
                        msg = '题型名称3-10个字符！';
                        
                    }
                    $tip[ msg ? 'show' : 'hide' ]();
                    $tip.html(msg);
                    if (msg) return false;
                    else self.insertNewType(val);
                    d.close();

                },
                fixed: true,
                cancelValue: '取消',
                cancel: function() {}
            });
            d.showModal();
        },
        // 插入新题型
        insertNewType: function(name) {
            var self = this;
                if (self.attributes.types[name]) return false;
                var order = _.size(self.attributes.types);
                // 默认添加到主观题末尾
                self.attributes.types[name] = { name: name, order: order, part: 2 };
                self.serialize();
                var part = self.getPartById(2);
                var data = {
                    type: name,
                    order: order
                }
                var _section = new OT2.Paper.Section(self, part, data);
                _section.init();
                part.$el.append(_section.$el);
                self.renderSideTypes();
                _section.scrolltoView(); // 滚动到可视区
        },
        // 根据编号 删除试题
        destroyQuestionById: function (_id, question) {
            var self = this;
            delete (self.cacheObj[_id]);
            if (typeof question !== 'undefined') {
                question.paper = null;
                question.section = null;
                question = null;
            }
            self.serialize();
        },
        // 保存试卷
        save: function () {
            var self = this;
                var id = self.pid;
                var htm_ok = OT2.Util.Template().get('dialog-save');            
            var $el = $(_.template(htm_ok, { 'pid': self.pid, 'title' : self.attributes.title }));
                var d = dialog({
                   title: '确认试卷名称',
                    content: $el.get(0),
                    fixed: true
                });
                d.showModal();
                $el.find('#b-download').click(function(){
                if($el.find('.save_title input').val() != self.attributes.title){
                    self.pid = null;
                    self.attributes.title = $el.find('.save_title input').val();
                    $("#paper-title").text(self.attributes.title);
                }
                d.close();
                    self.download();
                });
            $el.find('#b-savetitle').click(function(){
                if($el.find('.save_title input').val() != self.attributes.title){
                    self.pid = null;
                    
                    self.attributes.title = $el.find('.save_title input').val();
                    $("#paper-title").text(self.attributes.title);
                }
                self.saveProcess(function(){ d.close(); });
                    d.close();
                });
            $el.find('a').click(function(){
                window.location.replace(this.href);
                return false;
            });
        },
        saveProcess: function(callback){
            var  self = this;
            if(self.pid && !self.isedit){
                //OT2.Util.alert('试卷不能重复保存');
                callback();
                return false;
            }
            self.pid = null;
            var paperData = this.stringify();
            paperData.pid = self.pid; // 试卷id，默认为空
            $.post('/paper/create',paperData,function(response){
                // console.log(response);
                if (response.errCode == 0) {
                    self.isedit = null;
                    self.pid = response.data.pid;
                    //self._locked = self.pid; // 锁定保存，知道有修改才解除
                    OT2.LocalData.remove(self.paper_key);
                    OT2.LocalData.remove('basket_cachePid');
                    var cache = {};
                    try {
                        cache = OT2.Util.getBasketCacheObj();
                        _.each(cache, function (item, k) { 
                            if (item.xd == self.attributes.xd && item.xk == self.attributes.xk) {
                                delete cache[k];
                            }
                        });
                    }
                    catch (e) {

                    }
                    OT2.Util.alert('试题保存成功');
                    OT2.Util.setBasketCacheObj((cache));
                    callback();
                }else {
                    OT2.Util.alert('试题保存失败,请检查试卷排版');
                }
            },'json');
        },
        adminSave: function(pid,type){
            var  self = this;
            self.pid = pid;
            var paperData = this.stringify();
            // console.log(paperData);
            $.post('/paper/admin-create?pid='+self.pid+'&type='+type,paperData,function(response){
                // console.log(response);
                if (response.errCode == 0) {
                    self.pid = response.data.pid;
                    OT2.LocalData.remove(self.paper_key);
                    OT2.LocalData.remove('basket_cacheObj_v2');
                    OT2.LocalData.remove('basket_cachePid');
                    OT2.Util.alert('试卷保存成功');
                    window.location.replace('/paper/view/'+self.pid);
                }else {
                    OT2.Util.alert('试题保存失败,请检查试卷排版');
                }
            },'json');
        },
        // 下载试卷
        download: function (pid,flag) {
            var self = this;
            if(typeof pid !== 'undefined'){
                self.pid = pid;
                //self._locked = true;
                if(typeof flag !== 'undefined'){
                   self.flag = flag; 
                }else{
                   self.flag = 0;   
            }
            }else{
                self.flag = 1;
            }
            if(typeof USER.uid === 'undefined'){
                OT2.Global.initLogin();
                return false;
            } 
            self.saveProcess(function(){
                var info ;
                $.ajax({
                    url:'/paper/download-params',
                    data:{'pid':self.pid, 'flag':self.flag},
                    dataType:'json',
                    async: false,
                    success:function(data){
                        info = data.data;
                    }
                });
                // console.log(info);
                var data = {
                    //points: info.paperinfo.point, // 试卷下载需要的点数
                    chooseType: 'student', // 默认学生试卷
                    chooseSize: 'A4', // 默认纸张A4
                    chooseContent : ['an', 'kw', 'ex']
                };
                var okValue = '下载';
                var DDD = function () { 
                   var url = '/paper/download?pid='+self.pid+'&size='+data.chooseSize+'&type='+data.chooseType+'&flag='+self.flag+'&content_type='+data.chooseContent;
                   var Dbtn = '<a class="recharge-btn" style="display:block; margin: 5px auto; color:#fff !important;" href="'+url+'">下载试卷</a>'
                   var p=dialog({
                        title: '下载word试卷',
                        content: '<div id="download_paper"><P style="padding:10px;">正在下载，请耐心等待,</P>',
                        width: 450,
                        onclose: function() {
                            if (typeof interval !== 'undefined') {
                                clearInterval(interval);
                                interval = null;
                            }
                        }
                    });
                    setTimeout(function(){
                        $('#download_paper').find('p').html('如果长时间无响应，请点击下面按钮进行下载：');
                        $('#download_paper').append(Dbtn);
                    },4000)
                    p.showModal();
                    window.location = url;
                    //console.log('/paper/download?pid='+self.pid+'&size='+data.chooseSize+'&type='+data.chooseType);
                    //d.close();
                };
                if(!info.isCan){
                    okValue = '充值学币';
                    DDDD = function () {
                        //window.location = '/payment/vip';
                        window.location.replace('http://www.zujuan.com');
                    };
                }
                var chooseSize =[];
                var chooseType =[];
                var htm = info.view;
                var $el = $(_.template(htm,{}));
                $el.find('.download-size .radiobox').each(function () {
                    new OT2.Element.radio(this, chooseSize).bindEvent(function () {
                        data.chooseSize = this.$input.val();
                    });
                });
                $el.find('.download-type .radiobox').each(function () {
                    new OT2.Element.radio(this, chooseType).bindEvent(function () {
                        data.chooseType = this.$input.val();
                        //console.log(data);
                    });
                });
                $el.find('.download-type .checkbox').click(function(){
                    var val = $(this).find('input').val();
                    if($(this).hasClass('checked')){
                        data.chooseContent.splice($.inArray(val, data.chooseContent),1);
                        $(this).removeClass('checked');
                        $(this).find('input').removeAttr('checked');
                    } else {
                        data.chooseContent.push( val );
                        $(this).addClass('checked');
                        $(this).find('input').attr('checked', '');
                    }
                });
                // $el.find('a').click(function(){
                //     window.location.replace(this.href);
                //     return false;
                // });
                $el.find('button.recharge-btn').on('click', function () {
                    d.close();
                    //info.isCan ? DDD() : DDDD();
                    DDD();
                });
                
                var checkOrder = function(){
                    $.get('/payment/check-order', {flag : self.flag, pid : self.pid, username : USER.username}, function($data){
                        if($data == 'success'){
                            $el.find('.down_btn .recharge-btn').first().trigger('click');
                            if (typeof interval !== 'undefined')  clearInterval(interval);
                        }
                    });
                }
                if(!info.isCan){
                    var interval = setInterval(checkOrder,1000);
                }
                
                var d = dialog({
                    title: '下载word试卷',
                    content: $el,
                    width: 450,
                    // okValue: okValue,
                    // cancelValue: '取消',
                    // ok: info.isCan?DDD:DDDD,
                    // cancel: function() { }
                    onclose: function() {
                        if (typeof interval !== 'undefined') {
                            clearInterval(interval);
                             interval = null;
                        }
                         
                    }
                });
                d.showModal();
            });
            
        },
        showPie: function(pid, flag){
            var self = this;
            if (typeof pid !== 'undefined') {
                self.pid = pid;
                if(typeof flag !== 'undefined'){
                   self.flag = flag; 
                }else{
                   self.flag = 0;   
                }
            }else{
                self.flag = 1;
            }
            if(self.pid){
                // self.pid = pid;
                OT2.PaperAnalysis.show('/paper/pie?pid='+self.pid+'&flag='+self.flag);
            }else if(!self.pid){
                var qids = {};
                var qList = OT2.Util.getBasketCacheObj();
                var paperData = this.stringify();
                _.each(qList, function (q, id) {
                    qids[q.id] = q.id;
                });
                $.post('/paper/pie', {qids : qids, content : paperData.content, flag :self.flag}, function (res) {
                    if (res.errCode == 0) {
                       OT2.PaperAnalysis.show1(res.data);
                    } 
                });
            }

        },
        shareDialog: function(pid){
            var self = this;
            if(typeof pid !== 'undefined'){
                self.pid = pid;
            }else if(!self.pid){
                OT2.Util.alert('请先保存试卷');
            }
            var info = {
                title: self.attributes.title
            };
            var message = '';
            $.ajax({
                url:'/paper/share-info',
                data:{'pid':self.pid},
                dataType:'json',
                async: false,
                success:function(response){
                    info = response.data;
                    if(response.errCode != 0){
                        message = response.message;
                    }
                }
            });
            if(message!==''){
                OT2.Util.alert(message);
                return;
            }
            info.pid = self.pid;
            // console.log(info);
            var htm = OT2.Util.Template().get('dialog-share');
            var $el = $(_.template(htm,  info ));
            var d = dialog({
                title: '试卷共享编辑',
                content: $el.get(0),
                okValue: '确定',
                cancelValue: '取消',
                ok: function () {
                    var inputs = $el.find('#share-form').serializeArray();
                    $.post('/paper/share',inputs,function (response) {
                        if (response.errCode == 0) {
                            OT2.Util.alert('试卷分享成功');
                            //callback();
                        }else {
                            OT2.Util.alert(response.message);
                        }
                    },'json');
                    d.close();
                },
                cancel: function () { }
            });
            d.showModal();
        },
        collectPaper: function(pid,callback,flag){
            var self = this;
            if(typeof pid !== 'undefined'){
                self.pid = pid;
            }else if(!self.pid){
                OT2.Util.alert('请先保存试卷');
            }
            if(typeof flag !== 'undefined'){
                self.flag = flag; 
            }else{
                self.flag = 0;   
            }
            $.get('/paper/collect',{'pid':self.pid, 'flag':self.flag},function(response){
                if (response.errCode == 0) {
                    OT2.Util.alert(response.message);
                    callback(response.message=='收藏成功');
                }else {
                    OT2.Util.alert(response.message);
                }
            })
        },
        // 生成答题卡
        setAnswerSheet: function (pid,flag) {
            var self = this;
            if(typeof pid !== 'undefined'){
                self.pid = pid;
            }
            if(typeof flag !== 'undefined'){
                self.flag = flag; 
            }else{
                self.flag = 1;   
            }
            if(!self.pid){
//                OT2.Util.alert('请先保存试卷');
//                return false;
            }
            self.saveProcess(function(){
                var id = self.attributes.sheet; // 当前答题卡样式
                var htm = OT2.Util.Template().get('dialog-answer-sheet');
                var $el = $(_.template(htm, { self: self }));
                $el.vmenu = $el.find('.menu');
                $el.vsheetlist = $el.find('.sheet-list');
                $el.vtit = $el.find('.s-title');
                $el.vsheets = $el.find('.sheet div');
                $el.vmenu.on('click', function () {
                    $el.vsheetlist.show();
                    $(this).addClass('active');
                });
                $el.vsheetlist.find('li').on('click', function (event) {
                    event.stopPropagation();
                    $el.vsheetlist.hide();
                    $el.vtit.html(this.innerHTML);
                    id = $(this).data('sheet');
                    $el.vsheets.hide();
                    $el.vsheets.eq(id - 1).show();
                    $el.vmenu.removeClass('active');
                });
                $(document).on('click', function (event) {
                    if ($(event.target).parents('.menu').length == 0 && !$(event.target).hasClass('menu')) {
                        $el.vsheetlist.hide();
                        $el.vmenu.removeClass('active');
                    }
                });
                $el.vsheetlist.find('li[data-sheet="' + id + '"]').click();
                var d = dialog({
                    title: '下载答题卡',
                    content: $el.get(0),
                    okValue: '确定',
                    cancelValue: '取消',
                    ok: function () { 
                        var params = {1:'c',2:'a',3:'b'};
                        self.attributes.sheet = id;
                        OT2.Util.alert('生成试卷答题卡中,请耐心等待'); 
                        window.location = '/paper/download-answer-sheet?pid='+self.pid+'&size='+params[id]+'&flag='+self.flag;
                        self.serialize();
                    },
                    cancel: function () { 
                        // console.log(self.pid);
                    }
                });
                d.showModal();
            });
        },

        // 侧栏固定
        fixedSide: function () {
            var _top = document.body.scrollTop || document.documentElement.scrollTop;
            this.isFixedSide = _top > 110 ? true : false;
            this.$el[this.isFixedSide ? 'addClass' : 'removeClass']('fixed');
            this.autoHeightSideType();

        },
        // 侧栏题型统计高度自动计算
        autoHeightSideType: function () { 
            var h = document.documentElement.clientHeight;
            // document.title = h;
            if (typeof this.sideTypes_Height === 'undefined') {
                this.sideTypes_Height = this.$sideTypes.height();
            }
            var $ee = $('#sd-set-wire');
            var h2 = $ee.height();
            if (!$ee.is(':visible')) h2 = 0;
            h = this.isFixedSide ? (h-h2-190-56) : (h-h2-300-56);
            if (this.sideTypes_Height < h) {
                this.$sideTypes.css({ 'height': 'auto' });
                this.$sideTypes.removeClass('overflow');
            }
            else {
                this.$sideTypes.css({ 'height': h });
                this.$sideTypes.addClass('overflow');
            }
        }   
        
        
    };

    _.extend(Klass.prototype, OT2.Event.prototype);    
    return Klass;
})();


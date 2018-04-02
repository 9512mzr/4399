/**
 * 本地缓存功能
 *
 */
OT2.LocalData = {
    userData: null,
    name: location.hostname,
    isLocalStorage: (typeof localStorage == 'undefined') ? false : true,
    init: function () {
        if (!this.userData) {
            try {
                this.userData = document.createElement('INPUT');
                this.userData.type = "hidden";
                this.userData.style.display = "none";
                this.userData.addBehavior("#default#userData");
                document.body.appendChild(this.userData);
                var expires = new Date();
                expires.setDate(expires.getDate() + 365);
                this.userData.expires = expires.toUTCString();
            }
            catch (e) {
                return false;
            }
        }
        return true;
    },
    setLocal: function(key, value) {
        if (this.isLocalStorage) {
            localStorage.setItem(key, value);
        }
        else if (this.init()) {
            this.userData.load(this.name);
            this.userData.setAttribute(key, value);
            this.userData.save(this.name);
        }
    },
    set: function (key, value, isasync) {
        //客户端服务器皆存
        if(typeof USER.uid !== 'undefined'){
            this.setLocal(key, value);
            if(typeof isasync === 'undefined'){
                $.post('/ajax/set-basket', {key: key, value: value}).done(function(){  });
            } else {
                $.ajax({
                    type:'post',
                    url:'/ajax/set-basket',
                    data:{key:key, value: value},
                    async:isasync
                });
            }
        }
    },
    getLocal: function(key) {
        if (this.isLocalStorage) {
            return localStorage.getItem(key);
        }
        else if (this.init()) {
            this.userData.load(this.name);
            return this.userData.getAttribute(key)
        }
        return null;
    },
    get: function (key) {
        var value = null;
        var self = this;
        if(typeof USER.uid !== 'undefined'){
            var code = this.getCookie('has_'+key+'_'+USER.uid);
            value = this.getLocal(key);
            if(!code || !value || value == '{}'){
                $.ajax({
                    type:'get',
                    url:'/ajax/get-basket',
                    data:{key:key},
                    async:false,
                    success:function(data){
                        if(data.res == 200){
                            self.setCookie('has_'+key+'_'+USER.uid, 1);
                            self.removeLocal(key);
                            value = data.data;
                        }
                    }
                });
            }
        }
        return value;
    },
    setCookie: function(key, value, t) {
        var oDate = new Date();
        oDate.setTime( oDate.getTime() + t*60*60*1000 );
        document.cookie = key + '=' + value + ';path=/';
    },
    getCookie: function(key) {
        var arr1 = document.cookie.split('; ');
        for (var i=0; i<arr1.length; i++) {
            var arr2 = arr1[i].split('=');
            if ( arr2[0] == key ) {
                return decodeURI(arr2[1]);
            }
        }
    },
    removeLocal: function(key) {
        if (this.isLocalStorage) {
            localStorage.removeItem(key);
        }
        else if (this.init()) {
            this.userData.load(this.name);
            this.userData.removeAttribute(key);
            this.userData.save(this.name);
        }
    },
    remove: function (key, isasync) {
        if(typeof USER.uid !== 'undefined'){
            this.removeLocal(key);
            if(typeof isasync === 'undefined'){
                $.get('/ajax/remove-basket', {key: key}).done(function(){  });
            } else {
                $.ajax({
                    type:'get',
                    url:'/ajax/remove-basket',
                    data:{key:key},
                    async:false
                });
            } 
        }
    }
};

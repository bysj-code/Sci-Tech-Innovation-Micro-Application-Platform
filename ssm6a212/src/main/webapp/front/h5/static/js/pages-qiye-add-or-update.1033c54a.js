(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-qiye-add-or-update"],{1576:function(e,r,t){"use strict";var i=t("9e63"),o=t.n(i);o.a},"26b6":function(e,r,t){"use strict";t.r(r);var i=t("d834"),o=t("d0dc");for(var a in o)"default"!==a&&function(e){t.d(r,e,(function(){return o[e]}))}(a);t("1576");var n,l=t("f0c5"),u=Object(l["a"])(o["default"],i["b"],i["c"],!1,null,"509eced4",null,!1,i["a"],n);r["default"]=u.exports},"9e63":function(e,r,t){var i=t("a937");"string"===typeof i&&(i=[[e.i,i,""]]),i.locals&&(e.exports=i.locals);var o=t("4f06").default;o("7af146c6",i,!0,{sourceMap:!1,shadowMode:!1})},a591:function(e,r,t){"use strict";var i=t("4ea4");Object.defineProperty(r,"__esModule",{value:!0}),r.default=void 0,t("ac6a"),t("96cf");var o=i(t("3b8d")),a=i(t("e2b1")),n={data:function(){return{ruleForm:{qiyezhanghao:"",mima:"",qiyemingcheng:"",qiyedizhi:"",qiyeguimo:"",fuzeren:"",shouji:"",qiyetupian:"",youxiang:"",qiyejianjie:""},user:{},ro:{qiyezhanghao:!1,mima:!1,qiyemingcheng:!1,qiyedizhi:!1,qiyeguimo:!1,fuzeren:!1,shouji:!1,qiyetupian:!1,youxiang:!1,qiyejianjie:!1}}},components:{wPicker:a.default},computed:{},onLoad:function(){var e=(0,o.default)(regeneratorRuntime.mark((function e(r){var t,i,o,a;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return t=uni.getStorageSync("nowTable"),e.next=3,this.$api.session(t);case 3:if(i=e.sent,this.user=i.data,this.ruleForm.userid=uni.getStorageSync("userid"),r.refid&&(this.ruleForm.refid=r.refid,this.ruleForm.nickname=uni.getStorageSync("nickname")),!r.id){e.next=13;break}return this.ruleForm.id=r.id,e.next=11,this.$api.info("qiye",this.ruleForm.id);case 11:i=e.sent,this.ruleForm=i.data;case 13:if(!r.cross){e.next=60;break}o=uni.getStorageSync("crossObj"),e.t0=regeneratorRuntime.keys(o);case 16:if((e.t1=e.t0()).done){e.next=60;break}if(a=e.t1.value,"qiyezhanghao"!=a){e.next=22;break}return this.ruleForm.qiyezhanghao=o[a],this.ro.qiyezhanghao=!0,e.abrupt("continue",16);case 22:if("mima"!=a){e.next=26;break}return this.ruleForm.mima=o[a],this.ro.mima=!0,e.abrupt("continue",16);case 26:if("qiyemingcheng"!=a){e.next=30;break}return this.ruleForm.qiyemingcheng=o[a],this.ro.qiyemingcheng=!0,e.abrupt("continue",16);case 30:if("qiyedizhi"!=a){e.next=34;break}return this.ruleForm.qiyedizhi=o[a],this.ro.qiyedizhi=!0,e.abrupt("continue",16);case 34:if("qiyeguimo"!=a){e.next=38;break}return this.ruleForm.qiyeguimo=o[a],this.ro.qiyeguimo=!0,e.abrupt("continue",16);case 38:if("fuzeren"!=a){e.next=42;break}return this.ruleForm.fuzeren=o[a],this.ro.fuzeren=!0,e.abrupt("continue",16);case 42:if("shouji"!=a){e.next=46;break}return this.ruleForm.shouji=o[a],this.ro.shouji=!0,e.abrupt("continue",16);case 46:if("qiyetupian"!=a){e.next=50;break}return this.ruleForm.qiyetupian=o[a],this.ro.qiyetupian=!0,e.abrupt("continue",16);case 50:if("youxiang"!=a){e.next=54;break}return this.ruleForm.youxiang=o[a],this.ro.youxiang=!0,e.abrupt("continue",16);case 54:if("qiyejianjie"!=a){e.next=58;break}return this.ruleForm.qiyejianjie=o[a],this.ro.qiyejianjie=!0,e.abrupt("continue",16);case 58:e.next=16;break;case 60:this.styleChange();case 61:case"end":return e.stop()}}),e,this)})));function r(r){return e.apply(this,arguments)}return r}(),methods:{styleChange:function(){this.$nextTick((function(){}))},qiyetupianTap:function(){var e=this;this.$api.upload((function(r){e.ruleForm.qiyetupian=e.$base.url+"upload/"+r.file,e.$forceUpdate(),e.$nextTick((function(){e.styleChange()}))}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var e=(0,o.default)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(this.ruleForm.qiyezhanghao){e.next=3;break}return this.$utils.msg("企业账号不能为空"),e.abrupt("return");case 3:if(this.ruleForm.mima){e.next=6;break}return this.$utils.msg("密码不能为空"),e.abrupt("return");case 6:if(this.ruleForm.qiyemingcheng){e.next=9;break}return this.$utils.msg("企业名称不能为空"),e.abrupt("return");case 9:if(!this.ruleForm.shouji||this.$validate.isMobile(this.ruleForm.shouji)){e.next=12;break}return this.$utils.msg("手机应输入手机格式"),e.abrupt("return");case 12:if(!this.ruleForm.youxiang||this.$validate.isEmail(this.ruleForm.youxiang)){e.next=15;break}return this.$utils.msg("邮箱应输入邮件格式"),e.abrupt("return");case 15:if(!this.ruleForm.id){e.next=20;break}return e.next=18,this.$api.update("qiye",this.ruleForm);case 18:e.next=22;break;case 20:return e.next=22,this.$api.add("qiye",this.ruleForm);case 22:this.$utils.msgBack("提交成功");case 23:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}(),optionsChange:function(e){this.index=e.target.value},bindDateChange:function(e){this.date=e.target.value},getDate:function(e){var r=new Date,t=r.getFullYear(),i=r.getMonth()+1,o=r.getDate();return"start"===e?t-=60:"end"===e&&(t+=2),i=i>9?i:"0"+i,o=o>9?o:"0"+o,"".concat(t,"-").concat(i,"-").concat(o)},toggleTab:function(e){this.$refs[e].show()}}};r.default=n},a937:function(e,r,t){var i=t("24fb");r=i(!1),r.push([e.i,'@charset "UTF-8";\n/**\r\n * 这里是uni-app内置的常用样式变量\r\n *\r\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\r\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\r\n *\r\n */\n/**\r\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\r\n *\r\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\r\n */\n/* 颜色变量 */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */.container[data-v-509eced4]{padding:%?20?%}.content[data-v-509eced4]:after{position:fixed;top:0;right:0;left:0;bottom:0;content:"";background-attachment:fixed;background-size:cover;background-position:50%}uni-textarea[data-v-509eced4]{border:%?1?% solid #eee;border-radius:%?20?%;padding:%?20?%}.title[data-v-509eced4]{width:%?180?%}.avator[data-v-509eced4]{width:%?150?%;height:%?60?%}.right-input[data-v-509eced4]{-webkit-box-flex:1;-webkit-flex:1;flex:1;text-align:left;padding:0 %?24?%}.cu-form-group.active[data-v-509eced4]{-webkit-box-pack:justify;-webkit-justify-content:space-between;justify-content:space-between}.btn[data-v-509eced4]{display:-webkit-box;display:-webkit-flex;display:flex;-webkit-box-align:center;-webkit-align-items:center;align-items:center;-webkit-box-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-flex-wrap:wrap;flex-wrap:wrap;padding:%?20?% 0}.cu-form-group[data-v-509eced4]{padding:0 %?24?%;background-color:initial;min-height:inherit}.cu-form-group + .cu-form-group[data-v-509eced4]{border:0}.cu-form-group uni-input[data-v-509eced4]{padding:0 %?30?%}.uni-input[data-v-509eced4]{padding:0 %?30?%}.cu-form-group uni-textarea[data-v-509eced4]{padding:%?30?%;margin:0}.cu-form-group uni-picker[data-v-509eced4]::after{line-height:%?88?%}.select .uni-input[data-v-509eced4]{line-height:%?88?%}.input .right-input[data-v-509eced4]{line-height:%?88?%}',""]),e.exports=r},d0dc:function(e,r,t){"use strict";t.r(r);var i=t("a591"),o=t.n(i);for(var a in i)"default"!==a&&function(e){t.d(r,e,(function(){return i[e]}))}(a);r["default"]=o.a},d834:function(e,r,t){"use strict";var i,o=function(){var e=this,r=e.$createElement,t=e._self._c||r;return t("v-uni-view",{staticClass:"content"},[t("v-uni-form",{staticClass:"app-update-pv"},[t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 16rpx rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0 0 020rpx 0",borderWidth:"0",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(255, 153, 0, 1)",textAlign:"left"}},[e._v("企业账号")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(255, 153, 0, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.qiyezhanghao,placeholder:"企业账号"},model:{value:e.ruleForm.qiyezhanghao,callback:function(r){e.$set(e.ruleForm,"qiyezhanghao",r)},expression:"ruleForm.qiyezhanghao"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 16rpx rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0 0 020rpx 0",borderWidth:"0",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(255, 153, 0, 1)",textAlign:"left"}},[e._v("密码")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(255, 153, 0, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.mima,placeholder:"密码"},model:{value:e.ruleForm.mima,callback:function(r){e.$set(e.ruleForm,"mima",r)},expression:"ruleForm.mima"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 16rpx rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0 0 020rpx 0",borderWidth:"0",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(255, 153, 0, 1)",textAlign:"left"}},[e._v("企业名称")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(255, 153, 0, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.qiyemingcheng,placeholder:"企业名称"},model:{value:e.ruleForm.qiyemingcheng,callback:function(r){e.$set(e.ruleForm,"qiyemingcheng",r)},expression:"ruleForm.qiyemingcheng"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 16rpx rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0 0 020rpx 0",borderWidth:"0",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(255, 153, 0, 1)",textAlign:"left"}},[e._v("企业地址")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(255, 153, 0, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.qiyedizhi,placeholder:"企业地址"},model:{value:e.ruleForm.qiyedizhi,callback:function(r){e.$set(e.ruleForm,"qiyedizhi",r)},expression:"ruleForm.qiyedizhi"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 16rpx rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0 0 020rpx 0",borderWidth:"0",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(255, 153, 0, 1)",textAlign:"left"}},[e._v("企业规模")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(255, 153, 0, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.qiyeguimo,placeholder:"企业规模"},model:{value:e.ruleForm.qiyeguimo,callback:function(r){e.$set(e.ruleForm,"qiyeguimo",r)},expression:"ruleForm.qiyeguimo"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 16rpx rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0 0 020rpx 0",borderWidth:"0",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(255, 153, 0, 1)",textAlign:"left"}},[e._v("负责人")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(255, 153, 0, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.fuzeren,placeholder:"负责人"},model:{value:e.ruleForm.fuzeren,callback:function(r){e.$set(e.ruleForm,"fuzeren",r)},expression:"ruleForm.fuzeren"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 16rpx rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0 0 020rpx 0",borderWidth:"0",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(255, 153, 0, 1)",textAlign:"left"}},[e._v("手机")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(255, 153, 0, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.shouji,placeholder:"手机"},model:{value:e.ruleForm.shouji,callback:function(r){e.$set(e.ruleForm,"shouji",r)},expression:"ruleForm.shouji"}})],1),t("v-uni-view",{staticClass:"cu-form-group",class:"left"==e.left?"":"active",style:{boxShadow:"0 0 16rpx rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0 0 20rpx 0",borderWidth:"0",borderStyle:"solid",height:"108rpx"},on:{click:function(r){arguments[0]=r=e.$handleEvent(r),e.qiyetupianTap.apply(void 0,arguments)}}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(255, 153, 0, 1)",textAlign:"left"}},[e._v("企业图片")]),t("v-uni-view",{staticClass:"right-input",staticStyle:{padding:"0"},style:{textAlign:"left"}},[e.ruleForm.qiyetupian?t("v-uni-image",{staticClass:"avator",style:{width:"88rpx",boxShadow:"0 0 16rpx rgba(0,0,0,.3)",borderRadius:"100%",textAlign:"left",height:"88rpx"},attrs:{src:e.ruleForm.qiyetupian,mode:"aspectFill"}}):t("v-uni-image",{staticClass:"avator",style:{width:"88rpx",boxShadow:"0 0 16rpx rgba(0,0,0,.3)",borderRadius:"100%",textAlign:"left",height:"88rpx"},attrs:{src:"../../static/gen/upload.png",mode:"aspectFill"}})],1)],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 16rpx rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0 0 020rpx 0",borderWidth:"0",borderStyle:"solid",height:"108rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(255, 153, 0, 1)",textAlign:"left"}},[e._v("邮箱")]),t("v-uni-input",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(255, 153, 0, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"88rpx"},attrs:{disabled:e.ro.youxiang,placeholder:"邮箱"},model:{value:e.ruleForm.youxiang,callback:function(r){e.$set(e.ruleForm,"youxiang",r)},expression:"ruleForm.youxiang"}})],1),t("v-uni-view",{staticClass:"cu-form-group",style:{boxShadow:"0 0 16rpx rgba(0,0,0,.3)",backgroundColor:"rgba(255, 255, 255, 0.25)",borderColor:"#ccc",margin:"0 0 20rpx 0",borderWidth:"0",borderStyle:"solid",height:"308rpx"}},[t("v-uni-view",{staticClass:"title",style:{width:"170rpx",fontSize:"28rpx",color:"rgba(255, 153, 0, 1)",textAlign:"left"}},[e._v("企业简介")]),t("v-uni-textarea",{style:{boxShadow:"0 0 0px rgba(0,0,0,.6) inset",backgroundColor:"rgba(255, 255, 255, 0)",borderColor:"rgba(255, 153, 0, 1)",borderRadius:"16rpx",color:"rgba(0, 0, 0, 1)",textAlign:"left",borderWidth:"2rpx",fontSize:"28rpx",borderStyle:"solid",height:"300rpx"},attrs:{placeholder:"企业简介"},model:{value:e.ruleForm.qiyejianjie,callback:function(r){e.$set(e.ruleForm,"qiyejianjie",r)},expression:"ruleForm.qiyejianjie"}})],1),t("v-uni-view",{staticClass:"btn"},[t("v-uni-button",{staticClass:"bg-red",style:{boxShadow:"0 0 16rpx rgba(0,0,0,0) inset",backgroundColor:"rgba(255, 153, 0, 1)",borderColor:"rgba(255, 255, 0, 1)",borderRadius:"8rpx",color:"rgba(255, 255, 255, 1)",borderWidth:"1",width:"80%",fontSize:"28rpx",borderStyle:"solid",height:"80rpx"},on:{click:function(r){arguments[0]=r=e.$handleEvent(r),e.onSubmitTap.apply(void 0,arguments)}}},[e._v("提交")])],1)],1)],1)},a=[];t.d(r,"b",(function(){return o})),t.d(r,"c",(function(){return a})),t.d(r,"a",(function(){return i}))}}]);
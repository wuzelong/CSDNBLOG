/*
author:dxc
Date：2020/4/27
 */
//颜色
var bgBlue = "#EDF2FC";
var darkBlue = "#5BC0DE"; 
var darkBlue2 = "#409EFF";
var bgGreen = "#F0F9EB";
var darkGreen = "#5CB85C";
var bgOrange = "#FDF6EC";
var darkOrange = "#F0AD4E"; 
var bgRed = "#FEF0F0";
var darkRed = "#D9534F"; 
var lightGrey = "#E2E2E2"

//图标
var Icon = function() {
  var path1,path2,path3;

  return {
    info:function(width,height){
      var infoIcon = document.createElementNS("http://www.w3.org/2000/svg","svg");
      infoIcon.setAttribute("viewBox","0 0 1024 1024");
      infoIcon.setAttribute("width",width);
      infoIcon.setAttribute("height",height);
      
      path1 = document.createElementNS("http://www.w3.org/2000/svg", "path");
      path1.setAttribute("d","M512 524.8m-416 0a416 416 0 1 0 832 0 416 416 0 1 0-832 0Z");
      path1.setAttribute("fill",darkBlue);
      infoIcon.appendChild(path1);
      
      path2 = document.createElementNS("http://www.w3.org/2000/svg", "path");
      path2.setAttribute("d","M512 435.2c-19.2 0-38.4 19.2-38.4 38.4V768c0 19.2 19.2 38.4 38.4 38.4s38.4-19.2 38.4-38.4V473.6c0-19.2-19.2-38.4-38.4-38.4z");
      path2.setAttribute("fill","#FFFFFF");
      infoIcon.appendChild(path2);
      
      path3 = document.createElementNS("http://www.w3.org/2000/svg", "path");
      path3.setAttribute("d","M512 300.8m-51.2 0a51.2 51.2 0 1 0 102.4 0 51.2 51.2 0 1 0-102.4 0Z");
      path3.setAttribute("fill","#FFFFFF");
      infoIcon.appendChild(path3);
      
      infoIcon.style.verticalAlign = "middle";
      return infoIcon;
    },
    warning:function(width,height){
      var warningIcon = document.createElementNS("http://www.w3.org/2000/svg","svg");
      warningIcon.setAttribute("viewBox","0 0 1024 1024");
      warningIcon.setAttribute("width",width);
      warningIcon.setAttribute("height",height);
      
      path1 = document.createElementNS("http://www.w3.org/2000/svg", "path");
      path1.setAttribute("d","M512 512m-403.2 0a403.2 403.2 0 1 0 806.4 0 403.2 403.2 0 1 0-806.4 0Z");
      path1.setAttribute("fill",darkOrange);
      warningIcon.appendChild(path1);
      
      path2 = document.createElementNS("http://www.w3.org/2000/svg", "path");
      path2.setAttribute("d","M512 608c-19.2 0-38.4-19.2-38.4-38.4V288c0-19.2 19.2-38.4 38.4-38.4s38.4 19.2 38.4 38.4V576c0 12.8-19.2 32-38.4 32z");
      path2.setAttribute("fill","#FFFFFF");
      warningIcon.appendChild(path2);
      
      path3 = document.createElementNS("http://www.w3.org/2000/svg", "path");
      path3.setAttribute("d","M512 736m-44.8 0a44.8 44.8 0 1 0 89.6 0 44.8 44.8 0 1 0-89.6 0Z");
      path3.setAttribute("fill","#FFFFFF");
      warningIcon.appendChild(path3);
      
      warningIcon.style.verticalAlign = "middle";
      return warningIcon;
    },
    success:function(width,height){
      var successIcon = document.createElementNS("http://www.w3.org/2000/svg","svg");
      successIcon.setAttribute("viewBox","0 0 1024 1024");
      successIcon.setAttribute("width",width);
      successIcon.setAttribute("height",height);
      
      path1 = document.createElementNS("http://www.w3.org/2000/svg", "path");
      path1.setAttribute("d","M512 76.8c-236.8 0-435.2 192-435.2 435.2s192 435.2 435.2 435.2 435.2-192 435.2-435.2S748.8 76.8 512 76.8z m249.6 320L480 704c-12.8 12.8-38.4 12.8-51.2 0L288 556.8c-12.8-12.8-12.8-38.4 0-51.2 12.8-12.8 38.4-12.8 51.2 0l115.2 115.2L704 339.2c12.8-12.8 38.4-12.8 51.2 0 25.6 12.8 25.6 38.4 6.4 57.6z");
      path1.setAttribute("fill",darkGreen);
      successIcon.appendChild(path1);
      
      path2 = document.createElementNS("http://www.w3.org/2000/svg", "path");
      path2.setAttribute("d","M710.4 339.2l-256 281.6-115.2-115.2c-12.8-12.8-38.4-12.8-51.2 0-12.8 12.8-12.8 38.4 0 51.2l147.2 140.8c12.8 12.8 38.4 12.8 51.2 0L768 390.4c12.8-12.8 12.8-38.4 0-51.2-19.2-12.8-44.8-12.8-57.6 0z");
      path2.setAttribute("fill","#FFFFFF");
      successIcon.appendChild(path2);

      successIcon.style.verticalAlign = "middle";
      return successIcon;
    },
    error:function(width,height){
      var errorIcon = document.createElementNS("http://www.w3.org/2000/svg","svg");
      errorIcon.setAttribute("viewBox","0 0 1024 1024");
      errorIcon.setAttribute("width",width);
      errorIcon.setAttribute("height",height);
      
      path1 = document.createElementNS("http://www.w3.org/2000/svg", "path");
      path1.setAttribute("d","M512 512m-435.2 0a435.2 435.2 0 1 0 870.4 0 435.2 435.2 0 1 0-870.4 0Z");
      path1.setAttribute("fill",darkRed);
      errorIcon.appendChild(path1);
      
      path2 = document.createElementNS("http://www.w3.org/2000/svg", "path");
      path2.setAttribute("d","M563.2 512l108.8-108.8c12.8-12.8 12.8-38.4 0-51.2-12.8-12.8-38.4-12.8-51.2 0L512 460.8 403.2 352c-12.8-12.8-38.4-12.8-51.2 0-12.8 12.8-12.8 38.4 0 51.2L460.8 512 352 620.8c-12.8 12.8-12.8 38.4 0 51.2 12.8 12.8 38.4 12.8 51.2 0L512 563.2l108.8 108.8c12.8 12.8 38.4 12.8 51.2 0 12.8-12.8 12.8-38.4 0-51.2L563.2 512z");
      path2.setAttribute("fill","#FFFFFF");
      errorIcon.appendChild(path2);

      errorIcon.style.verticalAlign = "middle";
      return errorIcon;
    },
  }
}

var Button = function(color1,color2,text,type){
  var clickStatus = 0;
  var button = document.createElement("div");
  button.style.backgroundColor = color1 ;
  if(type == "default"){
    button.style.color = "#000" ;
  }else{
    button.style.color = "#fff" ;
  }
  //调整宽度
  button.style.width = 16 + getByteLength(text) * 7 +"px";
  button.className = "tgtool tgBtn";
  //hover
  button.onmousemove = function(){
    button.style.backgroundColor = color2 ;
  };
  button.onmouseout = function(){
    if(clickStatus == 0)
      button.style.backgroundColor = color1;
  };
  //点击
  document.onclick = function(e){
    var pop = button;
    if (e.target!= pop && !pop.contains(e.target)){
      clickStatus = 0;
      button.style.backgroundColor = color1;
    }else{
      clickStatus = 1;
      button.style.backgroundColor = color2;
    }
  };
  //字
  var textNode = document.createElement("label");
  textNode.innerText = text;
  textNode.style.verticalAlign = "middle";
  button.appendChild(textNode);
  return button;
}

var TGTool = function() {
  var body = document.getElementsByTagName("body")[0];
  var alertCount = 0;
  var icon = Icon();
  return {
    info: function(text) {
      alertCount ++;
      //外框
      var alertDiv = document.createElement("div");
      //颜色
      alertDiv.style.backgroundColor = bgBlue;
      alertDiv.style.color = darkBlue;
      //位置
      alertDiv.style.position = " fixed";
      alertDiv.style.left = "50%";
      alertDiv.style.top = (alertCount * 50 - 30) + "px";
      //调整左右位置
      alertDiv.style.marginLeft = "-" + ( getByteLength(text) * 7 + 70 ) / 2 + "px";
      //动画
      alertDiv.className = "tgAlertDiv animated  bounceInDown tgtool";
      //标签
      alertDiv.appendChild(icon.info(20,20));
      //提示字
      var textNode = document.createElement("label");
      textNode.innerText = text;
      textNode.style.verticalAlign = "middle";
      textNode.style.marginLeft = "10px";
      alertDiv.appendChild(textNode);
      
      body.appendChild(alertDiv);
      setTimeout(function() {
        alertDiv.className="remove";
        setTimeout(function() {
          body.removeChild(alertDiv);
          alertCount --;
        }, 3000);
      }, 3000);
      return true;
    },
    warning: function(text) {
      alertCount ++;
      //外框
      var alertDiv = document.createElement("div");
      //颜色
      alertDiv.style.backgroundColor = bgOrange;
      alertDiv.style.color = darkOrange;
      //位置
      alertDiv.style.position = " fixed";
      alertDiv.style.left = "50%";
      alertDiv.style.top = (alertCount * 50 - 30) + "px";
      //调整左右位置
      alertDiv.style.marginLeft = "-" + ( getByteLength(text) * 7 + 70 ) / 2 + "px";
      //动画
      alertDiv.className = "tgAlertDiv animated  bounceInDown tgtool";
      //标签
      alertDiv.appendChild(icon.warning(20,20));
      //提示字
      var textNode = document.createElement("label");
      textNode.innerText = text;
      textNode.style.verticalAlign = "middle";
      textNode.style.marginLeft = "10px";
      alertDiv.appendChild(textNode);
      
      body.appendChild(alertDiv);
      setTimeout(function() {
        alertDiv.className="remove";
        setTimeout(function() {
          body.removeChild(alertDiv);
          alertCount --;
        }, 3000);
      }, 3000);
      return true;
    },
    success: function(text) {
      alertCount ++;
      //外框
      var alertDiv = document.createElement("div");
      //颜色
      alertDiv.style.backgroundColor = bgGreen;
      alertDiv.style.color =  darkGreen;
      //位置
      alertDiv.style.position = " fixed";
      alertDiv.style.left = "50%";
      alertDiv.style.top = (alertCount * 50 - 30) + "px";
      //调整左右位置
      alertDiv.style.marginLeft = "-" + ( getByteLength(text) * 7 + 70 ) / 2 + "px";
      //动画
      alertDiv.className = "tgAlertDiv animated  bounceInDown tgtool";
      //标签
      alertDiv.appendChild(icon.success(20,20));
      //提示字
      var textNode = document.createElement("label");
      textNode.innerText = text;
      textNode.style.verticalAlign = "middle";
      textNode.style.marginLeft = "10px";
      alertDiv.appendChild(textNode);
      
      body.appendChild(alertDiv);
      setTimeout(function() {
        alertDiv.className="remove";
        setTimeout(function() {
          body.removeChild(alertDiv);
          alertCount --;
        }, 3000);
      }, 3000);
      return true;
    },
    error: function(text) {
      alertCount ++;
      //外框
      var alertDiv = document.createElement("div");
      //颜色
      alertDiv.style.backgroundColor = bgRed;
      alertDiv.style.color = darkRed;
      //位置
      alertDiv.style.position = " fixed";
      alertDiv.style.left = "50%";
      alertDiv.style.top = (alertCount * 50 - 30) + "px";
      //调整左右位置
      alertDiv.style.marginLeft = "-" + ( getByteLength(text) * 7 + 70 ) / 2 + "px";
      alertDiv.style.borderRadius = "8px";
      alertDiv.style.fontSize = "14px";
      alertDiv.style.textAlign = "center";
      alertDiv.style.padding = "12px 20px";
      //动画
      alertDiv.className = "tgAlertDiv animated  bounceInDown tgtool";
      //标签
      alertDiv.appendChild(icon.error(20,20));
      //提示字
      var textNode = document.createElement("label");
      textNode.innerText = text;
      textNode.style.verticalAlign = "middle";
      textNode.style.marginLeft = "10px";
      alertDiv.appendChild(textNode);
      
      body.appendChild(alertDiv);
      setTimeout(function() {
        alertDiv.className="remove";
        setTimeout(function() {
          body.removeChild(alertDiv);
          alertCount --;
        }, 3000);
      }, 3000);
      return true;
    },
    confirm:function(title,text,callback1,callback2){
      //透明遮罩层
      var mask = document.createElement("div");
      mask.style.position = "fixed";
      mask.style.zIndex = 1000000;
      mask.style.top = 0;
      mask.style.bottom = 0;
      mask.style.left = 0;
      mask.style.right = 0;
      mask.style.backgroundColor = lightGrey;
      mask.style.opacity = "0.5";
      body.appendChild(mask);
      var confirmDiv = document.createElement("div");
      //颜色
      confirmDiv.style.backgroundColor = "#fff";
      confirmDiv.style.color = "#000";
      confirmDiv.style.boxShadow = "0 2px 12px 0 rgba(0,0,0,.1)";
      //位置
      confirmDiv.style.width = "400px";
      confirmDiv.style.height = "140px";
      confirmDiv.style.position = " fixed";
      confirmDiv.style.zIndex = 9999999;
      confirmDiv.style.top = "200px";
      confirmDiv.style.left = "50%";
      confirmDiv.style.marginLeft = "-200px";
      confirmDiv.style.padding = "0 10px";
      //内容
      confirmDiv.style.borderRadius = "8px";
      confirmDiv.style.fontSize = "14px";
      confirmDiv.style.textAlign = "left";

      //上半部分
      var topDiv = document.createElement("div");
      topDiv.style.backgroundColor = bgBlue;
      topDiv.style.borderRadius = "8px 8px 0 0";
      topDiv.style.width = confirmDiv.width;
      topDiv.style.height = "40px";
      topDiv.style.textAlign = "center";
      topDiv.style.margin = "0 -10px";
      topDiv.style.top = "0";

      //提示字
      var titleNode = document.createElement("label");
      titleNode.innerText = title;
      titleNode.style.verticalAlign = "middle";
      titleNode.style.fontSize = "18px";
      titleNode.style.lineHeight = "40px";
      topDiv.appendChild(titleNode);

      //内容
      var textNode = document.createElement("label");
      textNode.innerText = text;
      textNode.style.fontSize = "14px";
      textNode.style.lineHeight = "24px";
      textNode.style.position = "absolute";
      textNode.style.width = "90%";
      textNode.style.top = "60px";
      textNode.style.left = "5%"

      //调整高度
      var lineNum = getByteLength(text) / 54;
      var heightNum = confirmDiv.style.height.replace("px","");
      if(heightNum < lineNum *  24 + 116 ){
        confirmDiv.style.height = lineNum *  24 + 126 + "px";
      }

      //确定按钮
      var btn1 = Button(darkBlue,darkBlue2,"确定","");
      btn1.style.position = "absolute";
      btn1.style.bottom = "10px";
      btn1.style.right = "20px";
      
      btn1.onclick = function(){
        body.removeChild(confirmDiv);
        body.removeChild(mask);
        callback1();
      };

      //取消按钮
      var btn2 = Button("#fff",bgBlue,"取消","default");
      btn2.style.position = "absolute";
      btn2.style.bottom = "10px";
      btn2.style.right = "116px";

      btn2.onclick = function(){
        body.removeChild(confirmDiv);
        body.removeChild(mask);
        if(callback2)
          callback2();
      };

      confirmDiv.appendChild(topDiv);
      confirmDiv.appendChild(textNode);
      confirmDiv.appendChild(btn1);
      confirmDiv.appendChild(btn2);
      body.appendChild(confirmDiv);

    }
  }  
};


//函数


//计算字节长度
function getByteLength( str ){
  return str.replace(/[\u0391-\uFFE5]/g,"aa").length;
}
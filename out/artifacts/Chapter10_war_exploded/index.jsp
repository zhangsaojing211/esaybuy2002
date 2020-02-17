<%--
  Created by IntelliJ IDEA.
  User: 张扫静
  Date: 2020/1/6
  Time: 8:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <script src="js/jquery-1.12.4.js" type="text/javascript"></script>
  <script>
    $(function () {
             $("#username").blur(function () {
               var $username= $("#username").val();
        if($username==""){
          $("#span1").html("用户名不能为空")
        }else {
          //创建ajax核心对象xmlHttpRequest
          var xmlHttpRequest=createXMLHttpRequest();
          //绑定回调函数
          xmlHttpRequest.onreadystatechange=callBack;
          // 初始化组件
           var url="UserServlet?username="+$username;
           xmlHttpRequest.open("get",url,true);
          var url="UserServlet"
          // var data2="username"+$username;
          // xmlHttpRequest.open("post",url,true)
          // xmlHttpRequest.setRequestHeader( "Content-Type", "application/x-www-form-urlencoded" );
          // xmlHttpRequest.send(data2)
          //发送请求
          xmlHttpRequest.send(null)
          //回调函数
          function callBack() {
            if(xmlHttpRequest.readyState==4
                    &&xmlHttpRequest.status==200){
              var data1=xmlHttpRequest.responseText;
              if(data1.trim()=="true"){
                $("#span1").html("用户名已经被占用！！！");
              }else {
                $("#span1").html("用户名可以使用！！！");
              }
            }
          }
        }
      });
             //创建核心对象
      function createXMLHttpRequest() {
        if(window.XMLHttpRequest){
          return new XMLHttpRequest();
        }else {
          return new ActiveXObject();
        }
      };
    });
  </script>
  <body>
  <form action="#" name="myform">
    <p>用户名：<input type="text" name="username" id="username"><span id="span1" style="color: red"></span></p>
  </form>
  </body>
</html>

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
               var $username = $("#username").val();
               if ($username == "") {
                 $("#span1").html("用户名不能为空")
               } else {
                 $.ajax({
                   url:"UserServlet",
                   type:"get",
                   data:"username="+$username,
                   dataType:"text",
                   success:function (result) {
                     if(result.trim()=="true"){
                       $("#span1").html("用户名已经被占用！！！");
                     }else {
                       $("#span1").html("用户名可以使用！！！");
                     }
                   },
                   error:function () {
                     alert("用户响应错误！！")
                   }
                 })
               }

    });
    });
  </script>
  <body>
  <form action="#" name="myform">
    <p>用户名：<input type="text" name="username" id="username"><span id="span1" style="color: red"></span></p>
  </form>
  </body>
</html>

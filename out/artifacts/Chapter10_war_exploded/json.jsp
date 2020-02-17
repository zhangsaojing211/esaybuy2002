<%--
  Created by IntelliJ IDEA.
  User: 张扫静
  Date: 2020/1/6
  Time: 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script src="js/jquery-1.12.4.js" type="text/javascript"></script>
<script>
    $(function () {
        var user={"username":"张三","password":"123","ID":"1"};
        $("#div1").append("用户ID:"+user.ID+"<br/>");
        $("#div1").append("用户名:"+user.username+"<br/>");
        $("#div1").append("用户密码:"+user.password+"<br/>");
        var arry=["中国","日本","美国"];
        var $ul=$("<ul></ul>")
        $(arry).each(function (i,e) {
           $ul.append("<li>"+e+"</li>");
        })
        $("#div2").append($ul)
        var $se1=$("<select></select>");
        $(arry).each(function () {
            $se1.append("<option>"+this+"</option>")
        })
        $("#div3").append($se1)
        var persons=[{"username":"张三","password":"123","ID":"1"},
            {"username":"李四","password":"456","ID":"2"},
            {"username":"王五","password":"789","ID":"3"}]
        var $tanle=$("<table border='1'><tr><td>用户名</td>\n" +
            "<td>密码</td>\n" +
            "<td>ID</td></tr></table>");
        $(persons).each(function (i,e) {
            $tanle.append("<tr><td>"+e.username+"</td><td>"+e.password+"</td><td>"+e.ID+"</td></tr></table>")
        })
        $("#div4").append($tanle);
    });
</script>
<body>
<h2>JSON对象的显示</h2>
<div id="div1">

</div>
<h2>JSON格式的字符串数据</h2>
<div id="div2"></div>
<div id="div3"></div>
<h2>JSON格式的对象数组</h2>

<div id="div4"></div>
</body>
</html>

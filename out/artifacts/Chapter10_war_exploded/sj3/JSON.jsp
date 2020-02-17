<%--
  Created by IntelliJ IDEA.
  User: 张扫静
  Date: 2020/1/8
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>以常见页面元素展示JSON数据</title>
</head>
<script src="../js/jquery-1.12.4.js"></script>
<script>
    $(function () {
        var $Array=[{
            id:1,
            name:"admin",
            dizhi:"北京市海淀区",
            Phone:"123123123",
        },{
            id:2,
            name:"梅西",
            dizhi:"湖北省武汉市",
            Phone:"123123456",
        },{
            id:3,
            name:"詹姆斯",
            dizhi:"四川省成都市",
            Phone:"1231556123",
        },{
            id:4,
            name:"梅西",
            dizhi:"广东省广州市",
            Phone:"127723123",
        }];
        $userArray=$($Array)
        var $table = $("<table border='1'></table>").append(
            "<tr><th>ID</th><th>姓名</th><th>住址</th><th>手机</th></tr>")
            .appendTo($("#div1"));
        $userArray.each(function() {
            $table.append("<tr><td>" + this.id + "</td><td>"
                + this.name + "</td><td>"
                + this.dizhi + "</td><td>"
                + this.Phone + "</td></tr>");
        });

        var $sel = $("#arraySel");
        $userArray.each(function(i) {
            $sel.append("<option value='"+(i+1)+"'>"
                + this.name + " - " + this.dizhi
                + " - " + this.Phone + "</option>");
        });
    })
</script>
<body>
<div id="div1"></div><br />
<select id="arraySel"></select>
</body>
</html>

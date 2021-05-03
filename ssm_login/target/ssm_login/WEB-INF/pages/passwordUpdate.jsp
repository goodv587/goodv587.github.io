<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/11/18
  Time: 9:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改密码</title>
</head>
<body>
<center>

    <form action="updatePass" method="post">
        用户名：<input type="text" name="uname" value="${sessionScope.user.uname}" readonly="true"><br/>
        请输入新密码：<input type="text" name="upass">
        <input type="submit" value="修改">
    </form>
    </center>

</body>
</html>

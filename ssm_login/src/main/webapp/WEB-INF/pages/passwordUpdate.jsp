
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改密码</title>
</head>
<body>
<center>

    <form action="${pageContext.request.contextPath}/user/updatePass" method="post">
        用户名：<input type="text" name="uname" value="${sessionScope.user.uname}" readonly="true"><br/>
        请输入新密码：<input type="text" name="upass">
        <input type="submit" value="修改">
    </form>
    </center>

</body>
</html>

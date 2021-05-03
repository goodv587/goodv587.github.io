<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>短消息平台</title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <link href="style/base.css" rel="stylesheet" type="text/css" />
    <style>
        body{
            background-color:#ccc;
        }

        #header{
            width:80%;
            height:60px;
            background-color:#fff;
            margin:0px auto;
            padding:10px 20px 0px 20px;
            color: #A3B96F;
            text-shadow:2px 2px 2px #000;
        }
        #wrap{
            width:80%;
            background-color:#fff;
            margin:0px auto;
            line-height:40px;
            height:320px;
            padding:0px 20px;
        }

        #wrap table{
            width:100%;
        }

        #wrap table td{
            border-bottom:1px solid #eee;
            padding-right:10px;
        }

        #wrap .first td{
            padding-left:10px;
        }

        #wrap .first{
            background:url(images/header_bg.gif) repeat-x;
            height:30px;
            line-height:30px;
            color:#fff;
        }

        .warning{
            background:url(images/check_error.gif) no-repeat 2px;
        }

        #footer{
            width:80%;
            height:50px;
            background-color:#eee;
            padding:0px 20px;
            margin:0px auto;
            text-align:right;
            padding-top:15px;
        }
    </style>
    <script type="text/javascript" src="js/time.js"></script>
</head>

<body onload="showTime()">
<div id="header">
    <h1>短消息平台</h1>
</div>
<div id="wrap">
    短消息平台&nbsp;&raquo;&nbsp;<span class="bold">登录</span>
    <form action="user/login" method="post">
        <table>
            <tr class="first">
                <td colspan="2">登录</td>
            </tr>
            <tr>
                <td align="right">用户名</td>
                <td>
                    <input type="text" id="uname" class="input1" placeholder="用户名" name="uname"/>
                    <span id="checkUsername"></span>
                </td>
            </tr>
            <tr>
                <td align="right">密码</td>
                <td><input type="password" id="pwd1" class="input1"  placeholder="密码" 	name="upass"/>
                    <span id="checkPwd1"></span>
                </td>
            </tr>
           
            <tr height="50">
                <td></td>
                <td><input type="submit" value="登录" id="submit" class="button1" />
                    &nbsp;&nbsp;&nbsp;<a href="reg.jsp">注册</a>
                  
            </tr>
        </table>
    </form>
</div>
<div id="footer">
    现在时间是:<span id="time"></span>
</div>
</body>
</html>


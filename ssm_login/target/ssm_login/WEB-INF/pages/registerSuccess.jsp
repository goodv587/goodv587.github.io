<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2019/11/26
  Time: 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>短消息平台</title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <link href="${pageContext.request.contextPath}/style/base.css" rel="stylesheet" type="text/css" />
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
            background:url(/images/header_bg.gif) repeat-x;
            height:30px;
            line-height:30px;
            color:#fff;
        }

        .warning{
            background:url(/images/check_error.gif) no-repeat 2px;
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
        p{
            height:180px;
            border:1px solid #eee;
            padding-left:150px;
            padding-top:80px;
        }
    </style>
    <script type="text/javascript" src="/js/time.js"></script>
    <script>
        var t = 4;
        setInterval("timing()", 1000);

        function timing(){
            if(t==0){
                location.href="/user/loginout";
            }else{
                document.getElementById("num").innerHTML=t;
                t--;
            }
        }
    </script>
</head>

<body onload="showTime()">
<div id="header">
    <h1>短消息平台</h1>
</div>
<div id="wrap">
    短消息平台&nbsp;&raquo;&nbsp;<span class="bold">提示</span>
    <p>

        恭喜您，注册成功！浏览器将在<span id="num">5</span>秒后跳转到登录页，如果没有跳转，
        请点击<a href='/user/loginout'>这里</a>登录
    </p>
</div>
<div id="footer">
    现在时间是:<span id="time"></span>
</div>
</body>
</html>

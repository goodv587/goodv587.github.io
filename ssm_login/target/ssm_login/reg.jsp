<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> 短消息平台-注册</title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <link href="style/base.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/time.js"></script>
    <script src="js/jquery-3.2.1.js"></script>
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
            height:460px;
            padding:0px 20px;
        }

        #wrap table{
            width:100%;
        }

        #wrap table td{
            border-bottom:1px solid #eee;
            padding-right:10px;
        }

        #wrap .first td, #wrap .second td{
            padding-left:10px;
        }

        #wrap .first{
            background:url(images/header_bg.gif) repeat-x;
            height:30px;
            line-height:30px;
            color:#fff;
        }

        #wrap .second{
            background-color:#eee;
        }

        .ruleMsg{
            color:#ccc;
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

    <script type="text/javascript">
                    function ajaxValidate() {
                        var username=$("#username").val();
                        var spanText = $("#s_username");
                        if (username == ""){
                            return;
                        }
                        $.ajax({
                            type:"POST",
                            url:"${pageContext.request.contextPath}/views/UserIsOne",//提交地址
                            data:"username="+username,//提交数据
                            dataType:"json",//返回json格式
                            success:function(str) {
                                console.log(str.flag);
                                if (!str.flag) {//后端传来的msg的值是no,不能注册。反之。
                                    spanText.html("抱歉，该用户已被注册，请更换！").css("color", "red");
                                }
                                if (str.flag) {
                                    spanText.html("用户可用").css("color", "green");

                                }
                            }
                        });

                    }


    </script>
<script type="text/javascript">
        function $(id){
            return document.getElementById(id);
        }

        function warning(obj, msg){
            obj.style.display="inline";  //""
            obj.innerHTML = msg;
            obj.style.paddingLeft="15px";
            //obj.className="warning";
            obj.style.background="url(images/check_error.gif) no-repeat 2px";
            obj.style.color="#000";
        }

        function protocol(){
            var f = $("protocol").checked;
            if(f){
                $("submit").className="button1";
                $("submit").disabled=false;
            }
            else{
                $("submit").className="button2";
                $("submit").disabled=true;
            }
        }

       $(function(){
            alert(111);
            showTime();
            protocol();
            //验证用户名
            $("username").onblur=checkUsername;
            //验证密码1
            $("pwd1").onblur=checkPwd1;
            //验证两次密码是否一致
            $("pwd2").onblur=checkPwd2;
            //验证是否同意条款
            $("protocol").onclick=protocol;


        });


        function checkUsername(){
            //只能是字母数字下划线，且第一位不能是数字
            var p = /^[a-zA-Z_]{1}\w{5,14}$/;

            if($("username").value==""){
                warning($("checkUsername"), "请输入用户名");
                $("username").focus();
                return false;
                /*}else if(!p.test($("username").value)){
                    warning($("checkUsername"), "格式不正确");
                    return false;*/
            }else{
                //$("checkUsername").style.display="none";
                $("checkUsername").style.backgroundImage="none";
                $("checkUsername").style.color="#ccc";
                $("checkUsername").innerHTML = "只能是字母数字下划线(长度6-15)";
                return true;
            }
        }

        function checkPwd1(){
            if($("pwd1").value==""){
                warning($("checkPwd1"), "请输入密码");
                return false;
            }else{
                $("checkPwd1").style.display="none";
                return true;
            }
        }
        function checkPwd2(){
            if($("pwd1").value!=$("pwd2").value){
                warning($("checkPwd2"), "两次密码不一致");
                return false;
            }else{
                $("checkPwd2").style.display="none";
                return true;
            }
        }

    </script>

</head>

<body>
<div id="header">
    <h1>短消息平台</h1>
</div>
<div id="wrap">
    短消息平台&nbsp;&raquo;&nbsp;<span class="bold">注册</span>
<!-- action跳转到user/regiset -->
    <form action="user/register" method="post">
        <table>
            <tr class="first">
                <td width="15%">注册</td>
                <td align="right"><!--<a href="rule.html">查看积分规则</a>--></td>
            </tr>
            <tr class="second">
                <td colspan="2">基本信息(*为必填项)</td>
            </tr>
            <tr>
                <td align="right">用户名*</td>
                <td>
                    <input type="text" id="username" name="uname" class="input1" placeholder="用户名只能是字母数字下划线(长度6-15)"
                    onblur="ajaxValidate()"/>
                    <span id="s_username"></span>
                    <%--<span id="checkUsername" class="ruleMsg"></span>--%>
                </td>
            </tr>
            <tr>
                <td align="right">密码*</td>
                <td><input type="password" id="pwd1" name="upass" class="input1"  placeholder="密码"
                onblur="ajaxValidate()"/>
                    <span id="checkPwd1"></span>
                </td>
            </tr>
            <tr>
                <td align="right">确认密码*</td>
                <td><input type="password" id="pwd2" class="input1"  placeholder="确认密码" onblur="ajaxValidate()"/>
                    <span id="checkPwd2"></span></td>
            </tr>
            <tr>
                <td align="right">邮箱*</td>
                <td><input type="email" id="email" name="email" class="input1"  placeholder="邮箱" onblur="ajaxValidate()"/>
                    <span id="checkEmail"></span></td>
            </tr>
            <tr>
                <td align="right">注册条款</td>
                <td><input type="checkbox" id="protocol" />&nbsp;我已阅读并接受短消息平台协议&nbsp;&nbsp;<!--<a href="">论坛用户手则</a>--></td>
            </tr>
            <tr height="50">
                <td></td>
                <td><input type="submit" value="注册" id="submits" class="button2"/>
                &nbsp;&nbsp;&nbsp;&nbsp;<a href="index.jsp">登录</a>
                </td>
            </tr>
        </table>
    </form>
</div>
<div id="footer">
    现在时间是:<span id="time"></span>
</div>
</body>
</html>

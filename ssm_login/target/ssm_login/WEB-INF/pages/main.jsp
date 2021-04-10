<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>短消息平台</title>
  <meta http-equiv="content-type" content="text/html;charset=utf-8" />
  <link href="${pageContext.request.contextPath}/style/base.css" rel="stylesheet" type="text/css" />
  <style>
	#header_menu{
		width:80%;
		height:30px;
		border:1px solid #ccc;
		margin:0px auto;
		background:url(/images/header_bg.gif) repeat-x;
		line-height:30px;
		padding:0px 20px;
	}

	#header_menu ul{
		float:right;
	}
	#header_menu ul li{
		float:left;
	}

	#header_menu ul li a{
		padding-left:9px;
		padding-right:9px;
		font-size:13px;
		color:#fff;
	}

	#header_menu ul li a:hover{
		color:yellow;
		font-weight:bold;
	}

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

	#forum_info{
		width:80%;
		margin:0px auto;
		padding:5px 20px;
		background-color:#fff;
		text-align:right;
	}
	#wrap{
		width:80%;
		background-color:#fff;
		margin:0px auto;
		line-height:30px;
		/*height:600px;  先固定，以后去掉，让内容自适应*/
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
	.input2{
		width:70px;
		height:20px;
	}

	.forum_list{
		/*background-color:#ccc;*/
		/*height:100px;*/
		width:99.5%;
		margin:0px auto;
		margin-bottom:15px;
	}

	.forum_list table{
		width:100%;
		border:1px solid #ccc;
		border-left:none;
		border-right:none;
		border-top:none;
		line-height: 30ex;
	}

	.forum_list table th, .forum_list table td{
		border-bottom:1px solid #ccc;
		padding-left:5px;
	}

	.forum_list .first_row{
		background:url(/images/box_bg.gif) repeat-x;
	}

	.forum_list .last_row td{
		border-bottom:none;
	}

	.page{
		text-align:right;
		padding-right:15px;
	}

	.page a{
		color:#819E39;
	}

	.page a:hover{
		color:#83A03C;
		font-weight:bold;
	}
 </style>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/time.js"></script>
 <script>
	window.onload=function(){
		showTime();
		/*点击TOP能回到页面顶端*/
		document.getElementById("top").onclick=function(){
			window.scrollTo(0,0);
		};
	};
 </script>
 </head>

 <body>

	<div id="header">
		<h1>短消息平台</h1>
	</div>
	<!--菜单条-->
	<div id="header_menu">
			<span style="color:#fff">欢迎您，${sessionScope.user.uname}</span>
			<ul>
				<li><a href="${pageContext.request.contextPath}/views/send"><font color="blue" size="3px">发送信息</font></a></li>
				<li><a href="${pageContext.request.contextPath}/user/loginout"><font color="#ffd700" size="3px">注销</font></a></li>
				<li><a href="${pageContext.request.contextPath}help.html"><font color="#ffe4c4" size="3px">帮助</font></a></li>
				<li><a href="${pageContext.request.contextPath}/views/passwordUpdate"><font color="fuchsia" size="3px">修改密码</font></a></li>
			</ul>
	</div>
	<!--主体部分-->
	<div id="wrap">
	短消息平台&nbsp;&raquo;&nbsp;<span class="bold">消息列表</span>
		<div class="forum_list">
			<table cellpadding="0" cellspacing="0">
				<tr class="first_row">
					<th width="5%">&nbsp;</th>
					<th width="8%" class="left">发件人</th>
					<th width="60%" align="left">主题</th>
					<th width="10%" align="left">时间</th>
					<!--<th width="20%" class="left">最后发表</th>-->
				</tr>
					<c:forEach var="mess" items="${mess}">
                        <tr>
						<td class="center"><img src="${pageContext.request.contextPath}/images/old.jpg"></td>
					<td>
							${mess.sendUser}
					</td>
					<td class="left"><a href="detail?mid=${mess.mid}">${mess.title}</a>&nbsp;<span class="gray">${mess.content}</span></td>
					<td class="left">${mess.sendTime}</td>
                </tr>
				</c:forEach>
			</table>
			<div class="page"><a href="">上一页</a>&nbsp;1/5页&nbsp;<a href="">下一页</a></div>
		</div>


	</div>

	<div id="footer">
		现在时间是:<span id="time"></span>
		<br />
		<span id="top">Top</span>
	</div>

 </body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
		/*background:url(images/menu_line.gif) no-repeat 0px 3px;*/
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
		width:83.8%;
		background-color:#fff;
		margin:0px auto;
		line-height:30px;
		height:600px;  /*先固定，以后去掉，让内容自适应*/
		/*padding:0px 20px;*/

	}

	#wrap table{
		width:100%;
	}

	/*#wrap table td{
		border-bottom:1px solid #eee;
		padding-right:10px;
	}*/

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
		line-height:30px;
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

	.msg_title{
		font-size:15px;
	}
	
	.head_msg{
		/*width:100%;*/
		background-color:#F0F0F0;
		padding-left:20px;
	}
	.head_msg table{
		border-style:none;
		line-height:25px;
	}

	.head_msg table th, .head_msg table td{
		border-style:none;
	}

	.content{
		padding-top:15px;
		padding-left:40px;
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
		<span style="color:#fff">${m.receiveUser}</span>
			<ul>
				<li><a href="${pageContext.request.contextPath}/views/send"><font color="blue" size="3px">发送信息</font></a></li>
				<li><a href="${pageContext.request.contextPath}/mess/messSel"><font color="fuchsia" size="3px">信息列表</font></a></li>
				<li><a href="${pageContext.request.contextPath}/user/loginout"><font color="#ffd700" size="3px">注销</font></a></li>
				<li><a href="${pageContext.request.contextPath}/help.html"><font color="#ffe4c4" size="3px">帮助</font></a></li>
			</ul>
	</div>
	<!--
	<div id="forum_info">
			<span>主题:0&nbsp;&nbsp;帖子:0</span><br />
			<span><input type="text" class="input2" />&nbsp;&nbsp;<img src="images/search.gif" align="absmiddle"/></span>
	</div>
	-->
	<!--主体部分-->
	<div id="wrap">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;短消息平台&nbsp;&raquo;&nbsp;<span class="bold">消息详情</span>
		<div class="head_msg">
			<table cellpadding="0" cellspacing="0">
				<tr class="first_row">
					<th colspan="2" align="left" class="msg_title">你好！</th>
				</tr>
				<tr>
				
					<td class="left" width="8%">发件人：</td>
					<td class="left">
						${m.sendUser}
						<%--<%=m.getSendUser() %>--%>
					</td>
				</tr>
				<tr>
					<td class="left">时　间：</td>
					<td>
						${m.sendTime}
						<%--<%=m.getSendTime() %>--%>
					</td>
				</tr>
				<tr>
					<td class="left">收件人：</td>
					<td>
						${m.receiveUser}
						<%--<%=m.getReceiveUser() %>--%>
					</td>
				</tr>
			</table>
		</div>
		<div class="content">${m.content}</div>
		<div class="page"><a href="${pageContext.request.contextPath}/views/reply?sendUser=${m.sendUser}">回复</a>&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/mess/removeInfo?mid=${m.mid}">删除</a></div>
		
	</div>

	<div id="footer">
		现在时间是:<span id="time"></span>
		<br />
		<span id="top">Top</span>
	</div>
 </body>
</html>

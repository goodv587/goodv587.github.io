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
		width:80%;
		background-color:#fff;
		margin:0px auto;
		line-height:30px;
		height:600px;  /*先固定，以后去掉，让内容自适应*/
		padding:0px 20px;
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
		padding-top:3px;
	}

	.forum_list table{
		width:100%;
		/*border:1px solid #ccc;*/
		border-left:none;
		border-right:none;
		border-top:none;
		line-height:30px;
	}

	.forum_list table th, .forum_list table td{
		/*border-bottom:1px solid #ccc;*/
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
				<li><a href="${pageContext.request.contextPath}/mess/messSel">信息列表</a></li>
				<li><a href="${pageContext.request.contextPath}/user/loginout">注销</a></li>
				<li><a href="help.html">帮助</a></li>
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
	短消息平台&nbsp;&raquo;&nbsp;<span class="bold">发送消息</span>
		<div class="forum_list">
			<form action="${pageContext.request.contextPath}/mess/sendSucc" method="post">
			<table cellpadding="0" cellspacing="0">
                <tr height="40px">
                    <td class="center">用户名：</td>
                    <td>
                        <input type="text" name="sendUser" value="${sessionScope.user.uname}" readonly="true">
                    </td>
                </tr>
				<tr height="40px">
					<td class="center">发送给：</td>
					<td>
						<input type="text" name="receiveUser" class="input1" value="${sendUser}" readonly="true" />
					</td>	
				</tr>
				<tr height="40px">
					<td class="center">主　题：</td>
					<td>
						<input type="text" name="title" class="input1" />
					</td>
				</tr>

				<tr height="40px">
					<td class="center">内　容：</td>
					<td>
						<textarea name="content" rows="8" cols="70" class="textarea"> </textarea>
					</td>
				</tr>

				<tr height="45px">
					<td class="center" colspan="2">
						<input type="submit" value="　发　送　" class="button1"/>
					</td>
					
				</tr>
			</table>
			</form>
		</div>

		
	</div>

	<div id="footer">
		现在时间是:<span id="time"></span>
		<br />
		<span id="top">Top</span>
	</div>
 </body>
</html>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 
<!-- Head -->

<head>

<title>登录注册</title>

<!-- Meta-Tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>

<!-- //Meta-Tags -->
<!-- Style -->
<link rel="stylesheet" href="../css/style.css" type="text/css"
	media="all">



</head>
<!-- //Head -->

<!-- Body -->

<body>

	<h1>登录注册</h1>

	<div class="container w3layouts agileits">

		<div class="login w3layouts agileits">
			<h2>登 录</h2>
			<form action="<%=request.getContextPath()%>/user/login.do"
				method="post">
				<input type="text" name="username" placeholder="用户名" id="code" onblur="check_code()"> 
				<input type="password" name="userpwd" placeholder="密码" id="pwd" onblur="check_pwd()">

				<ul class="tick w3layouts agileits">
					<!-- <li><input type="checkbox" id="brand1" value=""> <label
						for="brand1"> <span></span>记住我
					</label></li> -->
				</ul>
				<div class="send-button w3layouts agileits">
					<input type="submit" value="登 录" >

				</div>
			</form>
			<div class="social-icons w3layouts agileits">
				<p>- 其他方式登录 -</p>
				<ul>
					<li class="qq"><a href="#"> <span
							class="icons w3layouts agileits"></span> <span
							class="text w3layouts agileits">QQ</span>
					</a></li>
					<li class="weixin w3ls"><a href="#"> <span
							class="icons w3layouts"></span> <span
							class="text w3layouts agileits">微信</span>
					</a></li>
					<li class="weibo aits"><a href="#"> <span
							class="icons agileits"></span> <span
							class="text w3layouts agileits">微博</span>
					</a></li>
					<div class="clear"></div>
				</ul>
			</div>
			<div class="clear"></div>
		</div>


		<div class="copyrights"></div>


		<div class="register w3layouts agileits">
			<h2>注 册</h2>
			<form action="<%=request.getContextPath()%>/user/join.do"
				method="post">
				<input type="text"  name="username" placeholder="用户名"> 
				<input type="text" id="regemail" name="useremail" placeholder="邮箱"> 
				<div id="maillist" style="display: none;">
  <h3>请选择邮箱类型</h3>
  <ul>
    <li class="on"></li>
    <li style="color:white">@qq.com</li>
    <li style="color:white">@163.com</li>
    <li style="color:white">@126.com</li>
    <li style="color:white">@sina.com</li>
    <li style="color:white">@hotmail.com</li>
    <li style="color:white">@yahoo.com.cn</li>
    <li style="color:white">@sohu.com</li>
    <li style="color:white">@yahoo.cn</li>
    <li style="color:white">@gmail.com</li>
    <li style="color:white">@tom.com</li>
  </ul>
</div>
				<span id="pass"> 
				<input type="password" id="userpwd" name="userpwd" placeholder="密码" onblur="p()"> 
				<!-- <script>
					function p() {
						var pw1;
						pw1 = document.getElementById("userpwd").value;
						if(pw1.length<5){
							alert('密码');
						}
					}
			
				</script> -->
			</span> 
				<input TYPE="checkbox" id="showPass" 
onclick="
var temp=document.getElementById('userpwd').value;
if(this.checked){
document.getElementById('pass').innerHTML='<input type=text id=userpwd name=userpwd>';
}
else
{
document.getElementById('pass').innerHTML='<input type=password id=userpwd name=userpwd>';
} 
document.getElementById('userpwd').value=temp;
">
				  <input type="password" id="userpwd2" name="userpwd2" placeholder="确认密码" onblur="password()">
				<script> 
				function password(){
var pas1,pas2;
pas1=document.getElementById("userpwd").value;
pas2=document.getElementById("userpwd2").value;
if(pas1.length<8){
alert("密码必须大于8位，请重新输入！");
return;
}
if(!(pas1==pas2 && pas2!='')){
alert("两次输入的密码不一致，请重新输入！");
return;
}
}</script>   
				<input type="text" name="userphone" placeholder="手机号码" onblur="tel()" id="usertel">
				<script>
				function tel() {
					var tel;
					tel = document.getElementById("usertel").value;
					if(tel.length!=11){
						alert('手机号不符合要求');
					}
				}
				</script>
				<div class="send-button w3layouts agileits">

					<input type="submit" value="免费注册" onclick="return checkEmail">
			</form>
		</div>
		<div class="clear"></div>
	</div>

	<div class="clear"></div>

	</div>



</body>



<script type="text/javascript">
    function $$(id){
		return document.getElementById(id);
	}
	var lists;
	var len;
	window.onload=function(){
		var objtxt=$$("regemail");
		var objlist=$$("maillist");

        lists=objlist.getElementsByTagName("li");
        len=lists.length;

        //给每个li绑定一个鼠标的点击事件
        for(var i=1;i<len;i++){
            lists[i].onmousedown=function(){
                objtxt.value=this.textContent;
                objlist.style.display="none";
            }
        }

        //计算这个层的显示位置
        objtxt.onfocus=function(){
            objlist.style.display="block";
        }
        objtxt.onblur=function(){
            objlist.style.display="none";
        }

        //当松开键盘的按键的时候
        objtxt.onkeyup=function(){
            //获取文本框中的值
            var txt=this.value;
            var flag="";
            if(txt.indexOf("@")>0){
                flag=txt.substring(txt.indexOf("@")-1);//获取的输入的@开始的内容
                txt=txt.substring(0,txt.indexOf("@"));
            }else{
                flag="";
            }
            var val="";
            //将这个值放到所有的li前面
            for(var i=1; i<len; i++){
                val=lists[i].textContent;
                val=val.substring(val.indexOf("@"));
                lists[i].textContent=txt+val;
            }

            //如果用户输入了@，则检查哪些是满足条件的
            if(flag!=""){
                var reg=new RegExp(flag,"i");
                for(var i=1;i<len;i++){
                    if(reg.test(lists[i].textContent)){
                        lists[i].style.display="block";
                    }else{
                        lists[i].style.display="none";
                    }
                }
            }
        }
    }
</script>

</html>
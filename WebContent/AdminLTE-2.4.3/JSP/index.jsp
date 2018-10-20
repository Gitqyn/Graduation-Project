<%@page import="Adminservlet.NoticeServlet"%>
<%@page import="Admindmain.Notice"%>
<%@page import="java.util.List"%>
<%@page import="dmain.Category"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="utf-8" />
    <title>山东工商学院社团</title>
    <link rel="stylesheet" type="text/css" href="../AdminLTE-2.4.3/css/index.css">
</head>

<body>

    <div class="header">
    
        <div class="top-bar warpper clearfix">
            <ul class="left-menu clearfix">
                <li>您好，欢迎 &nbsp <%=request.getSession().getAttribute("a")%> &nbsp 来到山商社团！</li>
                <li>
                    
                </li>
                
            </ul>
            <ul class="right-menu clearfix">
            
            	<li><a href="<%=request.getContextPath() %>/AdminLTE-2.4.3/JSP/login.jsp">注销</a></li>
               <li>|</li>
                <li>
                    <a href="<%=request.getContextPath() %>/AdminLTE-2.4.3/JSP/wode.jsp">我的社团</a>
                </li>
                <li>|</li>
                <li>
                    <a href="<%=request.getContextPath() %>/user/index.do">首页</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="main-center warpper clearfix">
        <div class="logo ">
            <a href="">
                <img src="../AdminLTE-2.4.3/images/logo.jpg" alt="" >
                
            </a>
        </div>
        <div>
            <div id="ss clearfix">
           <form action="<%=request.getContextPath()%>/user/sou.do"
				method="post"> 
                <input type="text" placeholder="社团名称" class="textsousuo " name="sou" id="s" >
                <input type="submit" class="sousuo " value="搜索" >
	</form>
            </div>
            
            <br>
            <div class="hot">
                <span>热门搜索：</span>
                <a href="<%=request.getContextPath() %>/AdminLTE-2.4.3/JSP/fengcai.jsp">飞扬卡耐基</a>
                <a href="<%=request.getContextPath() %>/AdminLTE-2.4.3/JSP/fengcai.jsp">ERP</a>
                <a href="<%=request.getContextPath() %>/AdminLTE-2.4.3/JSP/fengcai.jsp">职业发展协会</a>
                <a href="<%=request.getContextPath() %>/AdminLTE-2.4.3/JSP/fengcai.jsp">疯狂英语俱乐部</a>
            </div>


        </div>
       
    </div>
    <div class="footer warpper clearfix">
        <ul>
            <li class="fenlei">
                <div>社团分类</div>
            </li>
            <li>
                <a href="<%=request.getContextPath() %>/user/index.do">首页</a>
            </li>
            <li>
                <a href="<%=request.getContextPath() %>/AdminLTE-2.4.3/JSP/kuaixun.jsp">社团快讯</a>
            </li>
            <li>
                <a href="<%=request.getContextPath() %>/AdminLTE-2.4.3/JSP/fengcai.jsp">社团风采</a>
            </li>
            
            <li class="a_hot2">
                <a href="<%=request.getContextPath() %>/AdminLTE-2.4.3/JSP/zhidu.jsp">规章制度
                    <i class="m_hot"></i>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath() %>/AdminLTE-2.4.3/JSP/shenqing.jsp">申请社团</a>
            </li>
            <div class="app">
                <a href="">
                    <img src="http://www.sinotruko2o.com/upload/images/2015/10/23/763eb719807a46f4a5c4f62435eee59b.png" alt="" style="padding:5px;">
                    <span id="app">App下载</span>
                </a>
            </div>
        </ul>
    </div>
    

    
    <div class="b ">
        <div class="main warpper">
            <div class="menu ">
                <ul >
               
               <%
               List<Category> categorys = (List<Category>)request.getAttribute("s");
               for(Category c:categorys){
               %>  
               
                    <li class="l_hot01">
                        <a href=""><%=c.getCategoryname() %>   
                        </a>
                    </li>
               <%}%>
               
                </ul>
            </div>

            <div class="ad">
                 <style type="text/css">
                    
                        #demo { overflow:hidden;
                        background: #FFF;
                        overflow:hidden;
                        /* border: 1px dashed #CCC; */
                        width: 730px;
                        
                        }
                        #demo img {
                        border: 0px solid #F2F2F2;
                        
                        height:400px;
                        }
                        #indemo {
                        float: left;
                        width: 800%;
                        }
                        #demo1 {
                        float: left;
                        }
                        #demo2 {
                        float: left;
                        }
</style>
                        <div id="demo">
                        <div id="indemo">
                        <div id="demo1">
                       <img src="../AdminLTE-2.4.3/images/banner2.jpg"/>
                       <img src="../AdminLTE-2.4.3/images/banner1.jpg"/>
                       
                       </div>
                        <div id="demo2"></div>
                        </div>
                        </div>
    <script>
                        
                        var speed=10; //数字越大速度越慢
                        var tab=document.getElementById("demo");
                        var tab1=document.getElementById("demo1");
                        var tab2=document.getElementById("demo2");
                        tab2.innerHTML=tab1.innerHTML;
                        function Marquee(){
                        if(tab2.offsetWidth-tab.scrollLeft<=0)
                        tab.scrollLeft-=tab1.offsetWidth
                        else{
                        tab.scrollLeft++;
                        }
                        }
                        var MyMar=setInterval(Marquee,speed);
                        tab.onmouseover=function() {clearInterval(MyMar)};
                        tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)};
                        
                        </script>
            </div>

            <div class="date">
                <span class="year-month">2018
                    <br>6</span>
                <span class="day">1</span>
                <div class="gg">
                    <span>
                        <span>平台最新</span>
                        <br>
                        <span style="font-size: 20px;font-weight: bold;">公告</span>
                        <span>news</span>
                    </span>
                </div>
            </div>
            <div class="gonggao-list">
                <ul>
                    <li>
                        <a href="">
                            <i>1</i>关于山商学生社团联合会二级部门学生干部换届相关事项的通知</a>
                    </li>
                    <li>
                        <a href="" class="li-color">
                            <i>2</i>山商2017-2018学年学生社团单项奖评选结果公示</a>
                    </li>
                    <li>
                        <a href="">
                            <i>3</i>2017年3月学术型社团变更信息通知</a>
                    </li>
                    <li>
                        <a href="" class="li-color">
                            <i>4</i>关于山东工商学院学生社团精品项目申报的通知</a>
                    </li>
                    <li>
                        <a href="">
                            <i>5</i>2017年9月份院级学生社团成立审批结果公示</a>
                    </li>
                    <li>
                        <a href="" class="li-color">
                            <i>6</i>关于开展2017-2018学年山商学生社团注册工作的通知</a>
                    </li>
                    <li>
                        <a href="">
                            <i>7</i>关于五一劳动节放假期间学生社团相关工作的通知</a>
                    </li>
                </ul>
            </div>
        </div>
      
     
     
       
        <div class="y-main warpper clearfix">
            <div class="ycbd">
                <a href="">社团快讯</a>
            </div>
            <div class="y-bg">
                <div class="left l clearfix">
                    <div class="jsjq clearfix">
                        <span>
                            <a href="">活动预告</a>
                        </span>
                        <a href="" class="more">MORE+</a>
                    </div>
                    <div>
                        <ul>
                            <li class="clearfix">
                                <a href="" class="l">
                                    <img src="../AdminLTE-2.4.3/images/huodong1.jpg" alt="">
                                </a>
                                <div>
                                    <h2>
                                        <a href="">学校举行2018年度目标管理责任书签订仪式</a>
                                    </h2>
                                </div>
                            </li>
                            <li class="clearfix">
                                <a href="" class="l">
                                    <img src="../AdminLTE-2.4.3/images/huodong2.jpg" alt="">
                                </a>
                                <div>
                                    <h2>
                                        <a href="">省教育厅科技处来我校调研</a>
                                    </h2>
                            
                                </div>
                            </li>
                            <li class="clearfix">
                                <a href="" class="l">
                                    <img src="../AdminLTE-2.4.3/images/huodong3.jpg" alt="">
                                </a>
                                <div>
                                    <h2>
                                        <a href="">学校召开校园安全稳定工作会议</a>
                                    </h2>
                                    

                                </div>
                            </li>

                        </ul>
                    </div>

                </div>
                <div class="center l clearfix">
                    <div class="byxd ">
                        <span>
                            <a href="">社团新闻</a>
                        </span>
                        <a href="" class="more">MORE+</a>
                    </div>
                    <div>
                    <ul>
                            <li>
                                <a href="">
                                    <span>2018.04.12</span>九三学社烟台市委主委一行来校调研走访。</a>
                            </li>
                            <li>
                                <a href="">
                                    <span>2018.03.19</span>九三学社烟台市委主委一行来校调研走访。</a>
                            </li>
                            <li>
                                <a href="">
                                    <span>2018.03.19</span>九三学社烟台市委主委一行来校调研走访。</a>
                            </li>
                            <li>
                                <a href="">
                                    <span>2018.03.19</span>九三学社烟台市委主委一行来校调研走访。</a>
                            </li>
                            <li>
                                <a href="">
                                    <span>2018.03.19</span>九三学社烟台市委主委一行来校调研走访。</a>
                            </li>
                            <li>
                                <a href="">
                                    <span>2018.03.19</span>九三学社烟台市委主委一行来校调研走访。</a>
                            </li>
                            <li>
                                <a href="">
                                    <span>2018.03.19</span>九三学社烟台市委主委一行来校调研走访。</a>
                            </li>
                            <li>
                                <a href="">
                                    <span>2018.03.19</span>九三学社烟台市委主委一行来校调研走访。</a>
                            </li>
                        </ul>
                       
                    </div>
                </div>
                <div class="right l clearfix">
                    <div class="cjgz ">
                        <span>
                            <a href="">社团微视</a>
                        </span>
                        <a href="" class="more">MORE+</a>
                    </div>
                    <div class="weishi">
                        
                        <h2>
                            <a href="">视频播放区</a>
                        </h2>
                    </div>
                <div class="weishi">
                
                    <h2>
                        <a href="">视频播放区</a>
                    </h2>
                </div>
                </div>

            </div>
        </div>
        <div class="main-ed">
        </div>
    </div>
   
    <div class="foot clearfix">
        <div class="warpper">
            <div class="list">
                <dl>
                    <dt>
                        <a href="">校内链接</a>
                    </dt>
                    <dd>
                        <a href="">数字山商</a>
                    </dd>
                    <dd>
                        <a href="">VPN系统</a>
                    </dd>
                    <dd>
                        <a href="">图书馆</a>
                    </dd>
                    <dd>
                        <a href="">校友天地</a>
                    </dd>
                </dl>
                <dl>
                    <dt>
                        <a href="">友情链接</a>
                    </dt>
                    <dd>
                        <a href="">韶华网</a>
                    </dd>
                    <dd>
                        <a href="">商学实验中心</a>
                    </dd>
                    <dd>
                        <a href="">计算机中心</a>
                    </dd>
                    <dd>
                        <a href="">电子校报</a>
                    </dd>
                </dl>
               
               
                <dl>
                    <dt class="d5">
                        <a href="">关于我们</a>
                    </dt>
                    <dd>
                        <a href="">加入我们</a>
                    </dd>
                    <dd>
                        <a href="">联系我们</a>
                    </dd>
                    <dd>
                        <a href="">在线客服</a>
                    </dd>

                </dl>
               
            </div>
            
            <div class="other">
                <div>客户服务中心</div>
                <div class="tel">****-***-****</div>
                <div>
                    <a href="">
                        <img src="http://www.sinotruko2o.com/resources/web/img/share_ico.png" alt="">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="side-bar">
        <ul>
            
            <li class="li02">
                <a href="">
                    <i></i>
                    <span>快捷
                        <br>申请
                    </span>
                </a>
            </li>
            <li class="li03">
                <a href="">
                    <i></i>
                    <span>预约<br>服务</span>
                </a>
            </li>
            <li class="li04">
                <a href="">
                    <i></i>
                    <span>意见<br>反馈</span>
                </a>
            </li>
            <li class="li05">
                <a href="">
                    <i></i>
                    <span>客服</span>
                </a>
            </li>
            <li class="li06">
                <a href="">
                    <img src="../AdminLTE-2.4.3/images/gotop.gif" alt="">
                </a>
            </li>
        </ul>
    </div>

</body>

</html>
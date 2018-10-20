<%@page import="Admindmain.Notice"%>
<%@page import="Adminservlet.NoticeServlet"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>山东工商学院社团</title>
    <link rel="stylesheet" type="text/css" href="../css/index.css">
</head>

<body>
    <div class="header">
        <div class="top-bar warpper clearfix">
            <ul class="left-menu clearfix">
                <li>您好，欢迎&nbsp <%=request.getSession().getAttribute("a")%> &nbsp 来到飞扬卡耐基！</li>
               
            </ul>
            <ul class="right-menu clearfix">

                <li>
                    <a href="">飞扬卡耐基 </a>
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
                <img src="../images/logo.jpg" alt="">

            </a>
        </div>
        <div>
            <div id="ss clearfix">
                <input type="text" placeholder="社团名称" class="textsousuo ">
                <input type="button" class="sousuo " value="搜索">


            </div>

            <br>
            <div class="hot">
                <span>热门搜索：</span>
                <a href="fengcai.html">飞扬卡耐基</a>
                <a href="fengcai.html">ERP</a>
                <a href="fengcai.html">职业发展协会</a>
                <a href="fengcai.html">疯狂英语俱乐部</a>
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
                <a href="kuaixun.jsp">社团快讯</a>
            </li>
            <li>
                <a href="fengcai.jsp">社团风采</a>
            </li>
           
            <li class="a_hot2">
                <a href="zhidu.jsp">规章制度
                    <i class="m_hot"></i>
                </a>
            </li>
            <li>
                <a href="shenqing.jsp">申请社团</a>
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
                                    <img src="../images/huodong1.jpg" alt="">
                                </a>
                                <div>
                                    <h2>
                                        <a href="">学校举行2018年度目标管理责任书签订仪式</a>
                                    </h2>
                                </div>
                            </li>
                            <li class="clearfix">
                                <a href="" class="l">
                                    <img src="../images/huodong2.jpg" alt="">
                                </a>
                                <div>
                                    <h2>
                                        <a href="">省教育厅科技处来我校调研</a>
                                    </h2>

                                </div>
                            </li>
                            <li class="clearfix">
                                <a href="" class="l">
                                    <img src="../images/huodong3.jpg" alt="">
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
                            
                                    <%NoticeServlet notice=new NoticeServlet();
                                    	for(Notice shownotice:notice.shownotice()){%>
                                    	<li>
                                <a href="">	
                                    	<%=shownotice.getNoticemain() %>
                                    
                                   </a>
                            </li>
                           
                            <% }%>
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
                    <span>预约
                        <br>服务</span>
                </a>
            </li>
            <li class="li04">
                <a href="">
                    <i></i>
                    <span>意见
                        <br>反馈</span>
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
                    <img src="../images/gotop.gif" alt="">
                </a>
            </li>
        </ul>
    </div>

</body>

</html>
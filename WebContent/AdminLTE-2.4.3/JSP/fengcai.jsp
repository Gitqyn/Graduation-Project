<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>社团风采</title>
    <link rel="stylesheet" type="text/css" href="../css/fengcai.css">
</head>

<body>
    <div class="header">
        <div class="top-bar warpper clearfix">
            <ul class="left-menu clearfix">
                <li>您好，欢迎 &nbsp <%=request.getSession().getAttribute("a")%> &nbsp来到山商社团！</li>
                
            </ul>
            <ul class="right-menu clearfix">

                <li>
                    <a href="">我的社团</a>
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
                <a href="wode.jsp">飞扬卡耐基</a>
                <a href="">ERP</a>
                <a href="">职业发展协会</a>
                <a href="">疯狂英语俱乐部</a>
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
                <a href="">社团风采</a>
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


<div class="choose warpper clearfix">
    <div class="choose_top">社团分类</div>
    <div class="choose_bar clearfix">
        <div class="tit l">专业学术类：</div>
   
        <div class="cats l clearfix">
            <div class="cats_top ">

                <span class="cat_item" data-type="brand" data-id="149"><a href="wode.jsp">飞扬卡耐基</a></span>

                <span class="cat_item" data-type="brand" data-id="146"><a href="">ERP</a></span>

                <span class="cat_item" data-type="brand" data-id="147"><a href="">海天调研协会</a></span>

                <span class="cat_item" data-type="brand" data-id="148"><a href="">开源软件俱乐部</a></span>

            </div>
            <div class="cats_btm clearfix">

            </div>
        </div>
    </div>

    <div class="choose_bar clearfix">
        <div class="tit l">艺术兴趣类：</div>
     
        <div class="cats l clearfix">

            <span class="cat_item" data-type="field" data-id="135"><a href="">冲浪口才协会</a></span>

            <span class="cat_item" data-type="field" data-id="136"><a href="">艺海书画协会</a></span>

            <span class="cat_item" data-type="field" data-id="137"><a href="">经典修读社</a></span>

            <span class="cat_item" data-type="field" data-id="138"><a href="">魔方协会</a></span>

            <span class="cat_item" data-type="field" data-id="139"><a href="">魔法社</a></span>

            <span class="cat_item" data-type="field" data-id="140"><a href="">X动漫协会</a></span>

            <span class="cat_item" data-type="field" data-id="141"><a href="">SEASON话剧社</a></span>

            <span class="cat_item" data-type="field" data-id="142"><a href="">书华读书社</a></span>

           


        </div>
    </div>

    <div class="choose_bar clearfix">
        <div class="tit l">体育健身类：</div>
      
        <div class="cats l clearfix">

            <span class="cat_item" data-type="cat" data-id="112"><a href="">羽毛球协会</a></span>

            <span class="cat_item" data-type="cat" data-id="113"><a href="">网球协会</a></span>

            <span class="cat_item" data-type="cat" data-id="114"><a href="">轮滑协会</a></span>

            <span class="cat_item" data-type="cat" data-id="115"><a href="">乒乓球协会</a></span>

            <span class="cat_item" data-type="cat" data-id="116"><a href="">梅花桩协会</a></span>

            <span class="cat_item" data-type="cat" data-id="117"><a href="">台球协会</a></span>

            <span class="cat_item" data-type="cat" data-id="118"><a href="">跆拳道协会</a></span>


        </div>
    </div>


    <div class="choose_bar clearfix">
        <div class="tit l" data-id="11">公益服务类：</div>
     
        <div class="cats l clearfix">

            <span class="cat_item" data-type="11" data-id="62"><a href="">001调查分析社</a></span>

            <span class="cat_item" data-type="11" data-id="63"><a href="">爱心社</a></span>

            <span class="cat_item" data-type="11" data-id="64"><a href="">环保协会</a></span>

         
        </div>
    </div>

    <div class="choose_bar clearfix">
        <div class="tit l" data-id="12">中外联合类：</div>
       
        <div class="cats l clearfix">

            <span class="cat_item" data-type="12" data-id="66"><a href="">外事友好交流协会</a></span>

            <span class="cat_item" data-type="12" data-id="67"><a href="">中韩联谊社</a></span>

            <span class="cat_item" data-type="12" data-id="68"><a href="">樱花日语协会</a></span>

            <span class="cat_item" data-type="12" data-id="69"><a href="">疯狂英语俱乐部</a></span>

            <span class="cat_item" data-type="12" data-id="70"><a href="">外文电影协会</a></span>

       

        </div>
    </div>

    <div class="choose_bar clearfix">
        <div class="tit l" data-id="13">职业素养类：</div>
       
        <div class="cats l clearfix">

            <span class="cat_item" data-type="13" data-id="73"><a href="">电子商务协会</a></span>

            <span class="cat_item" data-type="13" data-id="74"><a href="">公关协会</a></span>

            <span class="cat_item" data-type="13" data-id="75"><a href="">职业发展协会</a></span>

        </div>
    </div>

    <div class="choose_bar clearfix">
        <div class="tit l" data-id="14">军事政治类：</div>
        
        <div class="cats l clearfix">

            <span class="cat_item" data-type="14" data-id="76"><a href="">爱国社</a></span>

            <span class="cat_item" data-type="14" data-id="77"><a href="">邓小平理论研究协会</a></span>

            <span class="cat_item" data-type="14" data-id="325"><a href="">军野</a></span>

        </div>
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
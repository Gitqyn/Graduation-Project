<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>社团申请</title>
    <link rel="stylesheet" type="text/css" href="../css/shenqing.css">
    <link rel="stylesheet" href="../bower_components/bootstrap/dist/css/bootstrap.min.css">
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
                <a href="">飞扬卡耐基</a>
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




    <div class="center warpper clearfix">


        <form class="form-horizontal" action="<%=request.getContextPath() %>/user/apply.do" method="post">
            <div class="box-body">
                <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 control-label">社团名称</label>

                    <div class="col-sm-3">
                        <input type="text" class="form-control" name="sname" placeholder="" data-form-un="1522137064814.0042" id="apply1">
                    </div>
                </div>
                <div class="form-group">
                    <label for="sel" class="col-sm-2 control-label">社团类型</label>

                    <div class="col-sm-3">
                        <select name="stype" id="" class="form-control">
                            <option value="专业学术类">专业学术类</option>
                            <option value="艺术兴趣类">艺术兴趣类</option>
                            <option value="体育健身类">体育健身类</option>
                            <option value="公益服务类">公益服务类</option>
                            <option value="中外联合类">中外联合类</option>
                            <option value="职业素养类">职业素养类</option>
                            <option value="军事政治类">军事政治类</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label for="" class="col-sm-2 control-label">申请人姓名</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" name="pname" id="apply2">
                    </div>
                </div>
                <div class="form-group">
                    <label for="" class="col-sm-2 control-label">申请人联系方式</label>
                    <div class="col-sm-3">
                        <input type="text" class="form-control" name="ptel" id="apply3">
                    </div>
                </div>
                
            </div>
            <div class="form-group">
                <label for="" class="col-sm-2 control-label">备注</label>
                <div class="col-sm-3">
                    <textarea name="beizhu" id="apply4" cols="30" rows="2"></textarea>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-2">
                    <button type="submit" class="btn btn-primary" style="margin-left:200px;margin-bottom:10px;" >提交申请</button>
                    
                </div>
            </div>
        </form>
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
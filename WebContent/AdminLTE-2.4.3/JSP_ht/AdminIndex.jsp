
<%@page import="Adminservers.ApplyServers"%>
<%@page import="Admindmain.Apply"%>

<%@page import="java.util.List"%>
<%@page import="AdminDao.ApplyDao"%>
<%@page import="Adminservlet.ApplyServlet"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>后台管理</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="../bower_components/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="../bower_components/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="../bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="../dist/css/skins/skin-blue.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->

<body class="hold-transition skin-blue sidebar-mini">
  <div class="wrapper">
    <header class="main-header">

      <!-- Logo -->
      <a href="index2.html" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini">社团后台</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg">山商社团后台管理</span>
      </a>

      <!-- Header Navbar -->
      <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
          <span class="sr-only">Toggle navigation</span>
        </a>
        <!-- Navbar Right Menu -->
        
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- User Account Menu -->
          <li class="dropdown user user-menu">
            <!-- Menu Toggle Button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <!-- The user image in the navbar-->
              <img src="../dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <!-- hidden-xs hides the username on small devices so only the image appears. -->
              <span class="hidden-xs"><%=request.getSession().getAttribute("b")%> </span>
            </a>
            <ul class="dropdown-menu">
              <!-- The user image in the menu -->
              <li class="user-header">
                <img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                <p>
                  <%=request.getSession().getAttribute("b")%> 
                
                </p>
              </li>


              <!-- Menu Footer-->
<script>
<%-- function quit()
{
	alert('确认注销')        
	<%
	session.removeAttribute("b");
	
	%>
} --%>
</script>
              <li class="user-footer">
             
                <div class="pull-right">
                  <a href="AdminLogin.jsp" name="quit" class="btn btn-default btn-flat" onclick="quit()">注销</a>
                </div>

              </li>
            </ul>
          </li>
          
          
        </ul>
      </div>
        
        
      </nav>
      
      
      
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">

      <!-- sidebar: style can be found in sidebar.less -->
      <section class="sidebar">

        <!-- Sidebar user panel (optional) -->
        <div class="user-panel">
          <div class="pull-left image">
            <img src="../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
          </div>
          <div class="pull-left info">
            <p> <%=request.getSession().getAttribute("b")%> </p>
            <!-- Status -->
            <a href="#">
              <i class="fa fa-circle text-success"></i> 在线</a>
          </div>
        </div>

        <!-- search form (Optional) -->
        <!-- /.search form -->

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu" data-widget="tree">
          <li class="header">HEADER</li>
          <!-- Optionally, you can add icons to the links -->
          <li class="active">
            <a href="AdminIndex.jsp">
              <i class="fa fa-link"></i>
              <span>社团申请</span>
            </a>
          </li>
          <li>
            <a href="AdminMember.jsp">
              <i class="fa fa-link"></i>
              <span>成员管理</span>
            </a>
          </li>
          <li class="treeview">
            <a href="#">
              <i class="fa fa-link"></i>
              <span>公告管理</span>
            </a>
            <ul class="treeview-menu">
            <li><a href="Adminf.jsp">发布公告</a></li>
            <li><a href="Admind.jsp">删除公告</a></li>
          </ul>
          </li>
        </ul>
        <!-- /.sidebar-menu -->
      </section>
      <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          <strong>社团申请</strong>
        </h1>
        <ol class="breadcrumb">
          <li>
            <a href="#">
              <i class="fa fa-dashboard"></i> 首页</a>
          </li>
          <li class="active">社团申请</li>
        </ol>
      </section>

      <!-- Main content -->
      <section class="content container-fluid">
        <div class="box">
          <div class="box-header">
            <h3 class="box-title">申请列表</h3>
          </div>
          <!-- /.box-header -->
          <div class="box-body">
            <div id="example2_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
              <div class="row">
                <div class="col-sm-6"></div>
                <div class="col-sm-6"></div>
              </div>
              <div class="row">
                <div class="col-sm-12">
                  <table id="example2" class="table table-bordered table-hover dataTable" role="grid" aria-describedby="example2_info">
                    <thead>
                      <tr role="row">
                        <th class="sorting_asc" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Rendering engine: activate to sort column descending">申请社团</th>
                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending">社团类型</th>
                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending">申请人</th>
                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending">联系方式</th>
                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending">备注</th>
                        <th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending">操作</th>
                      </tr>
                    </thead>
                    <style>
                      tbody .btn-group .btn-default{
                        border: 1px;
                        
                      }
                      tbody ._1  .s:focus{
                        background-color: red;
                      }
                      tbody ._2  .r:focus{
                        background-color: red;
                      }
                    </style>
                    
                    
                    
                    
                    
                    
                    <tbody>
                      
                      <tr role="row" class="odd" id="test">
                      <%ApplyServlet apply=new ApplyServlet();
                      		
                      		for(Apply applya:apply.checkapply()){
                      %>
                        <td class="sorting_1"><%=applya.getSname() %></td>
                        <td><%=applya.getStype() %></td>
                        <td><%=applya.getPname() %></td>
                        <td><%=applya.getPtel() %></td>
                        <td><%=applya.getBeizhu() %></td>
 <script>
 function fun(){
	 alert('通过')
 }
 </script>
                        <td>
                        <form class="form-horizontal" action="<%=request.getContextPath()%>/user/adminapply.do" method="post">
						    <div class="btn-group _2" role="group" aria-label="...">
						        <button type="submit" class="btn btn-default " name="tongguo" onclick="fun()" value="<%=applya.getApplyid()%>">通过</button>
						        <button type="submit" class="btn btn-default " name="applyid" value="<%=applya.getApplyid() %>" onclick="alert('拒绝成功')">拒绝</button>
                            </div>
						</from>
                       </td>
                      </tr>
                     <%} %>
                    
                    </tbody>
                 
                  </table>
                </div>
              </div>
              <div class="row">
                <div class="col-sm-5">
                  <div class="dataTables_info" id="example2_info" role="status" aria-live="polite">Showing 1 to 10 </div>
                </div>
                <div class="col-sm-7">
                  <div class="dataTables_paginate paging_simple_numbers" id="example2_paginate">
                    <ul class="pagination">
                      <li class="paginate_button previous disabled" id="example2_previous">
                        <a href="#" aria-controls="example2" data-dt-idx="0" tabindex="0">Previous</a>
                      </li>
                      <li class="paginate_button active">
                        <a href="#" aria-controls="example2" data-dt-idx="1" tabindex="0">1</a>
                      </li>
                      <li class="paginate_button ">
                        <a href="#" aria-controls="example2" data-dt-idx="2" tabindex="0">2</a>
                      </li>
                      <li class="paginate_button ">
                        <a href="#" aria-controls="example2" data-dt-idx="3" tabindex="0">3</a>
                      </li>
                      <li class="paginate_button ">
                        <a href="#" aria-controls="example2" data-dt-idx="4" tabindex="0">4</a>
                      </li>
                      <li class="paginate_button ">
                        <a href="#" aria-controls="example2" data-dt-idx="5" tabindex="0">5</a>
                      </li>
                      <li class="paginate_button ">
                        <a href="#" aria-controls="example2" data-dt-idx="6" tabindex="0">6</a>
                      </li>
                      <li class="paginate_button next" id="example2_next">
                        <a href="#" aria-controls="example2" data-dt-idx="7" tabindex="0">Next</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- /.box-body -->
        </div>

      </section>
      <!-- /.content -->
    </div>



    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
      <!-- Create the tabs -->
      <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
        <li class="active">
          <a href="#control-sidebar-home-tab" data-toggle="tab">
            <i class="fa fa-home"></i>
          </a>
        </li>
        <li>
          <a href="#control-sidebar-settings-tab" data-toggle="tab">
            <i class="fa fa-gears"></i>
          </a>
        </li>
      </ul>
      <!-- Tab panes -->
      <div class="tab-content">
        <!-- Home tab content -->
        <div class="tab-pane active" id="control-sidebar-home-tab">
          <h3 class="control-sidebar-heading">Recent Activity</h3>
          <ul class="control-sidebar-menu">
            <li>
              <a href="javascript:;">
                <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                <div class="menu-info">
                  <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                  <p>Will be 23 on April 24th</p>
                </div>
              </a>
            </li>
          </ul>
          <!-- /.control-sidebar-menu -->

          <h3 class="control-sidebar-heading">Tasks Progress</h3>
          <ul class="control-sidebar-menu">
            <li>
              <a href="javascript:;">
                <h4 class="control-sidebar-subheading">
                  Custom Template Design
                  <span class="pull-right-container">
                    <span class="label label-danger pull-right">70%</span>
                  </span>
                </h4>

                <div class="progress progress-xxs">
                  <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                </div>
              </a>
            </li>
          </ul>
          <!-- /.control-sidebar-menu -->

        </div>
        <!-- /.tab-pane -->
        <!-- Stats tab content -->
        <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
        <!-- /.tab-pane -->
        <!-- Settings tab content -->
        <div class="tab-pane" id="control-sidebar-settings-tab">
          <form method="post">
            <h3 class="control-sidebar-heading">General Settings</h3>

            <div class="form-group">
              <label class="control-sidebar-subheading">
                Report panel usage
                <input type="checkbox" class="pull-right" checked>
              </label>

              <p>
                Some information about this general settings option
              </p>
            </div>
            <!-- /.form-group -->
          </form>
        </div>
        <!-- /.tab-pane -->
      </div>
    </aside>
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
  </div>
  <!-- ./wrapper -->

  <!-- REQUIRED JS SCRIPTS -->

  <!-- jQuery 3 -->
  <script src="../bower_components/jquery/dist/jquery.min.js"></script>
  <!-- Bootstrap 3.3.7 -->
  <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  <!-- AdminLTE App -->
  <script src="../dist/js/adminlte.min.js"></script>

</body>

</html>
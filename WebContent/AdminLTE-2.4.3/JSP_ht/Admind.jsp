
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
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<link rel="stylesheet"
	href="../bower_components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../bower_components/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="../bower_components/Ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
<link rel="stylesheet" href="../dist/css/skins/skin-blue.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
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
			<a href="index2.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini">社团后台</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg">山商社团后台管理</span>
			</a>

			<!-- Header Navbar -->
			<nav class="navbar navbar-static-top" role="navigation">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="push-menu"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>
				<!-- Navbar Right Menu -->
				<div class="navbar-custom-menu"></div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">

			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">

				<!-- Sidebar user panel (optional) -->
				<div class="user-panel">
					<div class="pull-left image">
						<img src="../dist/img/user2-160x160.jpg" class="img-circle"
							alt="User Image">
					</div>
					<div class="pull-left info">
						<p>
							<%=request.getSession().getAttribute("b")%>
						</p>
						<!-- Status -->
						<a href="#"> <i class="fa fa-circle text-success"></i> 在线
						</a>
					</div>
				</div>

				<!-- search form (Optional) -->
				<!-- /.search form -->

				<!-- Sidebar Menu -->
				<ul class="sidebar-menu" data-widget="tree">
					<li class="header">HEADER</li>
					<!-- Optionally, you can add icons to the links -->
					<li class="active"><a href="AdminIndex.jsp"> <i
							class="fa fa-link"></i> <span>社团申请</span>
					</a></li>
					<li class="active"><a href="AdminMember.jsp"> <i
							class="fa fa-link"></i> <span>成员管理</span>
					</a></li>
					<li class="treeview"><a href="#"> <i class="fa fa-link"></i>
							<span>公告管理</span>
					</a>
						<ul class="treeview-menu">
							<li><a href="Adminf.jsp">发布公告</a></li>
							<li><a href="Admind.jsp">删除公告</a></li>
						</ul></li>
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
					<strong>删除公告</strong>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"> <i class="fa fa-dashboard"></i> 首页
					</a></li>
					<li class="active">删除公告</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content container-fluid2">
				<div class="box box-info">
					<div class="box-header with-border">
						<h3 class="box-title">删除公告</h3>
					</div>
					<form class="form-horizontal"
						action="<%=request.getContextPath()%>/user/notice.do"
						method="post">
						<div class="box-body">
							<div class="form-group">
								<label for="noticeid" class="col-sm-2 control-label">输入要删除的公告编号</label>

								<div class="col-sm-3">
									<input type="text" class="form-control" 
										name="noticeid" placeholder="请输入公告编号">
								</div>

							</div>

							<div class="col-sm-2">
								<button type="submit" class="btn btn-primary"
									style="margin-left: 10px; margin-bottom: 10px;"
									onclick="alert('删除成功')">删除</button>
							</div>
						</div>

					</form>
				</div>

			</section>
			<!-- /.content -->
		</div>



		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Create the tabs -->
			<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
				<li class="active"><a href="#control-sidebar-home-tab"
					data-toggle="tab"> <i class="fa fa-home"></i>
				</a></li>
				<li><a href="#control-sidebar-settings-tab" data-toggle="tab">
						<i class="fa fa-gears"></i>
				</a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content">
				<!-- Home tab content -->
				<div class="tab-pane active" id="control-sidebar-home-tab">
					<h3 class="control-sidebar-heading">Recent Activity</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript:;"> <i
								class="menu-icon fa fa-birthday-cake bg-red"></i>

								<div class="menu-info">
									<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

									<p>Will be 23 on April 24th</p>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->

					<h3 class="control-sidebar-heading">Tasks Progress</h3>
					<ul class="control-sidebar-menu">
						<li><a href="javascript:;">
								<h4 class="control-sidebar-subheading">
									Custom Template Design <span class="pull-right-container">
										<span class="label label-danger pull-right">70%</span>
									</span>
								</h4>

								<div class="progress progress-xxs">
									<div class="progress-bar progress-bar-danger"
										style="width: 70%"></div>
								</div>
						</a></li>
					</ul>
					<!-- /.control-sidebar-menu -->

				</div>
				<!-- /.tab-pane -->
				<!-- Stats tab content -->
				<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
					Content</div>
				<!-- /.tab-pane -->
				<!-- Settings tab content -->
				<div class="tab-pane" id="control-sidebar-settings-tab">
					<form method="post">
						<h3 class="control-sidebar-heading">General Settings</h3>

						<div class="form-group">
							<label class="control-sidebar-subheading"> Report panel
								usage <input type="checkbox" class="pull-right" checked>
							</label>

							<p>Some information about this general settings option</p>
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
<%-- 
    Document   : semesterList
    Created on : Sep 21, 2023, 12:55:38 PM
    Author     : asus
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Boxicons -->
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!-- My CSS -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
        <!-- Morris chart -->
        <link rel="stylesheet" href="plugins/morris/morris.css">
        <!-- jvectormap -->
        <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
        <!-- Date Picker -->
        <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
        <!-- bootstrap wysihtml5 - text editor -->
        <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.css">

        <!-- SweetAlert2 JS -->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.19/dist/sweetalert2.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Css -->
        <link href="../../assets/css/style.min.css" rel="stylesheet" type="text/css" id="theme-opt" />
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://kit.fontawesome.com/85b9ea1328.js" crossorigin="anonymous"></script>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <link rel="stylesheet" href="admin/style.css">
        <style>
            .category-bar {
                position: relative;
                display: inline-block;
                margin-left: 10px;
            }

            .category-bar label {
                margin-right: 5px;
            }

            .category-bar ul {
                list-style-type: none;
                padding: 0;
                margin: 0;
                width: 150px; /* Adjust the width as needed */
                background-color: #f2f2f2;
                border-radius: 5px;
                cursor: pointer;
            }

            .category-bar ul li {
                padding: 8px 12px;
                transition: background-color 0.3s ease;
            }

            .category-bar ul li:hover {
                background-color: #eaeaea;
            }

            .category-bar ul li a {
                text-decoration: none;
                color: #333;
            }

            .category-bar .select-arrow {
                position: absolute;
                top: 50%;
                right: 10px;
                transform: translateY(-50%);
                pointer-events: none;
            }
            .table {
                width: 100%;
                border-collapse: collapse;
                font-family: Arial, sans-serif;
            }

            .table th {
                background-color: #f5f5f5;
                color: #333;
                font-weight: bold;
                padding: 8px;
                text-align: center;
            }

            .table td {
                padding: 8px;
                text-align: center;
            }

            .table tr:nth-child(even) {
                background-color: #f9f9f9;
            }

            .table tr:hover {
                background-color: #f1f1f1;
            }
        </style>
        <title>Subject Manager</title>
    </head>
    <body class="hold-transition skin-blue sidebar-mini">

        <!-- SIDEBAR -->
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- Sidebar user panel -->
                <div class="user-panel"  style="padding-bottom:40px;padding-top:10px;">
                    <div class="pull-left image">
                        <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                    </div>
                    <div class="pull-left info">
                        <p>Alexander Pierce</p>
                        <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                    </div>
                </div>
                <ul class="sidebar-menu">
                    <li class="header">MAIN NAVIGATION</li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-table"></i> <span>Manager Dashboard</span>
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="/G4_Project_SWP391/UserList"><i class="fa fa-circle-o"></i> Users List</a></li>
                            <li><a href="/G4_Project_SWP391/settings"><i class="fa fa-circle-o"></i> Settings List</a></li>
                            <li><a href="/G4_Project_SWP391/subjectList"><i class="fa fa-circle-o"></i> Subjects List</a></li>

                        </ul>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/SubjectManager">
                            <i class="fa fa-calendar"></i> <span>Subject Manager</span>
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/ClassManager">
                            <i class="fa fa-calendar"></i> <span>Class Manager</span>
                        </a>
                    </li>
                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>
        <!-- SIDEBAR -->

        <!-- CONTENT -->
        <section id="content">

            <!-- MAIN -->
            <main>
                <div class="head-title">
                    <div class="left">
                        <h1>Class Manager</h1>
                    </div>

                </div>

                <div class="table-data">
                    <div class="container card shadow d-flex justify-content-center mt-5">
                        <!-- nav options -->
                        <ul class="nav nav-pills mb-3 shadow-sm" id="pills-tab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Project</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Class Issue Settings</a>
                            </li>
                        </ul>

                        <!-- content -->
                        <div class="tab-content" id="pills-tabContent">
                            <!-- 2nd card -->
                            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                                <div class="order">
                                    <div class="head"> 
                                        <div>
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#project"><span style="font-size: 18px;" class="status process">Add New Project</span></button>
                                        </div>        
                                    </div>
                                    <div>
                                        <form action="ClassManager" class="row">
                                            <input class="form-group col-lg-4" type="text" name="searchValue" placeholder="Search By Name ...." value="${searchValueProject}">
                                            <select class="form-group col-lg-4" name="searchSubject">
                                                <c:forEach items="${requestScope.subjects}" var="item">
                                                    <option value="${item.subjectId}" ${item.subjectId == subjectIDSearch ? 'selected' : ''}>${item.subjectName}</option>
                                                </c:forEach>
                                            </select>
                                            <input class="form-group col-lg-4" type="submit" value="Search">
                                        </form>
                                    </div>
                                    <table>
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Name</th>
                                                <th>Subject</th>
                                                <th>Start Date</th>
                                                <th>End Date</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${requestScope.listProject}" var="u">
                                                <tr>
                                                    <td>${u.getProjectId()} </td>
                                                    <td>${u.getProjectName()}</td>
                                                    <td>${u.getSubject().getSubjectName()}</td>
                                                    <td>
                                                        <fmt:parseDate value="${u.getStartDate()}" pattern="yyyy-MM-dd'T'HH:mm" var="startDate" type="both" />
                                                        <fmt:formatDate pattern="dd.MM.yyyy HH:mm" value="${startDate}" />
                                                    </td>
                                                    <td>
                                                        <fmt:parseDate value="${u.getEndDate()}" pattern="yyyy-MM-dd'T'HH:mm" var="endDate" type="both" />
                                                        <fmt:formatDate pattern="dd.MM.yyyy HH:mm" value="${endDate}" />
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#assignment${u.getId()}"><span style="font-size: 18px;" class="status process"><i class='bx bx-edit' ></i></span></button>
                                                        <a href="ClassManager?id=${u.getProjectId()}&action=delete" onclick="return confirm('Bạn có chắc chắn muốn xóa Assignment này không?')" ><span style="font-size: 18px;" class="status pending"><i class='bx bx-trash' ></i></span></a>
                                                    </td>                                                 
                                                </tr>
                                            <div class="modal fade" id="assignment${u.getProjectId()}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">Update Project</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form action="updateProject" method="post" enctype="multipart/form-data">
                                                                <input type="hidden" name="id" value="${u.getProjectId()}">
                                                                <div class="form-group">
                                                                    <label for="message-text" class="col-form-label">Name</label>
                                                                    <input type="text" placeholder="Enter your project name" name="name" value="${u.getProjectName()}" required>
                                                                </div>
                                                                <fmt:parseDate value="${u.getStartDate()}" pattern="yyyy-MM-dd'T'HH:mm" var="startDate" type="both" />
                                                                <div class="form-group">
                                                                    <label for="message-text" class="col-form-label">Start Date</label>
                                                                    <input type="datetime-local" name="startDate" value="${startDate}" required>
                                                                </div>
                                                                <fmt:parseDate value="${u.getEndDate()}" pattern="yyyy-MM-dd'T'HH:mm" var="endDate" type="both" />                                                                <div class="form-group">
                                                                    <label for="message-text" class="col-form-label">End Date</label>
                                                                    <input type="datetime-local" name="endDate" value="${endDate}" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="message-text" class="col-form-label">Subject</label>
                                                                    <select class="form-control" name="subjectID" required="">
                                                                        <c:forEach items="${requestScope.subjects}" var="item">
                                                                            <option value="${item.subjectId}" ${item.subjectId == u.getSubject().subjectId ? 'selected' : ''}>${item.subjectName}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="message-text" class="col-form-label">Description</label>
                                                                    <textarea class="form-control" name="description" required="">
                                                                        ${item.description}
                                                                    </textarea>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                                    <button type="submit" class="btn btn-primary">Update</button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                        <c:forEach begin="1" end="${requestScope.totalPageProject}" var="i">
                                            <a href="${pageContext.request.contextPath}/ClassManager?pagenumProject=${i}">${i}</a>
                                        </c:forEach>
                                        </tbody>
                                    </table>                    
                                </div>
                            </div>
                            <!-- 3nd card -->
                            <div class="tab-pane fade third" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                                <div class="order">
                                    <div class="head" style="display: flex;"> 
                                        <div class="inline-elements">
                                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addsetting"><span style="font-size: 18px;" class="status process">Add New Setting</span></button>
                                        </div>
                                    </div>
                                    <div>
                                        <form action="ClassManager" class="row">
                                            <input class="form-group col-lg-4" type="text" name="searchSetting" placeholder="Search ...." value="${searchValue}">
                                            <input class="form-group col-lg-4" type="submit" value="Search">
                                        </form>
                                    </div>
                                    <table>
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Name</th>
                                                <th>Status</th>
                                                <th>Process</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${requestScope.listSettings}" var="u">
                                                <tr>
                                                    <td>${u.id} </td>
                                                    <td>${u.name}</td>
                                                    <td>${u.status}</td>
                                                    <td>${u.process}</td>
                                                    <td
                                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#setting${u.getId()}"><span style="font-size: 18px;" class="status process"><i class='bx bx-edit' ></i></span></button>
                                                        <a href="ClassManager?id=${u.id}&action=deleteSettingSubject" onclick="return confirm('Bạn có chắc chắn muốn xóa hay không?')" ><span style="font-size: 18px;" class="status pending"><i class='bx bx-trash' ></i></span></a>
                                                    </td>
                                                </tr>
                                            <div class="modal fade" id="setting${u.id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">Update Class Issue Setting</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form action="UpdateClassSetting" method="post" >
                                                                <input type="hidden" name="id" value="${u.id}">
                                                                <div class="form-group">
                                                                    <label for="message-text" class="col-form-label">Name</label>
                                                                    <input type="text" name="name" value="${u.name}" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="message-text" class="col-form-label">Status</label>
                                                                    <input type="text" name="status" value="${u.status}" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="message-text" class="col-form-label">Process</label>
                                                                    <input type="text" name="process" value="${u.process}" required>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                                    <button type="submit" class="btn btn-primary">Update</button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                    <c:forEach begin="1" end="${requestScope.totalPageSettings}" var="i">
                                        <a href="${pageContext.request.contextPath}/ClassManager?pagenumSetting=${i}">${i}</a>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="modal fade" id="project" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" style="margin-top: 10%" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Add Project</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <form class="modal-body" action="AddProject" method="post">
                                            <div class="form-group">
                                                <label for="message-text" class="col-form-label">Name</label>
                                                <input class="form-control" type="text" placeholder="Enter your project name" name="name" value="${requestScope.name}" required>
                                            </div>
                                            <fmt:parseDate value="${requestScope.startDate}" pattern="yyyy-MM-dd'T'HH:mm" var="startDate" type="both" />
                                            <div class="form-group">
                                                <label for="message-text" class="col-form-label">Start Date</label>
                                                <input class="form-control" type="datetime-local" name="startDate" value="${startDate}" required>
                                            </div>
                                            <fmt:parseDate value="${requestScope.endDate}" pattern="yyyy-MM-dd'T'HH:mm" var="endDate" type="both" />                                                                <div class="form-group">
                                                <label for="message-text" class="col-form-label">End Date</label>
                                                <input class="form-control" type="datetime-local" name="endDate" value="${endDate}" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="col-form-label">Subject</label>
                                                <select class="form-control" name="subjectID" required="" style="height: 50px">
                                                    <c:forEach items="${requestScope.subjects}" var="item">
                                                        <option value="${item.subjectId}" ${item.subjectId == subjectid ? 'selected' : ''}>${item.subjectName}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="col-form-label">Description</label>
                                                <textarea class="form-control" name="description" required="">
                                                    ${description}
                                                </textarea>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary">Add</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="modal fade" id="addsetting" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" style="margin-top: 10%" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">Add Class Issue Setting</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <form class="modal-body" action="AddClassSetting" method="post" >
                                            <div class="form-group">
                                                <label for="message-text" class="col-form-label">Name</label>
                                                <input class="form-control" type="text" name="name" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="col-form-label">Status</label>
                                                <input class="form-control" type="text" name="status" required>
                                            </div>
                                            <div class="form-group">
                                                <label for="message-text" class="col-form-label">Process</label>
                                                <input class="form-control" type="text" name="process" required>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary">Add Class</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <!-- MAIN -->
        </section>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <!-- CONTENT -->
        <script src="https://kit.fontawesome.com/85b9ea1328.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="admin/script.js"></script>
        <!-- jQuery UI 1.11.4 -->
        <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
                                                            $.widget.bridge('uibutton', $.ui.button);
        </script>
        <!-- Bootstrap 3.3.6 -->
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <!-- Morris.js charts -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="plugins/morris/morris.min.js"></script>
        <!-- Sparkline -->
        <script src="plugins/sparkline/jquery.sparkline.min.js"></script>
        <!-- jvectormap -->
        <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <!-- jQuery Knob Chart -->
        <script src="plugins/knob/jquery.knob.js"></script>
        <!-- daterangepicker -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
        <script src="plugins/daterangepicker/daterangepicker.js"></script>
        <!-- datepicker -->
        <script src="plugins/datepicker/bootstrap-datepicker.js"></script>
        <!-- Bootstrap WYSIHTML5 -->
        <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
        <!-- Slimscroll -->
        <script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="plugins/fastclick/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="dist/js/app.min.js"></script>
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="dist/js/pages/dashboard.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="dist/js/demo.js"></script>

    </body>
</html>

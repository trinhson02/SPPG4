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
                        <h1>Subject Manager</h1>
                    </div>

                </div>

                <div class="table-data">
                    <div class="container card shadow d-flex justify-content-center mt-5">
                        <!-- nav options -->
                        <ul class="nav nav-pills mb-3 shadow-sm" id="pills-tab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link ${active == 1 ? 'active' : ''}" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">General</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link ${active == 2 ? 'active' : ''}" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Assignment</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link ${active == 3 ? 'active' : ''}" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Setting</a>
                            </li>
                        </ul>

                        <!-- content -->
                        <div class="tab-content" id="pills-tabContent">
                            <div class="tab-pane fade ${active == 1 ? 'show active' : ''}" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                                <div class="order">
                                    <div class="head" style="display: flex;"> 
                                        <div class="inline-elements">
                                            <a href="${pageContext.request.contextPath}/addClass" class="btn-download">
                                                <span class="text">Add New Class</span>
                                            </a>
                                        </div>
                                    </div>
                                    <div>
                                        <form action="SubjectManager" class="row">
                                            <input type="hidden" name="active" value="1">
                                            <input class="form-group col-lg-3" type="text" name="searchValue" placeholder="Search By Name ...." value="${searchValueClass}">
                                            <div class="form-group col-lg-5">
                                                <div class="form-group row">
                                                    <label class="form-check-label">
                                                        Active
                                                    </label>
                                                    <input type="radio" class="form-check-input" name="statusClass" value="1" ${requestScope.statusClass == 1 ? 'checked' : ''}>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-5">
                                                <div class="form-group row">
                                                    <label class="form-check-label">
                                                        Inactive
                                                    </label>
                                                    <input type="radio" class="form-check-input" name="statusClass" value="0" ${requestScope.statusClass == 0 ? 'checked' : ''}>
                                                </div>
                                            </div> 
                                            <input class="form-group col-lg-4" type="submit" value="Search">
                                        </form>
                                    </div>           
                                    <table>
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Class Code</th>
                                                <th>Class Detail</th>
                                                <th>Status</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${requestScope.classes}" var="u">
                                                <tr>
                                                    <td>${u.getClassId()} </td>
                                                    <td>${u.getClassCode()}</td>
                                                    <td>${u.getClassDetail()}</td>
                                                    <td>${u.getStatus()}</td>
                                                    <td>
                                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#class${u.getClassId()}"><span style="font-size: 18px;" class="status process"><i class='bx bx-edit' ></i></span></button>
                                                        <a href="SubjectManager?id=${u.getClassId()}&action=deleteClass" onclick="return confirm('Bạn có chắc chắn muốn xóa Assignment này không?')" ><span style="font-size: 18px;" class="status pending"><i class='bx bx-trash' ></i></span></a>
                                                    </td>                                                 
                                                </tr>
                                            <div class="modal fade" id="class${u.getClassId()}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">Update Class</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form action="UpdateClass" method="post">
                                                                <input type="hidden" name="active" value="1">
                                                                <input type="hidden" name="id" value="${u.getClassId()}">
                                                                <div class="form-group">
                                                                    <label for="message-text" class="col-form-label">Class Code</label>
                                                                    <input type="text" placeholder="Enter your class code" name="classcode" value="${u.getClassCode()}" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="message-text" class="col-form-label">Class Detail</label>
                                                                    <textarea name="detail"  required>
                                                                        ${u.getClassDetail()}
                                                                    </textarea>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="message-text" class="col-form-label">Status</label>
                                                                    <div class="col-sm-4">
                                                                        <div class="form-group row">
                                                                            <label class="form-check-label">
                                                                                Active
                                                                            </label>
                                                                            <input type="radio" class="form-check-input" name="status" value="1" ${u.getStatus() eq true ? 'checked' : ''}>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-5">
                                                                        <div class="form-group">
                                                                            <label class="form-check-label">
                                                                                Inactive
                                                                            </label>
                                                                            <input type="radio" class="form-check-input" name="status" value="0" ${u.getStatus() eq false ? 'checked' : ''}>
                                                                        </div>
                                                                    </div> 
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
                                    <div class="text-center">
                                        <c:forEach begin="1" end="${requestScope.totalPage}" var="i">
                                            <a style="${i == requestScope.pagenum ? 'color : red' : ''}" href="${pageContext.request.contextPath}/SubjectManager?pageNum=${i}">${i}</a>
                                        </c:forEach>
                                    </div>           
                                </div>
                            </div>
                            <!-- 2nd card -->
                            <div class="tab-pane fade ${active == 2 ? 'show active' : ''}" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                                <div class="order">
                                    <div class="head" style="display: flex;"> 
                                        <div class="inline-elements">
                                            <a href="${pageContext.request.contextPath}/addAssignment" class="btn-download">
                                                <span class="text">Add New Assignment</span>
                                            </a>
                                        </div>
                                    </div>
                                    <div>
                                        <form action="SubjectManager" class="row">
                                            <input class="form-group col-lg-4" type="text" name="searchAssignment" placeholder="Search By Title ...." value="${searchValueAssignment}"> 
                                            <select class="form-group col-lg-4" name="searchProjectID">
                                                <c:forEach items="${requestScope.list}" var="item">
                                                    <option value="${item.getProjectId()}" ${item.getProjectId() == requestScope.searchProjectID?'selected' : ''}>${item.getProjectName()}</option>
                                                </c:forEach>
                                            </select>
                                            <input class="form-group col-lg-4" type="submit" value="Search">
                                        </form>
                                    </div>
                                    <table>
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Title</th>
                                                <th>Start Date</th>
                                                <th>End Date</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${requestScope.assignments}" var="u">
                                                <tr>
                                                    <td>${u.getId()} </td>
                                                    <td>${u.getTitle()}</td>
                                                    <td>
                                                        <fmt:parseDate value="${u.startdate}" pattern="yyyy-MM-dd'T'HH:mm" var="startDate" type="both" />
                                                        <fmt:formatDate pattern="dd.MM.yyyy HH:mm" value="${startDate}" />
                                                    </td>
                                                    <td>
                                                        <fmt:parseDate value="${u.enddate}" pattern="yyyy-MM-dd'T'HH:mm" var="endDate" type="both" />
                                                        <fmt:formatDate pattern="dd.MM.yyyy HH:mm" value="${endDate}" />
                                                    </td>
                                                    <td>
                                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#assignment${u.getId()}"><span style="font-size: 18px;" class="status process"><i class='bx bx-edit' ></i></span></button>
                                                        <a href="SubjectManager?id=${u.getId()}&action=delete" onclick="return confirm('Bạn có chắc chắn muốn xóa Assignment này không?')" ><span style="font-size: 18px;" class="status pending"><i class='bx bx-trash' ></i></span></a>
                                                    </td>                                                 
                                                </tr>
                                            <div class="modal fade" id="assignment${u.getId()}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">Update Assignment</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form action="updateAssignment" method="post" enctype="multipart/form-data">
                                                                <input type="hidden" name="id" value="${u.getId()}">
                                                                <div class="form-group">
                                                                    <label for="message-text" class="col-form-label">Title</label>
                                                                    <input type="text" placeholder="Enter your title" name="title" value="${u.getTitle()}" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="message-text" class="col-form-label">Start Date</label>
                                                                    <input type="datetime-local" name="startDate" value="${u.startdate}" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="message-text" class="col-form-label">End Date</label>
                                                                    <input type="datetime-local" name="endDate" value="${u.enddate}" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="message-text" class="col-form-label">Project</label>
                                                                    <select class="form-control" name="projectID" required="">
                                                                        <c:forEach items="${requestScope.list}" var="item">
                                                                            <option value="${item.projectId}" ${item.projectId == u.project.projectId ? 'selected' : ''}>${item.projectName}</option>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>
                                                                <a href="${pageContext.request.contextPath}/download?name=${u.attachment}">${u.attachment}</a>
                                                                <div class="form-group">
                                                                    <label for="message-text" class="col-form-label">Attachment</label>
                                                                    <input type="file" name="file">
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
                                        <c:forEach begin="1" end="${requestScope.totalPageAssignments}" var="i">
                                            <a href="${pageContext.request.contextPath}/SubjectManager?pageAS=${i}">${i}</a>
                                        </c:forEach>
                                        </tbody>
                                    </table>                    
                                </div>
                            </div>
                            <!-- 3nd card -->
                            <div class="tab-pane fade third ${active == 3 ? 'show active' : ''}" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
                                <div class="order">
                                    <div class="head" style="display: flex;"> 
                                        <div class="inline-elements">
                                            <a href="${pageContext.request.contextPath}/AddSubjectSetting" class="btn-download">
                                                <span class="text">Add New Subject Settings</span>
                                            </a>
                                        </div>
                                    </div>
                                    <div>
                                        <form action="SubjectManager" class="row">
                                            <input type="hidden" name="active" value="1">
                                            <input class="form-group col-lg-3" type="text" name="searchSubject" placeholder="Search ...." value="${searchSubjectSetting}">
                                            <div class="form-group col-lg-5">
                                                <div class="form-group row">
                                                    <label class="form-check-label">
                                                        Active
                                                    </label>
                                                    <input type="radio" class="form-check-input" name="statusSubject" value="1" ${requestScope.statusSubjectSetting == 1 ? 'checked' : ''}>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-5">
                                                <div class="form-group row">
                                                    <label class="form-check-label">
                                                        Inactive
                                                    </label>
                                                    <input type="radio" class="form-check-input" name="statusSubject" value="0" ${requestScope.statusSubjectSetting == 0 ? 'checked' : ''}>
                                                </div>
                                            </div> 
                                            <input class="form-group col-lg-4" type="submit" value="Search">
                                        </form>
                                    </div>
                                    <table>
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Type</th>
                                                <th>Level</th>
                                                <th>Active</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${requestScope.subjectSettings}" var="u">
                                                <tr>
                                                    <td>${u.getId()} </td>
                                                    <td>${u.type}</td>
                                                    <td>${u.level}</td>
                                                    <td>${u.active ? 'Active' : 'Deactive'}</td>
                                                    <td
                                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#setting${u.getId()}"><span style="font-size: 18px;" class="status process"><i class='bx bx-edit' ></i></span></button>
                                                        <a href="SubjectManager?id=${u.getId()}&action=deleteSettingSubject" onclick="return confirm('Bạn có chắc chắn muốn xóa hay không?')" ><span style="font-size: 18px;" class="status pending"><i class='bx bx-trash' ></i></span></a>
                                                    </td>
                                                </tr>
                                            <div class="modal fade" id="setting${u.getId()}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLabel">Update Assignment</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <form action="updateSubjectSetting" method="post" >
                                                                <input type="hidden" name="id" value="${u.getId()}">
                                                                <div class="form-group">
                                                                    <label for="message-text" class="col-form-label">Type</label>
                                                                    <input type="text" name="type" value="${u.type}" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="message-text" class="col-form-label">Level</label>
                                                                    <input type="text" name="level" value="${u.level}" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="message-text" class="col-form-label">Status</label>
                                                                    <div class="col-sm-4">
                                                                        <div class="form-group row">
                                                                            <label class="form-check-label">
                                                                                Active
                                                                            </label>
                                                                            <input type="radio" class="form-check-input" name="status" value="1" ${u.active eq true ? 'checked' : ''}>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-5">
                                                                        <div class="form-group">
                                                                            <label class="form-check-label">
                                                                                Inactive
                                                                            </label>
                                                                            <input type="radio" class="form-check-input" name="status" value="0" ${u.active eq false ? 'checked' : ''}>
                                                                        </div>
                                                                    </div> 
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
                                    <c:forEach begin="1" end="${requestScope.totalPageDB}" var="i">
                                        <a href="${pageContext.request.contextPath}/SubjectManager?pageSB=${i}">${i}</a>
                                    </c:forEach>
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

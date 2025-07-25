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
        <title>Subject List</title>
    </head>
    <body class="hold-transition skin-blue sidebar-mini">


        <!-- SIDEBAR -->

        <!-- CONTENT -->
        <jsp:include page="navbar.jsp"/>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header" style="margin-bottom: 10px;margin-top:20px;">
                            <h3 class="box-title" style="font-size: 35px; font-weight: bold;"><span>Subject Detail</span></h3>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body table-responsive no-padding">
                            <div class="container card shadow d-flex justify-content-center mt-5">
                                <jsp:include page="tabnav.jsp"/>

                                <div class="tab-content" id="pills-tabContent">
                                    <!-- 2nd card -->
                                    <div class="tab-pane fade show" id="pills-home" role="tabpanel" aria-labelledby="pills-profile-tab">
                                        <div class="order">
                                            <div>
                                                <form action="SubjectSetting">
                                                    <input type="hidden" name="subID" value="${requestScope.subID}">
                                                    <div class="form-row">
                                                        <div class="form-group col-md-3">
                                                            <label for="inputEmail4">Search</label>
                                                            <input type="text" class="form-control" name="search" id="inputEmail4" value="${requestScope.search}" placeholder="Search By Title/Type/Name ....">
                                                        </div>
                                                        <div class="form-check form-check-inline col-md-2">
                                                            <label class="form-check-label" for="statusActive">Active</label>
                                                            <input type="radio" class="form-check-input" name="status" id="statusActive" value="1" ${requestScope.status eq 1 ? 'checked' : ''}>                                                           
                                                        </div>
                                                        <div class="form-check form-check-inline col-md-2">
                                                            <label class="form-check-label" for="statusDeactive">Deactive</label>
                                                            <input type="radio" class="form-check-input" name="status" id="statusDeactive" value="0" ${requestScope.status eq 0 ? 'checked' : ''}>
                                                        </div>
                                                    </div>
                                                    <button type="submit" class="btn btn-primary">Search</button>
                                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addsetting"><span class="status process">Add New Subject Setting</span></button>
                                                </form>
                                            </div>
                                            <table class="table table-hover" style="margin: 0 auto; width: 90%;">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Name</th>
                                                        <th>Type</th>
                                                        <th>Order</th>
                                                        <th>Status</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${requestScope.settingList}" var="u">
                                                        <tr>
                                                            <td>${u.id} </td>
                                                            <td>${u.name}</td>
                                                            <td>${u.type}</td>
                                                            <td>${u.order}</td>
                                                            <td style="width: 10%;text-align: center">
                                                                ${u.status eq true ? '<span style="color: green;">Active</span>' : '<span style="color: red;">Deactive</span>'}
                                                            </td>
                                                            <td style="width: 25%;text-align: center">
                                                                <a data-toggle="modal" data-target="#assUpdate${u.id}" href="#">
                                                                    <span style="font-size: 18px;" class="status process">
                                                                        <i class="fa-solid fa-pen-to-square"></i>
                                                                    </span>
                                                                </a>
                                                                <a data-toggle="modal" data-target="#deleteAss${u.id}" href="#">
                                                                    <span style="font-size: 18px;" class="status pending">
                                                                        <i class="fa-solid fa-trash-can"></i>
                                                                    </span>
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    <div class="modal fade" id="deleteAss${u.id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog" role="document">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="exampleModalLabel">Delete Subject Setting</h5>
                                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">&times;</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    Do you want to delete subject setting with title ${u.name}
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                                    <button type="button" onclick="window.window.location.href = '${pageContext.request.contextPath}/SubjectSetting?id=${u.id}&action=delete&subID=${requestScope.subID}'" class="btn btn-primary">Save changes</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal fade" id="assUpdate${u.id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog" role="document">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="exampleModalLabel">Update Subject Setting</h5>
                                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">&times;</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <form action="${pageContext.request.contextPath}/SubjectSetting" method="post">
                                                                        <input type="hidden" name="id" value="${u.id}">
                                                                        <input type="hidden" name="subID" value="${requestScope.subID}">
                                                                        <input type="hidden" name="action" value="update">
                                                                        <div class="form-group">
                                                                            <label for="recipient-code" class="col-form-label">Name</label>
                                                                            <input type="text" class="form-control" id="recipient-code" name="name" value="${u.name}" required="">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="recipient-name" class="col-form-label">Type</label>
                                                                            <input type="text" class="form-control" id="recipient-name" name="type" value="${u.type}" required="">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="recipient-name" class="col-form-label">Order</label>
                                                                            <input type="number" class="form-control" id="recipient-name" name="order" value="${u.order}" required="">
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <div>
                                                                                <label for="status-active" class="col-form-label form-check-label">Active</label>
                                                                                <input type="radio" class="form-check-input" id="status-active" name="status" value="1" ${u.status eq true? 'checked' : ''} required="">    
                                                                            </div> 
                                                                            <div>
                                                                                <label for="status-inactive" class="col-form-label form-check-label">Inactive</label>
                                                                                <input type="radio" class="form-check-input" id="status-inactive" name="status" value="0" ${u.status eq false? 'checked' : ''} >
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-group">
                                                                            <label for="recipient-name" class="col-form-label">Description</label>
                                                                            <textarea class="form-control" name="description" required="">${u.description}</textarea>
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
                                            <div class="box-footer clearfix" style="margin-left: 44%">
                                                <ul class="pagination pagination-sm no-margin pull-left text-center">
                                                    <c:if test="${requestScope.pageNum > 1}">
                                                        <li class="page-item"><a style="font-size: larger;" class="page-link" href="${pageContext.request.contextPath}/SubjectAssignment?pageNum=${requestScope.pageNum - 1}&subID=${requestScope.subID}">Previous</a></li>
                                                        </c:if>
                                                        <c:forEach begin="${requestScope.pageNum}" end="${requestScope.totalPage > requestScope.pageNum + 2 ? (requestScope.pageNum + 2) : requestScope.totalPage}" var="i">
                                                        <li class="page-item"><a style="font-size: larger;" class="page-link" href="${pageContext.request.contextPath}/SubjectAssignment?pageNum=${i}&subID=${requestScope.subID}">${i}</a></li>
                                                        </c:forEach>
                                                        <c:if test="${requestScope.pageNum < requestScope.totalPage}">
                                                        <li class="page-item"><a style="font-size: larger;" class="page-link" href="${pageContext.request.contextPath}/SubjectAssignment?pageNum=${requestScope.pageNum + 1}&subID=${requestScope.subID}">Next</a></li>
                                                        </c:if>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal fade" id="addsetting" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Add New Subject Setting</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <form action="${pageContext.request.contextPath}/SubjectSetting" method="post">
                                                        <input type="hidden" name="id" value="${u.id}">
                                                        <input type="hidden" name="subID" value="${requestScope.subID}">
                                                        <input type="hidden" name="action" value="add">
                                                        <div class="form-group">
                                                            <label for="recipient-code" class="col-form-label">Name</label>
                                                            <input type="text" class="form-control" id="recipient-code" name="name" required="">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="recipient-name" class="col-form-label">Type</label>
                                                            <input type="text" class="form-control" id="recipient-name" name="type" required="">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="recipient-name" class="col-form-label">Order</label>
                                                            <input type="number" class="form-control" id="recipient-name" name="order" required="">
                                                        </div>
                                                        <div class="form-group">
                                                            <div>
                                                                <label for="status-active" class="col-form-label form-check-label">Active</label>
                                                                <input type="radio" class="form-check-input" id="status-active" name="status" value="1" ${u.status eq true? 'checked' : ''} required="">    
                                                            </div> 
                                                            <div>
                                                                <label for="status-inactive" class="col-form-label form-check-label">Inactive</label>
                                                                <input type="radio" class="form-check-input" id="status-inactive" name="status" value="0" ${u.status eq false? 'checked' : ''} >
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="recipient-name" class="col-form-label">Description</label>
                                                            <textarea class="form-control" name="description" required="">${u.description}</textarea>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                            <button type="submit" class="btn btn-primary">Add</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- ./wrapper -->

            <!-- jQuery 2.2.3 -->
            <script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
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

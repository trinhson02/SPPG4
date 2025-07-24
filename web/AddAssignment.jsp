<%-- 
    Document   : AddAssignment
    Created on : Oct 15, 2023, 1:54:58 AM
    Author     : kienb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Boxicons -->
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <!-- My CSS -->
        <link rel="stylesheet" href="admin/style.css">
        <link rel="stylesheet" href="admin/adduser.css">
        <title>Add Assignment</title>
    </head>
    <body>

        <!-- SIDEBAR -->
        <section id="sidebar">
            <a href="#" class="brand">
                <span class="text"></span>
            </a>
            <ul class="side-menu top">

                <li>
                    <a href="SubjectManager">
                        <i class='bx bxs-group' ></i>
                        <span class="text">Subject Manager</span>
                    </a>
                </li>
                <li class="active">
                    <a href="${pageContext.request.contextPath}/addAssignment">
                        <i class='bx bxs-group' ></i>
                        <span class="text">Add Assignment</span>
                    </a>
                </li>
            </ul>
            <ul class="side-menu">
                <li>
                    <a href="#" class="logout">
                        <i class='bx bxs-log-out-circle' ></i>
                        <span class="text">Logout</span>
                    </a>
                </li>
            </ul>
        </section>
        <!-- SIDEBAR -->



        <!-- CONTENT -->
        <section id="content">
            <!-- NAVBAR -->
            <nav>
                <i class='bx bx-menu' ></i>
                <form action="#">
                    <div class="form-input">
                        <!--                        <input type="search" placeholder="Search...">
                                                <button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>-->
                    </div>
                </form>
                <a href="#" class="profile">
                    <img src="img/people.png">
                </a>
            </nav>
            <!-- NAVBAR -->

            <!-- MAIN -->
            <main>

                <div class="container">
                    <div class="title">Add New Assignment</div>
                    <div class="content">
                        <form action="${pageContext.request.contextPath}/addAssignment" method="post" enctype="multipart/form-data">
                            <div class="user-details">
                                <div class="input-box">
                                    <span class="details">Title</span>
                                    <input type="text" placeholder="Enter your title" name="title" required>
                                </div>
                                <div class="input-box">
                                    <span class="details">Start Date</span>
                                    <input type="datetime-local" placeholder="Enter your Start Date" name="startDate" required>
                                </div>
                                <div class="input-box">
                                    <span class="details">End Date</span>
                                    <input type="datetime-local" placeholder="Enter your End Date" name="endDate" required>
                                </div>
                                <div class="input-box">
                                    <span style="margin-left: 25px;" class="details">Project</span>                            
                                    <select name="projectID" required="">
                                        <c:forEach items="${requestScope.list}" var="item">
                                            <option value="${item.projectId}">${item.projectName}</option>
                                        </c:forEach>                               
                                    </select>
                                </div>
                                <div class="input-box">
                                    <span class="details">Attachment</span>
                                    <input type="file" name="file" required>
                                </div>
                                <div style="color: red"> ${mess} </div>
                                <div style="color: green"> ${nofi} </div>
                            </div>
                            <input type="hidden" name="action" value="add">
                            <div class="button">
                                <input type="submit" value="Add Assignment">
                            </div>
                        </form>
                    </div>
                </div>

            </main>
            <!-- MAIN -->
        </section>
        <!-- CONTENT -->


        <script src="admin/script.js"></script>
    </body>
</html>

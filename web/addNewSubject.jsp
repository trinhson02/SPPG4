<%-- 
    Document   : addNewSubject
    Created on : Sep 26, 2023, 1:49:22 AM
    Author     : phuc2
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
        <title>Admin</title>
    </head>
    <body>

        <!-- SIDEBAR -->
        <section id="sidebar">
            <a href="#" class="brand">
                <span class="text"></span>
            </a>
            <ul class="side-menu top">
                
                <li  class="active">
                    <a href="addNewSubject.jsp">
                        <i class='bx bxs-dashboard' ></i>
                        <span class="text">Add Subject</span>
                    </a>
                </li>
                <li>
                    <a href="subjectList">
                        <i class='bx bxs-group' ></i>
                        <span class="text">View Subject</span>
                    </a>
                </li >
                
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
                        <input type="search" placeholder="Search...">
                        <button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
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
                    <div class="title">Add New Subject</div>
                    <div class="content">
                        <form action="subjectList" method="post">
                            <div class="user-details">
                                <div class="input-box">
                                    <span class="details">Subject Code</span>
                                    <input type="text" placeholder="Enter subject code" name="subject_code" required>
                                </div>
                                <div class="input-box">
                                    <span class="details">Subject Name</span>
                                    <input type="text" placeholder="Enter subject_name"
                                           name="subject_name">
                                </div>
                                <div class="input-box">
                                    <span class="details">Subject Description</span>
                                <input type="text" placeholder="Enter subject_description"
                                           name="subject_description">
                                </div>
                                
                                
                                <div class="input-box">
                                    <span class="details">Status</span>                            
                                    <select style="    height: 45px;
                                            width: 100%;
                                            outline: none;
                                            font-size: 16px;
                                            border-radius: 5px;
                                            padding-left: 15px;
                                            border: 1px solid #ccc;
                                            border-bottom-width: 2px;
                                            transition: all 0.3s ease;" name="is_active">
                                       
                                            <option value="Activated">Activated</option>
                                            <option value="Deactivated">Deactivated</option>
                                                                     
                                    </select>
                                </div>
                                <div style="color: red"> ${mess} </div>
                                <div style="color: green"> ${nofi} </div>
                            </div>
                            <div class="button">
                                <input type="submit" name="action" value="add">
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


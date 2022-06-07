﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteEmp.aspx.cs" Inherits="BootstapADOAssigmentDay57.DeleteEmp" %>

<%@ Import Namespace="Web.Services" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link href="css/style.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container-fluid">
                <div class="row ">
                    <!-- navbar content start -->
                    <div class="col-md-12 p-0">
                        <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #25ccb6;">
                            <div class="container-fluid">
                                <img src="https://www.waiin.com/wp-content/uploads/2021/07/WAi-symbol-placeholder.png" class="logo-img" style="height: 60px; width: 120px;"/>
                                <span>Technologies</span>
                                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                        <!--<li class="nav-item active">
                                    <a class="nav-link text-white font-weight-light">Home</a>
                                </li>-->

                                    </ul>
                                    <div class=" justify-content-end">

                                        <i class="pt-3 social-icon pb-3  text-dark   fab fa-facebook"></i>
                                        <i class="pt-3 social-icon pb-3  text-dark   fab fa-twitter"></i>
                                        <i class="pt-3 social-icon pb-3  text-dark  fab fa-instagram"></i>
                                        <i class="pt-3 social-icon pb-3  text-dark   fab fa-linkedin"></i>

                                    </div>
                                </div>
                            </div>
                        </nav>
                    </div>

                    <div class="col-md-12">
                        <div class="row">
                            <!--slide nav-->

                            <div class="col-md-2 bg-dark" style="height: 550px;">
                                <p class="dashboard">
                                    Dashboard
                                </p>
                                <ul>

                                    <a href="AddEmp.aspx">
                                        <li>Add Employee</li>
                                    </a>
                                    <a href="EditEmp.aspx">
                                        <li>Edit Employee</li>
                                    </a>
                                    <a href="DeleteEmp.aspx">
                                        <li>Delete Employee</li>
                                    </a>
                                    <a href="ViewAllEmp.aspx">
                                        <li>View All Employees</li>
                                    </a>
                                    <a href="AddJob.aspx">
                                        <li>Add JOb</li>
                                    </a>
                                    <a href="EditJob.aspx">
                                        <li>Edit JOb</li>
                                    </a>
                                    <a href="DeleteJob.aspx">
                                        <li>Delete JOb</li>
                                    </a>
                                    <a href="ViewAllJob.aspx">
                                        <li>view All JOb</li>
                                    </a>
                                </ul>
                              <p class="dashboard">
                                <a href="Home.aspx">LogOut</a>
                            </p>
                            </div>
                            <!--slide nav-->
                            
                            <!--main section-->
                            <div class="col-md-10"  style="overflow-x:auto;">
                                
                                <h4 class="p-3 text-info  bg-dark mt-4 ">Delete Employee</h4>
                                <table class="table table-bordered table-striped scroll mt-3">
                                    <thead class="alert alert-warning text-center">
                                        <tr>
                                            <th>Id</th>
                                            <th>Emp number</th>
                                            <th>Name</th>
                                            <th>Gender</th>
                                            <th>Address</th>
                                            <th>Position</th>
                                            <th>Department</th>
                                            <th>Date of join</th>
                                            <th>Email</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            var empService = new EmployeeServices();
                                            var emps = empService.GetAll();

                                            foreach (var emp in emps)
                                            {
                                        %>
                                        <tr>
                                            <td><%=emp.Id %></td>
                                            <td><%=emp.empNumber %></td>
                                            <td><%=emp.empName %></td>
                                            <td><%=emp.empGender %></td>
                                            <td><%=emp.empAddress %></td>
                                            <td><%=emp.empDepartment %></td>
                                            <td><%=emp.empPosition %></td>
                                            <td><%=emp.empDOJ %></td>
                                            <td><%=emp.empEmail %></td>
                                            <%--<td><asp:Button  runat="server" ID="deletebutton"  Text="delete" OnClick="ButtonDelete_OnClick"/></td>--%>
                                            <%--<td><a href="empEdit.aspx?id=<%= emp.Id %>">Edit</a></td>--%>
                                            <td><a href="DeleteJob2.aspx?id=<%= emp.Id %>" >Delete</a></td>

                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                            <!--main section-->

                            <div class="col-md-12  bg-dark">
                                <p class="text-center text-white mt-3">© 2022 WAi Technologies. All rights Reserved</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

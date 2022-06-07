<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewAllEmp.aspx.cs" Inherits="BootstapADOAssigmentDay57.viewAllEmp" %>

<%@ Import Namespace="Web.Services" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View All Employee</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
  
        <div class="container-fluid">
            <div class="row">
                <!-- navbar content start -->
                <div class="col-md-12 p-0">
                      <form id="form1" runat="server">
                    <nav class="navbar navbar-expand navbar-light " style="background-color: #25ccb6;">
                        
                            <img src="https://www.waiin.com/wp-content/uploads/2021/07/WAi-symbol-placeholder.png" class="logo-img" style="height: 60px; width: 120px;" />
                            <span class="text-white">Wai Technologies</span>
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
                    </nav>
                </div>

                <div class="col-md-12">
                    <div class="row">
                        <!--slide nav-->

                        <div class="col-md-2 bg-dark" >
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
                        <div class="col-md-10 ">
                            <div class="row p-3">
                                <div class="col-md-12 ">
                                    <marquee direction="" scrollamount="13" class="text-danger">
                                        <h4>Welcome Admin View All Employee Record</h4>
                                    </marquee>
                                    <h4 class="p-3 text-info  bg-dark mt-4 ">View All Employee</h4>
                                </div>

                                <%
                                    var empService = new EmployeeServices();
                                    var emps = empService.GetAll();

                                    foreach (var emp in emps)
                                    {
                                %>

                                <div class="col-md-3 p-3">
                                    <div class="card  shadow border-0" style="background-color: #25ccb6;">
                                        <div class="card-header p-0">
                                            <p class="text-white text-center p-2 mt-2">Employee Id : <span><%= emp.empNumber %></span></p>
                                            <img src="emp.jpg" style="height: 150px; width: 100%;" />
                                        </div>
                                        <div class="card-body bg-secondary ">
                                      
                                            <p class="text-white">
                                                Name :&nbsp&nbsp<span><%= emp.empName %></span>
                                                <br />
                                                Gender :&nbsp&nbsp<span><%= emp.empGender %></span>
                                                <br />
                                                Address :&nbsp&nbsp<span><%= emp.empAddress %></span>
                                                <br />
                                                Department :&nbsp&nbsp<span><%= emp.empDepartment %></span>
                                                <br />
                                                Position :&nbsp&nbsp<span><%= emp.empPosition %></span>
                                                <br />
                                                Email :&nbsp&nbsp<span><%= emp.empEmail %></span>
                                            </p>
                                        </div>
                                        <div class="card-footer">
                                            <p class=" mt-2">Join Date : <span class="text-muted"><%= emp.empDOJ %></span></p>

                                        </div>

                                    </div>
                                </div>


                                <%
                                    }
                                %>
                            </div>

                        </div>
                        <!--main section-->

                        <div class="col-md-12  bg-dark">
                            <p class="text-center text-white mt-3">© 2022 WAi Technologies. All rights Reserved</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>

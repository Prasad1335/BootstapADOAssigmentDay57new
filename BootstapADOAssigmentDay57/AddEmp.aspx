﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmp.aspx.cs" Inherits="BootstapADOAssigmentDay57.AddEmp" %>

<%@ Import Namespace="Web.Services" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add New Employee</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link href="css/style.css" rel="stylesheet" />
    <style>
      
    </style>
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
                                <img src="https://www.waiin.com/wp-content/uploads/2021/07/WAi-symbol-placeholder.png" class="logo-img" style="height: 60px; width: 120px;" />
                                <span>Technologies</span>
                                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                        <!--<li class="nav-item active">
                                    <a class="nav-link text-white font-weight-light">Home</a>
                                </li> -->


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

                            <div class="col-12 col-lg-2  bg-dark" style="height: 550px;">
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
                         <div class="col-12 col-lg-10 ">
                            
                                <div class="row mt-3">
                                    <div class="col-md-12">
                                          <asp:Label runat="server" ID="Label1" Visible="false" />
                                <h4 class="p-3 text-info  bg-dark mt-4 ">Add New Employee</h4>

                                    </div>
                                    <div class="col-md-3">
                                        <asp:Label ID="LabelEmployeeNumber" CssClass="Label" runat="server" Text=" Employee Id :"></asp:Label>
                                        <asp:TextBox ID="TextBoxEmployeeNumber" CssClass="form-control in" placeholder="enter employee id" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:Label ID="LabelEmployeeName" runat="server" CssClass="Label" Text=" Name :"></asp:Label>
                                        <asp:TextBox ID="TextBoxEmployeeName" CssClass="form-control in" placeholder="enter employee name" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:Label ID="RadioButtonListGender" runat="server" CssClass="Label" Text=" Gender :"></asp:Label>
                                        <asp:RadioButtonList ID="RadioButtonGender" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem style="margin-left: 45px;" Value="Male">&nbsp&nbsp Male</asp:ListItem>
                                            <asp:ListItem style="margin-left: 10px;" Value="Female">&nbsp&nbsp  Female</asp:ListItem>
                                            <asp:ListItem style="margin-left: 10px;" Value="Other">&nbsp&nbsp  Other</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                    <div class="col-md-3"></div>
                                    <div class="col-md-3">
                                        <asp:Label ID="LabelAddress" runat="server" CssClass="Label" Text=" Address :"></asp:Label>
                                        <asp:TextBox ID="TextBoxAddress" CssClass="form-control in" placeholder="enter employee Address" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:Label ID="LabelDepartment" runat="server" CssClass="Label" Text="department :"></asp:Label>
                                        <asp:TextBox ID="TextBoxDepartment" CssClass="form-control in" placeholder="enter employee department" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:Label ID="LabelPosition" runat="server" CssClass="Label" Text="Position :"></asp:Label>
                                        <asp:TextBox ID="TextBoxPosition" CssClass="form-control in" placeholder="enter employee position" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-md-3"></div>
                                    <div class="col-md-3">
                                        <asp:Label ID="LabelDoj" runat="server" CssClass="Label" Text=" Date of Join :"></asp:Label>
                                        <asp:TextBox ID="TextBoxDoj" TextMode="Date" CssClass="form-control in" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:Label ID="LabelEmail" runat="server" CssClass="Label" Text="Email :"></asp:Label>
                                        <asp:TextBox ID="TextBoxEmail" CssClass="form-control in" placeholder="enter employee email" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-md-3"> </div> <div class="col-md-3"></div>
                                  <div class="col-md-3">
                                        <asp:Button CssClass="btn" ID="Button2" runat="server" Text="Submit Deatils" OnClick="ButtonCreate_OnClick" /></div>
                                </div>

                            </div>
                            <!--main section-->

                         <div class="col-12 col-lg-12  bg-dark">
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

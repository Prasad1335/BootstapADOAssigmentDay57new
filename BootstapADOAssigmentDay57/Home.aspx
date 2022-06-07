<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BootstapADOAssigmentDay57.Home" %>
<%@ Import Namespace="Web.Services" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add New Employee</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link href="css/style.css" rel="stylesheet" />
    <style>
      
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="container-fluid">
            <div class="row bg-dark">
                <!-- navbar content start -->
                <div class="col-md-12 p-0">
                    <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #25ccb6;">
                        <div class="container-fluid">
                            <img src="https://www.waiin.com/wp-content/uploads/2021/07/WAi-symbol-placeholder.png" class="logo-img" style="height: 60px; width: 120px;" />
                            <span>Technologies</span>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                    <!--<li class="nav-item active">
                                    <a class="nav-link text-white font-weight-light">Home</a>
                                </li> -->
                                    <li class="nav-item active">
                                        <a class="nav-link text-white font-weight-light " data-toggle="modal" data-target="#myModal">Login</a>
                                    </li>

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
                <div class="col-md-12 p-0">
                   <div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
   
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
                                <img src="https://wai-techs.com/wp-content/uploads/2020/12/Picture2.png" style="min-height: 400px;max-height: 600px;" class="d-block w-100" alt="..." />
                            </div>
                            <div class="carousel-item">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_K6IGaKc_WIqpOniOk8XJO9Gn4OJVjeOYRnAK6rmZDD4Yu_uHY7AfPv140mYLjSE4tT4&usqp=CAU" class="d-block w-100" style="height: 600px;" alt="..." />
                            </div>

                        </div>
                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#demo" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
                </div>

               
            </div>

        </div>
        <!-- The Modal -->
        <div class="modal" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header alert alert-dark">
                        <h4 class="modal-title">Admin Login</h4>
                        <div class="cl-md-12">
                            <asp:Label runat="server" ID="LabelStatus" Visible="false" />
                        </div>
                        <button  type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body alert alert-warning ">
                        <form class="justify-content-center">
                            <asp:TextBox ID="TextBoxUserName" Style="margin-top:5px;" required="true" placeholder="enter username" class="border border-danger form-control shadow" runat="server"></asp:TextBox>
                            <asp:TextBox ID="TextBoxPassword"  Style="margin-top:10px;"  required="true" placeholder="enter user password" class="border border-danger form-control shadow" runat="server"></asp:TextBox>
                            <asp:Button ID="Button1"  Style="margin-top:10px;" CssClass=" btn-warning" runat="server" Text="login" OnClick="Button1_Click" />


                        </form>
                    </div>

                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-muted" data-bs-dismiss="modal">Close</button>
                    </div>

                </div>
            </div>
        </div>
    </form>
</body>

</html>

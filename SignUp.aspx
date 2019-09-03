<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>1800 Finder</title>

    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,500,700,600,800,900,300' rel='stylesheet' type='text/css'>
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />

    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="css/default.css">
    <link rel="stylesheet" type="text/css" href="css/responsive.css">
    <link rel="stylesheet" type="text/css" href="css/star-rating.css">
    <link href="assets/plugins/bootstrap-toastr/toastr.min.css" rel="stylesheet" />
    <link href="assets/plugins/bootstrap-toastr/toastr.css" rel="stylesheet" />


</head>
<body>

    <!--Start Header section-->
    <section id="header">
        <header>
            <div class="top-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 responsive-width-top">
                            <div class="social">
                                <div class="social-icon">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                    <a href="#"><i class="fa fa-dribbble"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 responsive-width-top">
                            <div class="links text-right">
                                <a href="AddList.aspx">Post an Ad</a>
                                <a href="SignUp.aspx">Register</a>
                                <a href="Login.aspx">Login</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--end top bar-->

            <!--start menu-bar-->
            <div class="menu-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="logo">
                                <a href="Default.aspx"><img src="images/logo.png" alt="classify"></a>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <nav role="navigation" class="navbar navbar-default">
                                <!-- Brand and toggle get grouped for better mobile display -->
                                <div class="navbar-header">
                                    <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div>
                                <!-- Collection of nav links and other content for toggling -->
                                <div id="navbarCollapse" class="collapse navbar-collapse">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li class="active dropdown">
                                            <a class="dropdown-toggle" href="Default.aspx">Home</a>
                                          
                                        </li>
                                        <li><a href="About.aspx">About</a></li>
                                        <li><a href="pricingplan.aspx">Pricing Plan</a></li>
                                        <li><a href="Category.aspx">Categories</a></li>
                                   
                                        <li><a href="contact.aspx">Contact</a></li>
                                    </ul>
                                </div>

                            </nav><!--end nav-->
                        </div>
                    </div>
                </div>
            </div><!--end menu-bar-->
        </header>
    </section><!--End Header section-->

    <!--main sub page heading-->
    <section id="page-head">
        <div class="container">
            <div class="row col-md-12">
                <div class="page-heading">
                    <h1>LOGIN</h1>
                    <h4>Login Required</h4>
                </div>
            </div>
        </div>
    </section><!--end main page heading-->
    <form runat="server">
    <section id="formSubmit">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
                    <div class="user-form">
                        <div class="user-form-set">
                            <h4>REGISTER</h4>
                            <div class="form-group">
                                <div class="form-input hlid">
                                    <span class="fa fa-user form-control-feedback"></span>
                                    <input class="form-control" type="text" id="txtuname" name="uname" placeholder="User Name or Email">
                                </div>
                                <div class="form-input hlid">
                                    <span class="fa fa-unlock-alt form-control-feedback"></span>
                                    <input class="form-control" type="text" id="txtmobile"   name="mobile" placeholder="Mobile">
                                </div>
                                <div class="form-input hlid">
                                    <span class="fa fa-user form-control-feedback"></span>
                                    <input class="form-control" type="password"  id="txtpass" name="password" placeholder="Password">
                                </div>
                                <div class="form-input hlid">
                                    <span class="fa fa-unlock-alt form-control-feedback"></span>
                                    <input class="form-control" type="password"  id="txtcnpass" name="Confirm Password" placeholder="Confirm Password">
                                </div>
                                <div class="form-input hlid">
                                    <input type="checkbox">
                                    <label>Remember me</label>
                                </div>
                                <div class="form-input hlid">
                                    <%--<input type="submit" name="register" id="ibtn" onclick="Register()" value="Register Now">--%>
                                   
                                    <button  id="ibtn" value="Submit" class="btn btn-block" onclick="Register()" >Sign Up</button>
                                </div>
                                <div class="form-input hid">
                                    <span class="fa fa-unlock-alt form-control-feedback"></span>
                                    <asp:TextBox runat="server" ID="txtotp"  placeholder="Enter Your Otp" class="form-control"></asp:TextBox>
                                    <%--<input class="form-control" type="text"  id="txtotp" name="txtotp" placeholder="Enter Your Otp">--%>
                                </div>
                                 <div class="form-input hid">
                                      
                                    <asp:HiddenField runat="server" ID="hfusername" />
                                    <asp:HiddenField runat="server" ID="hfotp" />
                                     <asp:Button ID="Button1" runat="server"  OnClientClick="return valitate();" Text="Enter Your Otp" OnClick="Button1_Click" />

                                     <%--<button name="Enter OTP"  onclick="valitate()"  id="btnvalitate">Enter OTP</button>--%>                                    
                                </div>
                            </div>
                            <div class="social-login">
                                <h4>LOGIN VIA SOCIAL ACCOUNT</h4>
                                <div class="social-accounts">
                                    <a href="#">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                    <a href="#">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                    <a href="#">
                                        <i class="fa fa-google-plus"></i>
                                    </a>
                                </div>
                            </div>
                            <p>Login with Social</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
        </form>
    <!--Footer-->
    <section id="footer">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="widget">
                            <h4>ABOUT</h4>
                            <p>Lorem ipsum dolor sit amet sectetuer esl adipiscing elit sed diam nonummy nibhi euismod tincidunt ut <span class="col">laoreet dolore</span> amet magna aliquam erat volutpat. </p>
                            <p>Ut wisi enim ad minim veniam quis dest nostrud exerci tation ullamcorper norme
                                suscipit lobortis commodo consequat.</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="widget">
                            <h4>PREMIUM ADs</h4>

                            <div class="footer-img">
                                <a href="#"><img src="http://placehold.it/80x80" alt="premium"></a>
                                <a href="#" class="footer-img-hover"><span>148$</span></a>
                            </div>


                            <div class="footer-img">
                                <a href="#"><img src="http://placehold.it/80x80" alt="premium"></a>
                                <a href="#" class="footer-img-hover"><span>148$</span></a>
                            </div>


                            <div class="footer-img">
                                <a href="#"><img src="http://placehold.it/80x80" alt="premium"></a>
                                <a href="#" class="footer-img-hover"><span>148$</span></a>
                            </div>


                            <div class="footer-img">
                                <a href="#"><img src="http://placehold.it/80x80" alt="premium"></a>
                                <a href="#" class="footer-img-hover"><span>148$</span></a>
                            </div>


                            <div class="footer-img">
                                <a href="#"><img src="http://placehold.it/80x80" alt="premium"></a>
                                <a href="#" class="footer-img-hover"><span>148$</span></a>
                            </div>


                            <div class="footer-img">
                                <a href="#"><img src="http://placehold.it/80x80" alt="premium"></a>
                                <a href="#" class="footer-img-hover"><span>148$</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="widget">
                            <h4>LATEST ADs</h4>
                            <div class="row">
                                <div class="col-md-4 col-sm-4 col-xs-4 latest">
                                    <div class="footer-img">
                                        <img src="http://placehold.it/80x80" alt="premium">
                                    </div>
                                </div>
                                <div class="col-md-8 col-xs-8 col-sm-8">
                                    <a href="#">M26r Car 2014</a>
                                   <ul>
                                       <li>$40,000</li>
                                       <li>Condition 10/10 & fully original all parts...</li>
                                   </ul>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4 col-sm-4 col-xs-4 latest">
                                    <div class="footer-img pull-left">
                                        <img src="http://placehold.it/80x80" alt="premium">
                                    </div>
                                </div>
                                <div class="col-md-8 col-xs-8 col-sm-8">
                                    <a href="#">F39r Car 2013.</a>
                                    <ul>
                                        <li>$59,000</li>
                                        <li>Black color & condition is 99.99%. Even no scratch...</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="widget">
                            <h4>NEWSLETTER</h4>
                            <p class="sign">Lorem ipsum dolor sit amet sectetuer in adipiscing elit sed diam...</p>
                            <p class="sign">Sign up for the newsletter !</p>
                            <form method="post">
                                <input type="email" name="email" placeholder="Your email address...">
                                <input type="submit" name="submit" value="sign-up">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="copyright text-center">
                            <p>@ All Copyrights Reseverd 2014 - Design & Development by <a class="col" href="http://joinwebs.com">Joinwebs</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>
        </footer>
    </section>
    <!--End Footer-->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/owl.carousel.js"></script>
    <script src="js/default.js"></script>
    <script src="layerslider/js/greensock.js"></script>
    <script src="layerslider/js/layerslider.kreaturamedia.jquery.js"></script>
    <script src="layerslider/js/layerslider.transitions.js"></script>
    <script src="assets/dist/js/ui-toastr.js"></script>
    <script src="assets/plugins/bootstrap-toastr/toastr.js"></script>
    <script src="assets/plugins/bootstrap-toastr/toastr.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#hfotp").val('');
            $(".hid").hide();
        });
        function valitate() {

            if ($("#hfotp").val() == $("#txtotp").val()) {
                if ($("[id*=txtuname]").val() == '' || $("[id*=txtmobile]").val() == '' || $("[id*=txtpass]").val() == '' || $("[id*=txtcnpass]").val() == '') {
                    toastr.warning("All fields are mandatory.", "SignUp Notifications")
                    return;
                }
                if ($("#txtpass").val() != $("#txtcnpass").val()) {
                    toastr.warning("Password and Confirm Password must be same.", "SignUp Notifications")
                    return;
                }

                var loginFrm = new FormData();
                loginFrm.append("uname", $("[id*=txtuname]").val());
                loginFrm.append("mobile", $("[id*=txtmobile]").val());
                loginFrm.append("pass", $("[id*=txtpass]").val());
                loginFrm.append("otp", $("#hfotp").val());
                $('#ibtn').html('<i class="fa fa-spin fa-spinner"></i>  Wait..').attr('disabled', true);                $.ajax({
                    url: "services/createuser.ashx",
                    type: "POST",
                    contentType: false,
                    processData: false,
                    data: loginFrm,
                    dataType: "json",
                    success: function (Response) {
                        if (Response.Success) {
                            toastr.success(Response.Message, "SignUp Notifications")
                            $('#ibtn').html('Submit').attr('disabled', false);
                            $('#myModal').modal('hide');
                            $("#hfotp").val('');
                            window.location.href = "/Login.aspx";
                            //cleartextboxes();
                        }
                        else {
                            $('#ibtn').html('Submit').attr('disabled', false);

                            toastr.error(Response.Message, "SignUp Notifications");

                        }
                    },
                    error: function (err) {

                        $('#ibtn').html('Submit').attr('disabled', false);
                        toastr.error(err.statusText, "SignUp Notifications")
                    }
                });
                return false;
            } else {
                alert("Otp Is Not Valid");
                location.reload();
                return false;
            }

        };
         function Register() {

             if ($("[id*=txtuname]").val() == '' || $("[id*=txtmobile]").val() == '' || $("[id*=txtpass]").val() == '' || $("[id*=txtcnpass]").val() == '') {
                 toastr.warning("All fields are mandatory.", "SignUp Notifications")
                 return;
             }
             if ($("#txtpass").val() != $("#txtcnpass").val()) {
                 toastr.warning("Password and Confirm Password must be same.", "SignUp Notifications")
                 return;
             }

             var loginFrm = new FormData();
             loginFrm.append("uname", $("[id*=txtuname]").val());
             loginFrm.append("mobile", $("[id*=txtmobile]").val());
             loginFrm.append("pass", $("[id*=txtpass]").val());
             loginFrm.append("otp", $("#hfotp").val());
             $('#ibtn').html('<i class="fa fa-spin fa-spinner"></i>  Wait..').attr('disabled', true);             $.ajax({
                 url: "services/createuser.ashx",
                 type: "POST",
                 contentType: false,
                 processData: false,
                 data: loginFrm,
                 dataType: "json",
                 success: function (Response) {
                     if (Response.Success) {
                         toastr.success(Response.Message, "SignUp Notifications")
                         $('#ibtn').html('Submit').attr('disabled', false);
                         $('#myModal').modal('hide');
                         $("#hfotp").val(Response.otp);
                        // $("#hfusername").val(Response.uname);
                         $(".hid").show();
                        // $(".hlid").hide();
                        
                         setTimeout(function () {
                             
                             $("#hfotp").val('');
                         }, 30000);
                         //window.location.href = "/Login.aspx";
                         //cleartextboxes();
                     }
                     else {
                         $('#ibtn').html('Submit').attr('disabled', false);

                         toastr.error(Response.Message, "SignUp Notifications");
                        
                     }
                 },
                 error: function (err) {

                     $('#ibtn').html('Submit').attr('disabled', false);
                     toastr.error(err.statusText, "SignUp Notifications")
                 }
             });
         }
    </script>
</body>
</html>
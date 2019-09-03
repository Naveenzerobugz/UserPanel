<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>1800 Findr Login</title>

    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,500,700,600,800,900,300' rel='stylesheet' type='text/css'>
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />

    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="css/default.css">
    <link rel="stylesheet" type="text/css" href="css/responsive.css">
    <link rel="stylesheet" type="text/css" href="css/star-rating.css">

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
                            <a href="Defaut.aspx">Post an Ad</a>
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
                            </nav>
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
    <section id="formSubmit">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
                    <div class="user-form">
                        <div class="user-form-set">
                            <h4>LOGIN</h4>
                            <form class="form-group" runat="server">
                                <div class="form-input hlid">
                                    <span class="fa fa-user form-control-feedback"></span>
                                    <input class="form-control" type="text" id="txtuname" name="txtuname" placeholder="User Name or Email">
                                </div>
                                <div class="form-input hlid">
                                    <span class="fa fa-unlock-alt form-control-feedback"></span>
                                    <input class="form-control" type="password"  id="txtpass" name="txtpass" placeholder="Password">
                                </div>
                                <div class="form-input hlid">
                                    <input type="checkbox">
                                    <label>Remember me</label>
                                </div>
                                <div class="form-input hlid">
                                    <input type="submit" name="login" value="login" onclick="tryLogin()"  id="ibtn">
                                    <input type="hidden" id="hfotp" />
                                    <input type="hidden" id="hfurl" />
                                </div>
                              
                                <div class="form-input">
                                    <p><a href="#">Forgot Password?</a></p>
                                </div>
                            </form>
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
                            <p>Are you a new here? <a href="#" class="col">Get Register Free</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
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


    <script>
        $(document).ready(function () {
           
        });
       
        function tryLogin() {
            if ($("[id*=txtuname]").val() == '' || $("[id*=txtpass]").val() == '') {
                toastr.warning("All fields are mandatory.", "Login Notifications")
                return;
            }
            var loginFrm = new FormData();
            loginFrm.append("uname", $("[id*=txtuname]").val());
            loginFrm.append("upass", $("[id*=txtpass]").val());
            $('#ibtn').html('<i class="fa fa-spin fa-spinner"></i>  Wait..').attr('disabled', true);
            $.ajax({
                url: "services/userlogin.ashx",
                type: "POST",
                contentType: false,
                processData: false,
                data: loginFrm,
                dataType: "json",
                success: function (Response) {
                    if (Response.Success)
                    {
                        window.location.href = Response.Message;
                    }
                    else {
                        $('#ibtn').html('Submit').attr('disabled', false);
                        toastr.error(Response.Message, "Login Notifications")
                    }
                },
                error: function (err) {
                    $('#ibtn').html('Submit').attr('disabled', false);
                    toastr.error(err.statusText, "Login Notifications")
                }
            });
        }
    </script>

</body>
</html>
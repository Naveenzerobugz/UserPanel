<%@ Page Language="C#" AutoEventWireup="true" CodeFile="alogin.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin</title>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,500,700,600,800,900,300' rel='stylesheet' type='text/css'>
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="css/default.css">
    <link rel="stylesheet" type="text/css" href="css/responsive.css">
    <link rel="stylesheet" type="text/css" href="css/star-rating.css">
    <link href="../assets/plugins/bootstrap-toastr/toastr.css" rel="stylesheet" />
    <link href="../assets/plugins/bootstrap-toastr/toastr.min.css" rel="stylesheet" />

</head>
<body>
    <!--Start Header section-->
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
    </section>
    <!--end main page heading-->
    <section id="formSubmit">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
                    <div class="user-form">
                        <div class="user-form-set">
                            <h4>LOGIN</h4>
                            <form method="post" class="form-group">
                                <div class="form-input">
                                    <span class="fa fa-user form-control-feedback"></span>
                                    <input class="form-control" type="text" placeholder="Username" title="Please enter you username" name="username" id="username">
                                </div>
                                <div class="form-input">
                                    <span class="fa fa-unlock-alt form-control-feedback"></span>
                                    <input class="form-control" type="password" title="Please enter your password" placeholder="******" name="password" id="password">
                                </div>
                                <div class="form-input">
                                    <input type="checkbox">
                                    <label>Remember me</label>
                                </div>
                                <div class="form-input">
                                    <input type="submit" name="login" value="login" onclick="tryLogin()" id="ibtn">
                                </div>

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Footer-->
  
    
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/owl.carousel.js"></script>
    <script src="js/default.js"></script>
    <script src="layerslider/js/greensock.js"></script>
    <script src="layerslider/js/layerslider.kreaturamedia.jquery.js"></script>
    <script src="layerslider/js/layerslider.transitions.js"></script>
     <script src="../design/plugins/bootstrap-toastr/toastr.min.js"></script>
            <script src="../design/plugins/bootstrap-toastr/toastr.js"></script>
            <script src="../design/dist/js/ui-toastr.js"></script>
            <script src="../design/dist/js/jquery.blockui.min.js"></script>
    
    <script>
        function tryLogin() {
            if ($("[id*=username]").val() == '' || $("[id*=password]").val() == '') {
                toastr.warning("All fields are mandatory.", "Login Notifications")
                return;
            }
            var loginFrm = new FormData();
            loginFrm.append("uname", $("[id*=username]").val());
            loginFrm.append("upass", $("[id*=password]").val());
            $('#ibtn').html('<i class="fa fa-spin fa-spinner"></i>  Wait..').attr('disabled', true);

            $.ajax({
                url: "services/alogin.ashx",
                type: "POST",
                contentType: false,
                processData: false,
                data: loginFrm,
                dataType: "json",
                success: function (Response) {
                    if (Response.Success) {
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

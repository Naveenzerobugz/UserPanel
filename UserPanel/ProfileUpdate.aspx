<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UsersMasterPage.master" AutoEventWireup="true" CodeFile="ProfileUpdate.aspx.cs" Inherits="Admin_MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="Server">

    <!-- Content -->
    <div class="dashboard-content">
        <!-- Titlebar -->
        <div id="titlebar">
            <div class="row">
                <div class="col-md-12">
                    <h2>My Profile</h2>
                    <!-- Breadcrumbs -->
                    <nav id="breadcrumbs">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Dashboard</a></li>
                            <li>My Profile</li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>

        <div class="row">
            <!-- Profile -->
            <div class="col-lg-8 col-md-8">
                <div class="dashboard-list-box">
                    <%--  <div class="user_image">                   
                        <img src="../images/images/profilepic.png" />
                        <div class="buttons-to-right">
                            <a href="#" class="button gray"><i class="fa fa-pencil"></i>Edit Profile</a>
                        </div>
                    </div>--%>
                    <div class="user_info">
                        <div class="col-lg-12 col-md-12">
                            <div class="add_listing_info">
                                <h3>Update Profile </h3>
                                <div class="form-group">
                                    <label class="label-title">UserName</label>
                                    <input type="text" name="username" id="Username" placeholder="Username" autocomplete="off" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label class="label-title">Mobile </label>
                                    <input type="text" name="mobile" id="mobile" placeholder="Mobile" autocomplete="off" class="form-control" />
                                </div>
                                <div class="add_listing_info">
                                    <button id="ibtn" class="btn" onclick="UpdateProfile()">Update Profile</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Copyrights -->
                <div class="col-md-12">
                    <div class="copyrights">Copyright &copy; 2017 ElemoListing Private Limited. All Rights Reserved</div>
                </div>
            </div>
        </div>
        <!-- Content / End -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="Server">
    <script src="../design/js/jquery.min.js"></script>
    <script>
        function getParameterByName(name) {
            var match = RegExp('[?&]' + name + '=([^&]*)').exec(window.location.search);
            return match && decodeURIComponent(match[1].replace(/\+/g, ' '));
        }
        var id = getParameterByName('n');
        getChanges();
        function getChanges() {
            $.ajax({
                type: 'POST',
                url: 'services/getUpdateProfile.ashx?sc=' + id,
                contentType: false,
                dataType: 'json',
                success: function (Response) {
                    if (Response.Success)
                    {
                        var arr = Response.Message.split('~');
                        document.getElementById("Username").value = arr[1];
                        document.getElementById("mobile").value = arr[2];
                    }
                }
            });
        }

        function UpdateProfile() {
          
            if ($("[id*=Username]").val() == '' || $("[id*=mobile]").val() == '') {
                toastr.warning("All fields are mandatory.", " List Update Notifications")
                return;
            }
            var loginFrm = new FormData();
            loginFrm.append("userid", id);
            loginFrm.append("Username", $("[id*=Username]").val());
            loginFrm.append("mobile", $("[id*=mobile]").val());
            $('#ibtn').html('<i class="fa fa-spin fa-spinner"></i> Wait..').attr('disabled', true); $.ajax({
                url: "services/UserProfileUpdate.ashx",
                type: "POST",
                contentType: false,
                processData: false,
                data: loginFrm,
                dataType: "json",
                success: function (Response) {
                    if (Response.Success)
                    {
                        toastr.success(Response.Message, "Update  Notifications")
                        $('#ibtn').html('Submit').attr('disabled', false);
                    }
                    else {
                        $('#ibtn').html('Submit').attr('disabled', false);
                        toastr.error(Response.Message, "Update  Notifications")
                    }
                },
                error: function (err) {
                    $('#ibtn').html('Submit').attr('disabled', false);
                    toastr.error(err.statusText, "Update  Notifications")
                }
            });
        }
    </script>
</asp:Content>


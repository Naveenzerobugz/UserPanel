<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UsersMasterPage.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="Admin_MyProfile" %>

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
            <div class="col-lg-12 col-md-12">
                <div class="dashboard-list-box">
                    <div class="user_image">
                        <img src="../design/images/happy-client-01.jpg" alt="image" />
                        <div id="editprofile"></div>
                    </div>
                    <div class="user_info">
                        <ul>
                            <li><span>Name:</span> User Name</li>
                            <li><span>Email:</span> youremail@gmail.com</li>
                            <li><span>Phone:</span> +61-123456789</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="copyrights">Copyright &copy; 2017 ElemoListing Private Limited. All Rights Reserved</div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="Server">
          <script src="../assets/js/jquery.min.js"></script>
    <script>
        function getParameterByName(name)
        {
            var match = RegExp('[?&]' + name + '=([^&]*)').exec(window.location.search);
            return match && decodeURIComponent(match[1].replace(/\+/g, ' '));
        }
        var id = getParameterByName('lid');
        $("#editprofile").html("<img src='../design/input-spinner.gif' />").load("services/UpdateProfile.ashx");

        //$("#editprofile").html("<img src='../design/input-spinner.gif' />").load("services/UpdateProfile.ashx?lid="+id);
    </script>
 
</asp:Content>


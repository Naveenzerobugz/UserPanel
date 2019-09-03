<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UsersMasterPage.master" AutoEventWireup="true" CodeFile="Mylisting.aspx.cs" Inherits="Admin_Mylisting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="Server">
    <div class="dashboard-content">
        <!-- Titlebar -->
        <div id="titlebar">
            <div class="row">
                <div class="col-md-12">
                    <h2>My Listings</h2>
                    <!-- Breadcrumbs -->
                    <nav id="breadcrumbs">
                        <ul>
                            <li><a href="Default.aspx">Home</a></li>
                            <li><a href="Default.aspx">Dashboard</a></li>
                            <li>My Listings</li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="row">
            <!-- Listings -->
            <div class="col-lg-12 col-md-12">
                <div class="dashboard-list-box">
                    <h4>Active Listings</h4>
                    <div id="mylist"></div>
                </div>
            </div>
            <!-- Copyrights -->
            <div class="col-md-12">
                <div class="copyrights">Copyright &copy; 2017 ElemoListing Private Limited. All Rights Reserved</div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="Server">
    <script src="../design/js/jquery.min.js"></script>
    <script>
        function getParameterByName(name) {
            var match = RegExp('[?&]' + name + '=([^&]*)').exec(window.location.search);
            return match && decodeURIComponent(match[1].replace(/\+/g, ' '));
        }
        var id = getParameterByName('sc');
        $("#mylist").html("<img src='../design/input-spinner.gif' />").load("services/ViewList.ashx?sc=" + id);
        function DeleteList(id) {
            var loginFrm = new FormData();
            loginFrm.append("sc", id);
            $.ajax({
                url: "services/DeleteList.ashx",
                type: "POST",
                contentType: false,
                processData: false,
                data: loginFrm,
                dataType: "json",
                success: function (Response) {
                    if (Response.Success) {
                        toastr.success(Response.Message, "List Notifications")
                        window.location.reload();
                    }
                    else
                    {
                        toastr.error(Response.Message, "List Notifications")
                    }
                },
                error: function (err) {
                    toastr.error(err.statusText, "List Notifications")
                }
            });
        }
    </script>
    <script src="js/list.js"></script>
</asp:Content>


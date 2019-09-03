<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UserReport.aspx.cs" Inherits="Admin_Review" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
 <%--   <link href="../assets/plugins/data-table/media/css/dataTables.bootstrap.min.css" rel="stylesheet" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="Server">
    <!-- Content -->
    <div class="dashboard-content">
        <!-- Titlebar -->
        <div id="titlebar">
            <div class="row">
                <div class="col-md-12">
                    <h2>Reviews</h2>
                    <!-- Breadcrumbs -->
                    <nav id="breadcrumbs">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Dashboard</a></li>
                            <li>Reviews</li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>

        <div class="panel-body">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover" id="reftable">
                    <thead>
                        <tr class="info">
                            <th>Date</th>   
                            <th>UserName</th>                            
                            <th>Status</th>                        
                            <th>Mobile</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- Copyrights -->
        <div class="col-md-12">
            <div class="copyrights">Copyright &copy; 2017 ElemoListing Private Limited. All Rights Reserved</div>
        </div>
    </div>
    <%--</div>--%>
    <!-- Content / End -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="Server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  

    <script>
        $(document).ready(function () {
            UserData();
        });
        window.onload = UserData;
        function UserData() {
            $.fn.dataTable.ext.errMode = 'none';
            $('#reftable').DataTable({
                "destroy": true,
                "bFilter": false,
                "processing": true,
                "serverSide": true,
                "pageLength": 10,
                "filter": false,
                "order": [[0, 'desc']],
                "ajax": {
                    "url": "services/getUser.ashx",
                    "type": "POST"
                },
                "columns": [
              
                { "data": "RegDate" },
                { "data": "UserName" },
                { "data": "UserStatus" },
                { "data": "Mobile" }
               
                ]
            });
        }
    </script>

</asp:Content>


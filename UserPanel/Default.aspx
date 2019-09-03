<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UsersMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="Server">

    <div class="dashboard-content">
        <!-- Titlebar -->
        <div id="titlebar">
            <div class="row">
                <div class="col-md-12">
                    <h2>Dashboard</h2>
                    <!-- Breadcrumbs -->
                    <nav id="breadcrumbs">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li>Dashboard</li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Notice -->
        <div class="row">
            <div class="col-md-12">
                <div class="notification alert alert-success alert-dismissible" role="alert">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <p>Your listing <strong>Hotel Govendor</strong> has been approved!</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="dashboard-info-box">
                <div class="dashboard-info color-1">
                    <h4>6</h4>
                    <span>Published Listings</span>
                </div>
                <div class="dashboard-info color-2">
                    <h4>1</h4>
                    <span>Pending  Listings</span>
                </div>
                <div class="dashboard-info color-3">
                    <h4>2</h4>
                    <span>Expired  Listings</span>
                </div>
                <div class="dashboard-info color-4">
                    <h4>520</h4>
                    <span>Total Views</span>
                </div>
                <div class="dashboard-info color-5">
                    <h4>820</h4>
                    <span>Total Reviews</span>
                </div>
                <div class="dashboard-info color-6">
                    <h4>15</h4>
                    <span>Bookmarked Listings</span>
                </div>
            </div>
        </div>
        <!-- Recent Activity -->
        <div class="row">
            <div class="col-lg-12">
                <div class="dashboard-list-box with-icons margin-top-20">
                    <h4>Recent Activities</h4>
                    <ul>
                        <li>
                            <i class="list-box-icon fa fa-list"></i>Your listing <strong><a href="#">The Morning Hotel</a></strong> has been approved!
							<a href="#" class="close-list-item"><i class="fa fa-close"></i></a>
                        </li>

                        <li>
                            <i class="list-box-icon fa fa-star-o"></i>Kathy Brown left a review on <strong>
                                <a href="#">The Morning Hotel</a></strong>
                            <a href="#" class="close-list-item"><i class="fa fa-close"></i></a>
                        </li>

                        <li>
                            <i class="list-box-icon fa fa-bookmark-o"></i>Someone bookmarked your <strong><a href="#">Laisa Spa Center</a></strong> listing!
							<a href="#" class="close-list-item"><i class="fa fa-close"></i></a>
                        </li>

                        <li>
                            <i class="list-box-icon fa fa-star-o"></i>Kathy Brown left a review on <strong>
                                <a href="#">Auto Repair Shop</a></strong>
                            <a href="#" class="close-list-item"><i class="fa fa-close"></i></a>
                        </li>

                        <li>
                            <i class="list-box-icon fa fa-bookmark-o"></i>Someone bookmarked your <strong><a href="#">The Shelby Apartment</a></strong> listing!
							<a href="#" class="close-list-item"><i class="fa fa-close"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <!-- Copyrights -->
            <div class="col-md-12">
                <div class="copyrights">Copyright &copy; 2017 ElemoListing Private Limited. All Rights Reserved</div>
            </div>
        </div>
    </div>
    </div>
    </div>
    
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="Server">
</asp:Content>


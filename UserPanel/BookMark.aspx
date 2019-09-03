<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UsersMasterPage.master" AutoEventWireup="true" CodeFile="BookMark.aspx.cs" Inherits="Admin_BookMark" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
       <!-- Content -->
            <div class="dashboard-content">
                <!-- Titlebar -->
                <div id="titlebar">
                    <div class="row">
                        <div class="col-md-12">
                            <h2>Bookmarks</h2>
                            <!-- Breadcrumbs -->
                            <nav id="breadcrumbs">
                                <ul>
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">Dashboard</a></li>
                                    <li>Bookmarks</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <!-- Listings -->
                    <div class="col-lg-12 col-md-12">
                        <div class="dashboard-list-box">
                            <h4>Bookmarks Listings</h4>
                            <ul>
                                <li>
                                    <div class="list-box-listing">
                                        <div class="list-box-listing-img"><a href="#"><img src="../design/images/listing_img1.jpg" /></a></div>
                                        <div class="list-box-listing-content">
                                            <div class="inner">
                                                <h3><a href="#">Tom's Restaurant</a></h3>
                                                <span>964 School Street, New York</span>
                                                <div class="star-rating">
                                                    <div class="rating-counter">(12 reviews)</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="buttons-to-right">
                                        <a href="#" class="button red"><i class="fa fa-trash-o"></i> Delete</a>
                                    </div>
                                </li>

                                <li>
                                    <div class="list-box-listing">
                                        <div class="list-box-listing-img"><a href="#"><img src="../design/images/listing_img1.jpg" /></a></div>
                                        <div class="list-box-listing-content">
                                            <div class="inner">
                                                <h3><a href="#">Tom's Restaurant</a></h3>
                                                <span>964 School Street, New York</span>
                                                <div class="star-rating">
                                                    <div class="rating-counter">(12 reviews)</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="buttons-to-right">
                                        <a href="#" class="button red"><i class="fa fa-trash-o"></i> Delete</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="list-box-listing">
                                        <div class="list-box-listing-img"><a href="#"><img src="../design/images/listing_img1.jpg" /></div>
                                        <div class="list-box-listing-content">
                                            <div class="inner">
                                                <h3><a href="#">Tom's Restaurant</a></h3>
                                                <span>964 School Street, New York</span>
                                                <div class="star-rating">
                                                    <div class="rating-counter">(12 reviews)</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="buttons-to-right">
                                        <a href="#" class="button red"><i class="fa fa-trash-o"></i> Delete</a>
                                    </div>
                                </li>
                                <li>
                                    <div class="list-box-listing">
                                        <div class="list-box-listing-img"><a href="#"><img src="../design/images/listing_img1.jpg" /></a></div>
                                        <div class="list-box-listing-content">
                                            <div class="inner">
                                                <h3><a href="#">Tom's Restaurant</a></h3>
                                                <span>964 School Street, New York</span>
                                                <div class="star-rating">
                                                    <div class="rating-counter">(12 reviews)</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="buttons-to-right">
                                        <a href="#" class="button red"><i class="fa fa-trash-o"></i> Delete</a>
                                    </div>
                                </li>
                            </ul>
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
<asp:Content ID="Content3" ContentPlaceHolderID="foot" Runat="Server">
</asp:Content>


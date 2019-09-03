<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pricingplan.aspx.cs" Inherits="pricingplan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
     <section id="page-head">
        <div class="container">
            <div class="row col-md-12">
                <div class="page-heading">
                    <h1>Pricing Plan</h1>
                    <h4>Pricing Plan can be made anytime</h4>
                </div>
            </div>
        </div>
    </section><!--end main page heading-->
    <!--Detail -->
    <section id="detail">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="plan">
                        <h4 class="inner-heading">GET LOYAL AUDIENCE</h4>
                        <div class="price-content">
                            <p><strong>Lorem ipsum dolor sit amet</strong> consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam quis nostrud lobortis commodo consequat. </p>
                            <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. </p>
                        </div>
                        <div class="pricing-plan">
                            <h4 class="inner-heading">PRICING PLANS</h4>
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="price-plan">
                                        <h4><span>$30</span></h4>
                                        <div class="user-plan">
                                            <h4>1 DAY PLAN</h4>
                                            <ul>
                                                <li>1 Featured Ad</li>
                                                <li>01 Day</li>
                                                <li>100% Secure</li>
                                                <li>10 Regular Ads</li>
                                            </ul>
                                            <a href="#">Purchase Now</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="price-plan">
                                        <h4><span>$80</span></h4>
                                        <div class="user-plan">
                                            <h4>15 DAY PLAN</h4>
                                            <ul>
                                                <li>15 Featured Ad</li>
                                                <li>15 Day</li>
                                                <li>100% Secure</li>
                                                <li>30 Regular Ads</li>
                                            </ul>
                                            <a href="#">Purchase Now</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="price-plan">
                                        <h4><span>$130</span></h4>
                                        <div class="user-plan">
                                            <h4>1 DAY PLAN</h4>
                                            <ul>
                                                <li>30 Featured Ad</li>
                                                <li>30 Day</li>
                                                <li>100% Secure</li>
                                                <li>unlimited Regular Ads</li>
                                            </ul>
                                            <a>Purchase Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="sidebar">
                        <div class="side-widget">
                            <h4 class="inner-heading">ACCOUNT OVERVIEW</h4>
                            <div class="sidebar-account-overview">
                                <p>Total Ads :</p>
                                <span>12</span>
                            </div>
                            <div class="sidebar-account-overview">
                                <p>Featured Ads : </p>
                                <span>02</span>
                            </div>
                            <div class="sidebar-account-overview">
                                <p>Featured ads left : </p>
                                <span>unlimited</span>
                            </div>
                        </div>
                        <!--advertisement-->
                        <div class="side-widget">
                            <h4 class="inner-heading">ADVERTISEMENT</h4>
                            <div class="side-widget-adv">
                                <a href="#"><img src="http://placehold.it/300x250" alt="google ads"></a>
                            </div>
                        </div><!--end advertisement widget-->

                    </div>
                </div>
            </div>
        </div>
    </section><!--end details-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" Runat="Server">
</asp:Content>


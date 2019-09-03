<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
     <!--main sub page heading-->
    <section id="page-head" class="margin-control">
        <div class="container">
            <div class="row col-md-12">
                <div class="page-heading">
                    <h1>UNCATEGORIZED</h1>
                    <h4>21 Ads in subcategories</h4>
                </div>
            </div>
        </div>
    </section><!--end main page heading-->

    <!--map-->
    <section id="map">
        <!--map-->
        <div class="map margin-control">
            <div class="map-canvas">
                <iframe src="https://www.google.com/maps/embed?pb=!1m12!1m8!1m3!1d13605.559558133331!2d74.25901470000001!3d31.51344985!3m2!1i1024!2i768!4f13.1!2m1!1svirginia!5e0!3m2!1sen!2s!4v1427281032713"></iframe>
            </div>
        </div><!--end map-->
    </section>
     <section id="searchBar">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <form method="post">
                        <input class="keyword" type="text" name="keyword" placeholder="Enter Keyword Here...">
                        <div class="label">
                            <select class="select">
                                <option>Fashion</option>
                                <option>House</option>
                                <option>Electronics</option>
                            </select>
                        </div>
                        <div class="label">
                            <select class="select">
                                <option>Location</option>
                                <option>USA</option>
                                <option>UK</option>
                            </select>
                        </div>
                        <a href="#" class="location">
                            <i class="fa fa fa-location-arrow "></i>
                        </a>
                        <div class="location-tip">
                            <span class="location-range">499 km</span>
                        </div>
                        <button type="submit" name="submit" class="search-btn">Go Search</button>
                    </form>
                </div>
            </div>
        </div>
    </section> <!--end search bar-->

    <!--Detail -->
    <section id="detail">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="ads-detail">
                        <div class="premium-ads-sub">
                            <h4 class="inner-heading">PREMIUM ADs</h4>
                            <div class="row">
                                <div class="col-sm-4 padding-control">
                                    <div class="ads">
                                        <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                        <div class="ads-title"><p><a href="#">Classic Red Bike</a></p></div>
                                        <a href="#" class="ads-hover">
                                            <span>$1,000</span>
                                            <i class="fa fa-cab fa-2x"></i>
                                        </a>
                                    </div>
                                </div>

                                <div class="col-sm-4 padding-control">
                                    <div class="ads">
                                        <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                        <div class="ads-title"><p><a href="#">Expensive Car</a></p></div>
                                        <a href="#" class="ads-hover">
                                            <span>$3,000</span>
                                            <i class="fa fa-cab fa-2x"></i>
                                        </a>
                                    </div>
                                </div>

                                <div class="col-sm-4 padding-control">
                                    <div class="ads">
                                        <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                        <div class="ads-title"><p><a href="#">Antique things for sale</a></p></div>
                                        <a href="#" class="ads-hover">
                                            <span>$5,000</span>
                                            <i class="fa fa-cab fa-2x"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div> <!--end premium ads-->
                    </div>


                    <!--Related Ads-->
                    <div id="relatedAds">
                        <h4 class="inner-heading">RELATED ADs</h4>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="ad-tabs">
                                    <span class="tab active" id="content1">Latest Ads</span>
                                    <span class="tab" id="content2">Most Popular Ads</span>
                                    <span class="tab" id="content3">Random Ads</span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 content content1">
                                <div class="row">
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Classic Red Bike</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$4,000</span>
                                                <i class="fa fa-motorcycle fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Writter Available 24/7</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$2,000</span>
                                                <i class="fa fa-laptop fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Creative Tattos</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$500</span>
                                                <i class="fa fa-heart fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Branding on demand</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$3,000</span>
                                                <i class="fa fa-cog fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Classic Car</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$15,000</span>
                                                <i class="fa fa-cab fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Bike for kids</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$5,000</span>
                                                <i class="fa fa-bicycle fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Expensive Red Car</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$5,000</span>
                                                <i class="fa fa-cab fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Black Sun Glasses</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$1,000</span>
                                                <i class="fa fa-bars fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Food Available 24/7</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$500</span>
                                                <i class="fa fa-birthday-cake fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 content content2">
                                <div class="row">
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Classic Red Bike</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$4,000</span>
                                                <i class="fa fa-motorcycle fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Writter Available 24/7</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$2,000</span>
                                                <i class="fa fa-laptop fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Creative Tattos</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$500</span>
                                                <i class="fa fa-heart fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Branding on demand</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$3,000</span>
                                                <i class="fa fa-cog fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Classic Car</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$15,000</span>
                                                <i class="fa fa-cab fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Bike for kids</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$5,000</span>
                                                <i class="fa fa-bicycle fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Expensive Red Car</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$5,000</span>
                                                <i class="fa fa-cab fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Black Sun Glasses</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$1,000</span>
                                                <i class="fa fa-bars fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Food Available 24/7</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$500</span>
                                                <i class="fa fa-birthday-cake fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 content content3">
                                <div class="row">
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Classic Red Bike</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$4,000</span>
                                                <i class="fa fa-motorcycle fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Writter Available 24/7</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$2,000</span>
                                                <i class="fa fa-laptop fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Creative Tattos</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$500</span>
                                                <i class="fa fa-heart fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Branding on demand</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$3,000</span>
                                                <i class="fa fa-cog fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Classic Car</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$15,000</span>
                                                <i class="fa fa-cab fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Bike for kids</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$5,000</span>
                                                <i class="fa fa-bicycle fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Expensive Red Car</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$5,000</span>
                                                <i class="fa fa-cab fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Black Sun Glasses</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$1,000</span>
                                                <i class="fa fa-bars fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-sm-4 adp">
                                        <div class="ads">
                                            <a href="#"><img src="http://placehold.it/255x218" alt="ads"></a>
                                            <div class="ads-title"><p><a href="#">Food Available 24/7</a></p></div>
                                            <a href="#" class="ads-hover">
                                                <span>$500</span>
                                                <i class="fa fa-birthday-cake fa-2x"></i>
                                            </a>
                                        </div>
                                    </div>

                                </div>
                            </div>
                    </div><!--end related ads-->
                        <div class="row">
                            <div class="pagi">
                                <ul class="pagination">
                                    <li class="disabled"><a href="#">Prev</a></li>
                                    <li class="active"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#">Next</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="sidebar">
                        <div class="side-widget clearfix">
                            <h4 class="inner-heading">SUBCATEGORIES</h4>
                            <div class="subcat-widget">
                                <p>Jobs</p>
                                <span>204</span>
                            </div>
                            <div class="subcat-widget">
                                <p>Real Estate</p>
                                <span>300</span>
                            </div>
                            <div class="subcat-widget">
                                <p>Vehicles</p>
                                <span>102</span>
                            </div>
                            <div class="subcat-widget">
                                <p>Electronics</p>
                                <span>310</span>
                            </div>
                            <div class="subcat-widget">
                                <p>Pets</p>
                                <span>52</span>
                            </div>
                            <div class="subcat-widget">
                                <p>Services</p>
                                <span>250</span>
                            </div>
                            <div class="subcat-widget">
                                <p>Fashion</p>
                                <span>122</span>
                            </div>
                            <div class="subcat-widget">
                                <p>Metrimonials</p>
                                <span>10</span>
                            </div>
                        </div><!--end premium widget-->


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


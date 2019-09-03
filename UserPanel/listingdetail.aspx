<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UsersMasterPage.master" AutoEventWireup="true" CodeFile="listingdetail.aspx.cs" Inherits="Admin_listingdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .imageupload {
            display: table-cell;
            vertical-align: middle;
            font-size: 12px;
            color: #a3a3a3;
            width: 58px;
            height: 59px;
        }

        #film_strip li {
            float: left;
        }

            #film_strip li img {
                float: left;
                list-style: none;
                background: #EFEFEF;
                padding: 5px;
                margin: 5px;
                border: 1px solid #AAA;
            }
        /*.style2_header {
            background-image: url(../images/slider/bg2.png);
        }*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="Server">
    <div class="dashboard-content">
        <!-- Listing-detail-Header -->
        <div id="bannerlist"></div>
        
        <!-- /Listing-detail-Header -->

        <!-- Listings -->
        <section class="listing_info_wrap listing_detail_2">
            <div class="container">
                <div class="sidebar_wrap listing_action_btn">
                    <ul>
                        <li><a data-toggle="modal" data-target="#share_modal"><i class="fa fa-share-alt"></i>Share This</a></li>
                        <li><a data-toggle="modal" data-target="#email_friends_modal"><i class="fa fa-envelope-o"></i>Email to Friends</a></li>
                        <li><a href="#writereview" class="js-target-scroll"><i class="fa fa-star"></i>Write a Review</a></li>
                        <li><a data-toggle="modal" data-target="#report_modal"><i class="fa fa-exclamation-triangle"></i>Report</a></li>
                    </ul>
                </div>
                <div class="image_slider_wrap">
                    <div id="listing_img_slider">
                        <div class="owl-carousel owl-theme">
                            <%--<div id="sliderimages"></div>--%>
                            <div class="item">
                                <img src="../assets/images/gallery_1.jpg" alt="image">
                            </div>
                            <div class="item">
                                <img src="../assets/images/gallery_2.jpg" alt="image">
                            </div>
                            <div class="item">
                                <img src="../assets/images/gallery_3.jpg" alt="image">
                            </div>
                            <div class="item">
                                <img src="../assets/images/gallery_4.jpg" alt="image">
                            </div>
                            <div class="item">
                                <img src="../assets/images/gallery_5.jpg" alt="image">
                            </div>
                        </div>
                    </div>
                </div>

                
 
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="ElemoListing_detail">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h4 class="panel-title">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#description" aria-expanded="true" aria-controls="collapseOne">
                                            <i class="fa  fa-file-text-o"></i>Listing Description</a>
                                        </a>
                                    </h4>
                                </div>
                                <div id="description" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                    <div id="descriptionlist"></div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingTwo">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#amenities" aria-expanded="false" aria-controls="collapseTwo"><i class="fa fa-align-left"></i>Keywords</a>
                                    </h4>
                                </div>
                                <div id="amenities" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                    <div class="panel-body">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-credit-card"></i>Accepts Credit cards</a></li>
                                            <li><a href="#"><i class="fa fa-paw"></i>Pets Friendly</a></li>
                                            <li><a href="#"><i class="fa fa-ban"></i>No Smoking</a></li>
                                            <li><a href="#"><i class="fa fa-snowflake-o"></i>Air Conditioning</a></li>
                                            <li><a href="#"><i class="fa fa-car"></i>Street Parking</a></li>
                                            <li><a href="#"><i class="fa fa-wifi"></i>Wireless Internet</a></li>
                                            <li><a href="#"><i class="fa fa-wheelchair-alt"></i>Wheelchair Accessible</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingThree">
                                    <h4 class="panel-title">
                                        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#opening_hours" aria-expanded="false" aria-controls="collapseThree"><i class="fa fa-calendar-check-o"></i>Opening Hours</a>
                                    </h4>
                                </div>
                                <div id="opening_hours" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                    <div class="panel-body">
                                        <div id="gettime"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Review-List -->
                        <div class="reviews_list">
                            <div class="widget_title">
                                <h4><span>2 Reviews for</span> The Morning Hotel</h4>
                            </div>
                            <div class="review_wrap">
                                <div class="review_author">
                                    <img src="assets/images/94x94.jpg" alt="image">
                                    <figcaption>
                                        <h6>Joanna Atkinson</h6>
                                    </figcaption>
                                </div>
                                <div class="review_detail">
                                    <h5>Good service and Location is great</h5>
                                    <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. </p>
                                    <div class="listing_rating">
                                        <p>
                                            <span class="review_score">4.0/5</span>
                                            <i class="fa fa-star active"></i><i class="fa fa-star active"></i><i class="fa fa-star active"></i>
                                            <i class="fa fa-star active"></i><i class="fa fa-star"></i>
                                            (5 Reviews)
                                        </p>
                                        <p><i class="fa fa-clock-o"></i>April 11, 2017 8:52 am</p>
                                    </div>
                                </div>
                            </div>

                            <div class="review_wrap">
                                <div class="review_author">
                                    <img src="assets/images/94x94.jpg" alt="image">
                                    <figcaption>
                                        <h6>Joanna Atkinson</h6>
                                    </figcaption>
                                </div>
                                <div class="review_detail">
                                    <h5>Good service and Location is great</h5>
                                    <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. </p>
                                    <div class="listing_rating">
                                        <p>
                                            <span class="review_score">4.0/5</span>
                                            <i class="fa fa-star active"></i><i class="fa fa-star active"></i><i class="fa fa-star active"></i>
                                            <i class="fa fa-star active"></i><i class="fa fa-star"></i>
                                            (5 Reviews)
                                        </p>
                                        <p><i class="fa fa-clock-o"></i>April 11, 2017 8:52 am</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <!-- Sidebar -->
                <div class="col-md-4">
                    <div class="ElemoListing_sidebar">
                        <div class="sidebar_wrap listing_contact_info">
                            <div class="widget_title">
                                <h6>Contact Info</h6>
                            </div>
                            <div id="contact"></div>
                            <div class="social_links">
                                <a href="#" class="facebook_link"><i class="fa fa-facebook-f"></i></a>
                                <a href="#" class="linkedin_link"><i class="fa fa-linkedin"></i></a>
                                <a href="#" class="twitter_link"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="google_plus_link"><i class="fa fa-google-plus"></i></a>
                            </div>
                        </div>
                        <div class="review_wrap">

                            <div id="addimage">
                            </div>

                            <input type="file" id="imgupload" style="display: none" />
                            <ul id='film_strip' style='list-style: none'>
                                <li>
                                    <img src="../images/images/images.png" id="OpenImgUpload" style="height: 70px !important; width: 70px !important" />
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /Sidebar -->
        </section>

        <!-- Modal -->
        
    </div>
    <div class="modal fade" id="demoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">Are You owner of this business?</div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                       <%-- <button type="button" class="btn btn-primary">Yes</button>--%>
                        <span id="Yes"></span>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="Server">
    <input type="hidden" id="listid" runat="server" />
    <script src="../assets/js/jquery.min.js"></script>

   <%-- <script type="text/javascript">
        $(function () {
            $("#OpenImgUpload").click(function () {
                $('#demoModal').modal('show');
            });
        });
    </script>--%>
    <script>
        function getParameterByName(name) {
            var match = RegExp('[?&]' + name + '=([^&]*)').exec(window.location.search);
            return match && decodeURIComponent(match[1].replace(/\+/g, ' '));
        }
        var id = getParameterByName('lid');
        $("#descriptionlist").html("<img src='../design/input-spinner.gif' />").load("services/ListDetail.ashx?lid=" + id); 
        $("#contact").html("<img src='../design/input-spinner.gif' />").load("services/contactlist.ashx?lid=" + id);
        $("#gettime").html("<img src='../design/input-spinner.gif' />").load("services/gettimelist.ashx?lid=" + id);
        
        $("#bannerlist").html("<img src='../design/input-spinner.gif' />").load("services/bannerlisting.ashx?lid=" + id);
        $("#sliderimages").html("<img src='../design/input-spinner.gif' />").load("services/imageslider.ashx?lid=" + id);

        LoadList();

        function LoadList()
        {
            //$("#myModal").modal('show');
                 $("#addimage").html("<img src='../design/input-spinner.gif' />").load("services/Addimagelist.ashx?lid=" + id);
        }
        window.onload = function () {
            
            var fileupload = document.getElementById("imgupload");
            var image = document.getElementById("OpenImgUpload");
            image.onclick = function () {
                fileupload.click();
            };
            fileupload.onchange = function () {
                if (fileupload.value != 'undefined') {
                    Save();
                }
            };
        };

        function Save() {
            var loginFrm = new FormData();
            loginFrm.append("lid", id);
            var fileUpload = $("#imgupload").get(0);
            var files = fileUpload.files;
            for (var i = 0; i < files.length; i++) {
                loginFrm.append(files[i].name, files[i]);
            }
            $.ajax({
                url: "services/UploadImage.ashx",
                type: "POST",
                contentType: false,
                processData: false,
                data: loginFrm,
                dataType: "json",
                success: function (Response) {
                    if (Response.Success) {
                        toastr.success(Response.Message, "List Notifications")
                        LoadList();
                    }
                    else {
                        toastr.error(Response.Message, "List Notifications")
                    }
                },
                error: function (err) {
                    toastr.error(err.statusText, "List Notifications")
                }
            });
        }

        //$(document).ready(function () {
        //    $('#modal_button_id').click(function (event) {
        //        $('#OpenImgUpload').modal('show')
        //    });
        //});
        var otp = 0; 
        function sendOtp() {
            var loginFrm = new FormData();
            loginFrm.append("lid", id);
            $('#ibtn').html('<i class="fa fa-spin fa-spinner"></i>  Wait..').attr('disabled', true);
            $.ajax({
                url: "services/SendOtp.ashx",
                type: "POST",
                contentType: false,
                processData: false,
                data: loginFrm,
                dataType: "json",
                success: function (Response) {
                    if (Response.Success) {
                        otp = Response.Message;
                        alert(otp);
                        $('#ibtn').html('Submit').attr('disabled', false);
                    }
                    else {
                        $('#ibtn').html('Submit').attr('disabled', false);
                        toastr.error(Response.Message, "SignUp Notifications")
                    }
                },
                error: function (err) {
                    $('#ibtn').html('Submit').attr('disabled', false);
                    toastr.error(err.statusText, "SignUp Notifications")
                }
            });
        }
    </script>
</asp:Content>


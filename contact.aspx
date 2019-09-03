<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
     <section id="page-head">
        <div class="container">
            <div class="row col-md-12">
                <div class="page-heading">
                    <h1>Contact Us</h1>
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
    <!--end map-->
    <!--Detail -->
    <section id="detail">
        <div class="container">
            <div class="row">
                <div id="form">
                    <form method="post">
                        <div class="col-md-12 col-sm-6 input-pad">
                            <span class="fa fa-text-height form-control-feedback"></span>
                            <input class="form-control" type="text" name="name" placeholder="John Doe">

                        </div>
                        <div class="col-md-12 col-sm-6 input-pad">
                            <span class="fa fa-folder form-control-feedback"></span>
                            <input class="form-control" type="email" name="email" placeholder="Email Address">
                        </div>
                        <div class="col-md-12 col-sm-6 input-pad">
                            <span class="fa fa-book form-control-feedback"></span>
                            <input class="form-control" type="text" name="subject" placeholder="subject">

                        </div>
                        <div class="col-md-12 col-sm-6 input-pad">
                            <textarea class="form-control"></textarea>
                        </div>
                        <div class="col-sm-6">
                            <p>What is 3 + 2 =</p>
                        </div>
                        <div class="col-sm-6">
                            <input type="text" name="answer" placeholder="Your answer">
                        </div>
                        <div class="clearfix"></div>
                        <!--map-->

                        <input class="input-pad" type="submit" value="submit" name="submit">
                    </form>
                </div>
            </div>
        </div>
    </section><!--end details-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" Runat="Server">
</asp:Content>


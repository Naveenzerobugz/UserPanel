<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddList.aspx.cs" Inherits="AddList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="Server">

    <!--main sub page heading-->
    <section id="page-head">
        <div class="container">
            <div class="row col-md-12">
                <div class="page-heading">
                    <h1>NEW AD</h1>
                    <h4>Easy & a simple way to edit</h4>
                </div>
            </div>
        </div>
    </section>
    <!--end main page heading-->
    <!--Detail -->
    <section id="detail">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="ads-detail">
                        <div class="account-overview">
                            <h4 class="inner-heading">ACCOUNT OVERVIEW</h4>
                            <div class="row">
                                <!-- Listings -->
                                <div class="col-lg-12 col-md-12">
                                    <div class="add_listing_info">
                                        <h3>Basic Informations</h3>
                                        <div class="form-group">
                                            
                                            <label class="label-title">Listing Title</label>
                                           <%-- <asp:TextBox ID="txttitlea" placeholder="List Title" autocomplete="off" class="form-control" runat="server"></asp:TextBox>--%>
                                           <input type="text" name="txttitle" id="txttitle" placeholder="List Title" autocomplete="off" class="form-control" />
                                        </div>
                                        <div class="form-group">
                                            <label class="label-title">Listing Tag Line</label>
                                            <input type="text" name="name" id="txttagline" autocomplete="off" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="add_listing_info">
                                        <h3>Contact Info</h3>
                                        <div class="form-group">
                                            <label class="label-title">Address</label>
                                            <input type="text" class="form-control" id="txtaddress" />
                                        </div>
                                        <div class="row">
                                             <div class="form-group col-sm-6">
                                                <label class="label-title">Country</label>
                                                <div class="select">
                                                    <select id="txtCountry" class="form-control border-right-0" '></select>
                                                </div>
                                            </div>
                                            <div class="form-group col-sm-6">
                                                <label class="label-title">State</label>
                                                <div class="select">
                                                    <select id="txtState" class="form-control border-right-0" ></select>
                                                </div>
                                            </div>
                                            <div class="form-group col-sm-6">
                                                <label class="label-title">City</label>
                                                <div class="select">
                                                    <select id='txtCity' class="form-control border-right-0"></select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-sm-6">
                                                <label class="label-title">Zip-Code</label>
                                                <input type="text" class="form-control" id="txtzipcode" />
                                            </div>
                                            <div class="form-group col-sm-6">
                                                <label class="label-title">Phone Number</label>
                                                <input type="text" class="form-control" id="txtmob" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-sm-6">
                                                <label class="label-title">Email <span>(optional)</span></label>
                                                <input type="text" class="form-control" id="txtemail" />
                                            </div>
                                            <div class="form-group col-sm-6">
                                                <label class="label-title">Website <span>(optional)</span></label>
                                                <input type="text" class="form-control" id="txtwebsite" />
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-md-3 col-sm-6">
                                                <label class="label-title">Facebook <span>(optional)</span></label>
                                                <input type="text" class="form-control" id="txtfb" />
                                            </div>
                                            <div class="form-group col-md-3 col-sm-6">
                                                <label class="label-title">Linkdin <span>(optional)</span></label>
                                                <input type="text" class="form-control" id="txtlinkdin" />
                                            </div>
                                            <div class="form-group col-md-3 col-sm-6">
                                                <label class="label-title">Twitter <span>(optional)</span></label>
                                                <input type="text" class="form-control" id="txttwitter" />
                                            </div>
                                            <div class="form-group col-md-3 col-sm-6">
                                                <label class="label-title">Google Plus <span>(optional)</span></label>
                                                <input type="text" class="form-control" id="txtgoogleplus" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="add_listing_info">
                                        <h3>Listing Details</h3>
                                        <div class="form-group">
                                            <label class="label-title">Description</label>
                                            <textarea class="form-control" id="txtdescription"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label class="label-title">Category</label>
                                            <div class="select">
                                                <select class="form-control" id="dllcategory">
                                                    <option>Real Estate</option>
                                                    <option>Restaurant</option>
                                                    <option>Real Estate</option>
                                                    <option>Health & Fitness</option>
                                                    <option>Beauty & Spas</option>
                                                    <option>Hotels & Travel</option>
                                                    <option>Automotive</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group" >
                                            <label class="label-title">Keywords <span>(optional)</span></label>
                                            <div class="checkbox" style="margin-left:20px;">
                                                <p>
                                                    <input type="checkbox" value="Accepts Credit cards" id="amenities1" name="check" />
                                                    <label for="amenities1">Accepts Credit cards</label>
                                                </p>
                                                <p>
                                                    <input type="checkbox" value="Accepts Credit cards" id="amenities2" name="check" />
                                                    <label for="amenities2">No Smoking</label>
                                                </p>
                                                <p>
                                                    <input type="checkbox" value="Accepts Credit cards" id="amenities3" name="check"/>
                                                    <label for="amenities3">Street Parking</label>
                                                </p>

                                                <p>
                                                    <input type="checkbox" value="Accepts Credit cards" id="amenities4" name="check"/>
                                                    <label for="amenities4">Wheelchair Accessible</label>
                                                </p>

                                                <p>
                                                    <input type="checkbox" value="Accepts Credit cards" id="amenities5" name="check"/>
                                                    <label for="amenities5">Pets Friendly</label>
                                                </p>

                                                <p>
                                                    <input type="checkbox" value="Accepts Credit cards" id="amenities6" name="check"/>
                                                    <label for="amenities6">Air Conditioning</label>
                                                </p>

                                                <p>
                                                    <input type="checkbox" value="Accepts Credit cards" id="amenities7" name="check"/>
                                                    <label for="amenities7">Wireless Internet</label>
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="add_listing_info">
                                        <h3>Opening Hours</h3>
                                        <div class="row">
                                            <div class="form-group col-sm-2">
                                                <label class="label-title">Monday</label>
                                            </div>
                                            <div class="form-group col-sm-5">
                                                <div class="select">
                                                    <select class="form-control" id="ddlmondayopen">
                                                        <option>Opening Time</option>
                                                        <option>1 AM</option>
                                                        <option>2 AM</option>
                                                        <option>3 AM</option>
                                                        <option>4 AM</option>
                                                        <option>5 AM</option>
                                                        <option>6 AM</option>
                                                        <option>7 AM</option>
                                                        <option>8 AM</option>
                                                        <option>9 AM</option>
                                                        <option>10 AM</option>
                                                        <option>11 AM</option>
                                                        <option>12 AM</option>
                                                        <option>1 PM</option>
                                                        <option>2 PM</option>
                                                        <option>3 PM</option>
                                                        <option>4 PM</option>
                                                        <option>5 PM</option>
                                                        <option>6 PM</option>
                                                        <option>7 PM</option>
                                                        <option>8 PM</option>
                                                        <option>9 PM</option>
                                                        <option>10 PM</option>
                                                        <option>11 PM</option>
                                                        <option>12 PM</option>
                                                        <option>Closed</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-sm-5">
                                                <div class="select">
                                                    <select class="form-control" id="ddlmondayclose">
                                                        <option>Closing Time</option>
                                                        <option>1 AM</option>
                                                        <option>2 AM</option>
                                                        <option>3 AM</option>
                                                        <option>4 AM</option>
                                                        <option>5 AM</option>
                                                        <option>6 AM</option>
                                                        <option>7 AM</option>
                                                        <option>8 AM</option>
                                                        <option>9 AM</option>
                                                        <option>10 AM</option>
                                                        <option>11 AM</option>
                                                        <option>12 AM</option>
                                                        <option>1 PM</option>
                                                        <option>2 PM</option>
                                                        <option>3 PM</option>
                                                        <option>4 PM</option>
                                                        <option>5 PM</option>
                                                        <option>6 PM</option>
                                                        <option>7 PM</option>
                                                        <option>8 PM</option>
                                                        <option>9 PM</option>
                                                        <option>10 PM</option>
                                                        <option>11 PM</option>
                                                        <option>12 PM</option>
                                                        <option>Closed</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-sm-2">
                                                <label class="label-title">Tuesday</label>
                                            </div>
                                            <div class="form-group col-sm-5">
                                                <div class="select">
                                                    <select class="form-control" id="ddltuesdayopen">
                                                        <option>Opening Time</option>
                                                        <option>1 AM</option>
                                                        <option>2 AM</option>
                                                        <option>3 AM</option>
                                                        <option>4 AM</option>
                                                        <option>5 AM</option>
                                                        <option>6 AM</option>
                                                        <option>7 AM</option>
                                                        <option>8 AM</option>
                                                        <option>9 AM</option>
                                                        <option>10 AM</option>
                                                        <option>11 AM</option>
                                                        <option>12 AM</option>
                                                        <option>1 PM</option>
                                                        <option>2 PM</option>
                                                        <option>3 PM</option>
                                                        <option>4 PM</option>
                                                        <option>5 PM</option>
                                                        <option>6 PM</option>
                                                        <option>7 PM</option>
                                                        <option>8 PM</option>
                                                        <option>9 PM</option>
                                                        <option>10 PM</option>
                                                        <option>11 PM</option>
                                                        <option>12 PM</option>
                                                        <option>Closed</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-sm-5">
                                                <div class="select">
                                                    <select class="form-control" id="ddltuesdayclose">
                                                        <option>Closing Time</option>
                                                        <option>1 AM</option>
                                                        <option>2 AM</option>
                                                        <option>3 AM</option>
                                                        <option>4 AM</option>
                                                        <option>5 AM</option>
                                                        <option>6 AM</option>
                                                        <option>7 AM</option>
                                                        <option>8 AM</option>
                                                        <option>9 AM</option>
                                                        <option>10 AM</option>
                                                        <option>11 AM</option>
                                                        <option>12 AM</option>
                                                        <option>1 PM</option>
                                                        <option>2 PM</option>
                                                        <option>3 PM</option>
                                                        <option>4 PM</option>
                                                        <option>5 PM</option>
                                                        <option>6 PM</option>
                                                        <option>7 PM</option>
                                                        <option>8 PM</option>
                                                        <option>9 PM</option>
                                                        <option>10 PM</option>
                                                        <option>11 PM</option>
                                                        <option>12 PM</option>
                                                        <option>Closed</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-sm-2">
                                                <label class="label-title">Wednesday</label>
                                            </div>
                                            <div class="form-group col-sm-5">
                                                <div class="select">
                                                    <select class="form-control" id="ddlwednesdayopen">
                                                        <option>Opening Time</option>
                                                        <option>1 AM</option>
                                                        <option>2 AM</option>
                                                        <option>3 AM</option>
                                                        <option>4 AM</option>
                                                        <option>5 AM</option>
                                                        <option>6 AM</option>
                                                        <option>7 AM</option>
                                                        <option>8 AM</option>
                                                        <option>9 AM</option>
                                                        <option>10 AM</option>
                                                        <option>11 AM</option>
                                                        <option>12 AM</option>
                                                        <option>1 PM</option>
                                                        <option>2 PM</option>
                                                        <option>3 PM</option>
                                                        <option>4 PM</option>
                                                        <option>5 PM</option>
                                                        <option>6 PM</option>
                                                        <option>7 PM</option>
                                                        <option>8 PM</option>
                                                        <option>9 PM</option>
                                                        <option>10 PM</option>
                                                        <option>11 PM</option>
                                                        <option>12 PM</option>
                                                        <option>Closed</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-sm-5">
                                                <div class="select">
                                                    <select class="form-control" id="ddlwednesdayclose">
                                                        <option>Closing Time</option>
                                                        <option>1 AM</option>
                                                        <option>2 AM</option>
                                                        <option>3 AM</option>
                                                        <option>4 AM</option>
                                                        <option>5 AM</option>
                                                        <option>6 AM</option>
                                                        <option>7 AM</option>
                                                        <option>8 AM</option>
                                                        <option>9 AM</option>
                                                        <option>10 AM</option>
                                                        <option>11 AM</option>
                                                        <option>12 AM</option>
                                                        <option>1 PM</option>
                                                        <option>2 PM</option>
                                                        <option>3 PM</option>
                                                        <option>4 PM</option>
                                                        <option>5 PM</option>
                                                        <option>6 PM</option>
                                                        <option>7 PM</option>
                                                        <option>8 PM</option>
                                                        <option>9 PM</option>
                                                        <option>10 PM</option>
                                                        <option>11 PM</option>
                                                        <option>12 PM</option>
                                                        <option>Closed</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-sm-2">
                                                <label class="label-title">Thrusday</label>
                                            </div>
                                            <div class="form-group col-sm-5">
                                                <div class="select">
                                                    <select class="form-control" id="ddlthursdayopen">
                                                        <option>Opening Time</option>
                                                        <option>1 AM</option>
                                                        <option>2 AM</option>
                                                        <option>3 AM</option>
                                                        <option>4 AM</option>
                                                        <option>5 AM</option>
                                                        <option>6 AM</option>
                                                        <option>7 AM</option>
                                                        <option>8 AM</option>
                                                        <option>9 AM</option>
                                                        <option>10 AM</option>
                                                        <option>11 AM</option>
                                                        <option>12 AM</option>
                                                        <option>1 PM</option>
                                                        <option>2 PM</option>
                                                        <option>3 PM</option>
                                                        <option>4 PM</option>
                                                        <option>5 PM</option>
                                                        <option>6 PM</option>
                                                        <option>7 PM</option>
                                                        <option>8 PM</option>
                                                        <option>9 PM</option>
                                                        <option>10 PM</option>
                                                        <option>11 PM</option>
                                                        <option>12 PM</option>
                                                        <option>Closed</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-sm-5">
                                                <div class="select">
                                                    <select class="form-control" id="ddlthursdayclose">
                                                        <option>Closing Time</option>
                                                        <option>1 AM</option>
                                                        <option>2 AM</option>
                                                        <option>3 AM</option>
                                                        <option>4 AM</option>
                                                        <option>5 AM</option>
                                                        <option>6 AM</option>
                                                        <option>7 AM</option>
                                                        <option>8 AM</option>
                                                        <option>9 AM</option>
                                                        <option>10 AM</option>
                                                        <option>11 AM</option>
                                                        <option>12 AM</option>
                                                        <option>1 PM</option>
                                                        <option>2 PM</option>
                                                        <option>3 PM</option>
                                                        <option>4 PM</option>
                                                        <option>5 PM</option>
                                                        <option>6 PM</option>
                                                        <option>7 PM</option>
                                                        <option>8 PM</option>
                                                        <option>9 PM</option>
                                                        <option>10 PM</option>
                                                        <option>11 PM</option>
                                                        <option>12 PM</option>
                                                        <option>Closed</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-sm-2">
                                                <label class="label-title">Friday</label>
                                            </div>
                                            <div class="form-group col-sm-5">
                                                <div class="select">
                                                    <select class="form-control" id="ddlFridayopen">
                                                        <option>Opening Time</option>
                                                        <option>1 AM</option>
                                                        <option>2 AM</option>
                                                        <option>3 AM</option>
                                                        <option>4 AM</option>
                                                        <option>5 AM</option>
                                                        <option>6 AM</option>
                                                        <option>7 AM</option>
                                                        <option>8 AM</option>
                                                        <option>9 AM</option>
                                                        <option>10 AM</option>
                                                        <option>11 AM</option>
                                                        <option>12 AM</option>
                                                        <option>1 PM</option>
                                                        <option>2 PM</option>
                                                        <option>3 PM</option>
                                                        <option>4 PM</option>
                                                        <option>5 PM</option>
                                                        <option>6 PM</option>
                                                        <option>7 PM</option>
                                                        <option>8 PM</option>
                                                        <option>9 PM</option>
                                                        <option>10 PM</option>
                                                        <option>11 PM</option>
                                                        <option>12 PM</option>
                                                        <option>Closed</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-sm-5">
                                                <div class="select">
                                                    <select class="form-control" id="ddlFridayclose">
                                                        <option>Closing Time</option>
                                                        <option>1 AM</option>
                                                        <option>2 AM</option>
                                                        <option>3 AM</option>
                                                        <option>4 AM</option>
                                                        <option>5 AM</option>
                                                        <option>6 AM</option>
                                                        <option>7 AM</option>
                                                        <option>8 AM</option>
                                                        <option>9 AM</option>
                                                        <option>10 AM</option>
                                                        <option>11 AM</option>
                                                        <option>12 AM</option>
                                                        <option>1 PM</option>
                                                        <option>2 PM</option>
                                                        <option>3 PM</option>
                                                        <option>4 PM</option>
                                                        <option>5 PM</option>
                                                        <option>6 PM</option>
                                                        <option>7 PM</option>
                                                        <option>8 PM</option>
                                                        <option>9 PM</option>
                                                        <option>10 PM</option>
                                                        <option>11 PM</option>
                                                        <option>12 PM</option>
                                                        <option>Closed</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-sm-2">
                                                <label class="label-title">Saturday</label>
                                            </div>
                                            <div class="form-group col-sm-5">
                                                <div class="select">
                                                    <select class="form-control" id="ddlsaturdayopen">
                                                        <option>Opening Time</option>
                                                        <option>1 AM</option>
                                                        <option>2 AM</option>
                                                        <option>3 AM</option>
                                                        <option>4 AM</option>
                                                        <option>5 AM</option>
                                                        <option>6 AM</option>
                                                        <option>7 AM</option>
                                                        <option>8 AM</option>
                                                        <option>9 AM</option>
                                                        <option>10 AM</option>
                                                        <option>11 AM</option>
                                                        <option>12 AM</option>
                                                        <option>1 PM</option>
                                                        <option>2 PM</option>
                                                        <option>3 PM</option>
                                                        <option>4 PM</option>
                                                        <option>5 PM</option>
                                                        <option>6 PM</option>
                                                        <option>7 PM</option>
                                                        <option>8 PM</option>
                                                        <option>9 PM</option>
                                                        <option>10 PM</option>
                                                        <option>11 PM</option>
                                                        <option>12 PM</option>
                                                        <option>Closed</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-sm-5">
                                                <div class="select">
                                                    <select class="form-control" id="ddlsaturdayclose">
                                                        <option>Closing Time</option>
                                                        <option>1 AM</option>
                                                        <option>2 AM</option>
                                                        <option>3 AM</option>
                                                        <option>4 AM</option>
                                                        <option>5 AM</option>
                                                        <option>6 AM</option>
                                                        <option>7 AM</option>
                                                        <option>8 AM</option>
                                                        <option>9 AM</option>
                                                        <option>10 AM</option>
                                                        <option>11 AM</option>
                                                        <option>12 AM</option>
                                                        <option>1 PM</option>
                                                        <option>2 PM</option>
                                                        <option>3 PM</option>
                                                        <option>4 PM</option>
                                                        <option>5 PM</option>
                                                        <option>6 PM</option>
                                                        <option>7 PM</option>
                                                        <option>8 PM</option>
                                                        <option>9 PM</option>
                                                        <option>10 PM</option>
                                                        <option>11 PM</option>
                                                        <option>12 PM</option>
                                                        <option>Closed</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-sm-2">
                                                <label class="label-title">Sunday</label>
                                            </div>
                                            <div class="form-group col-sm-5">
                                                <div class="select">
                                                    <select class="form-control" id="ddlsundayopen">
                                                        <option>Opening Time</option>
                                                        <option>1 AM</option>
                                                        <option>2 AM</option>
                                                        <option>3 AM</option>
                                                        <option>4 AM</option>
                                                        <option>5 AM</option>
                                                        <option>6 AM</option>
                                                        <option>7 AM</option>
                                                        <option>8 AM</option>
                                                        <option>9 AM</option>
                                                        <option>10 AM</option>
                                                        <option>11 AM</option>
                                                        <option>12 AM</option>
                                                        <option>1 PM</option>
                                                        <option>2 PM</option>
                                                        <option>3 PM</option>
                                                        <option>4 PM</option>
                                                        <option>5 PM</option>
                                                        <option>6 PM</option>
                                                        <option>7 PM</option>
                                                        <option>8 PM</option>
                                                        <option>9 PM</option>
                                                        <option>10 PM</option>
                                                        <option>11 PM</option>
                                                        <option>12 PM</option>
                                                        <option>Closed</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-sm-5">
                                                <div class="select">
                                                    <select class="form-control" id="ddlsundayclose">
                                                        <option>Closing Time</option>
                                                        <option>1 AM</option>
                                                        <option>2 AM</option>
                                                        <option>3 AM</option>
                                                        <option>4 AM</option>
                                                        <option>5 AM</option>
                                                        <option>6 AM</option>
                                                        <option>7 AM</option>
                                                        <option>8 AM</option>
                                                        <option>9 AM</option>
                                                        <option>10 AM</option>
                                                        <option>11 AM</option>
                                                        <option>12 AM</option>
                                                        <option>1 PM</option>
                                                        <option>2 PM</option>
                                                        <option>3 PM</option>
                                                        <option>4 PM</option>
                                                        <option>5 PM</option>
                                                        <option>6 PM</option>
                                                        <option>7 PM</option>
                                                        <option>8 PM</option>
                                                        <option>9 PM</option>
                                                        <option>10 PM</option>
                                                        <option>11 PM</option>
                                                        <option>12 PM</option>
                                                        <option>Closed</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="add_listing_info">
                                        <h3>Add Pricing</h3>
                                        <div class="row">
                                            <div class="form-group col-sm-6">
                                                <label class="label-title">Min. Price</label>
                                                <input type="text" class="form-control" id="minprice" />
                                            </div>
                                            <div class="form-group col-sm-6">
                                                <label class="label-title">Max. Price</label>
                                                <input type="text" class="form-control" id="maxprice" />
                                            </div>
                                        </div>
                                    </div>

                                    <div class="add_listing_info">
                                        <h3>Add Video</h3>
                                        <div class="form-group">
                                            <label class="label-title">Video Youtube URL</label>
                                            <input type="text" class="form-control" id="video" />
                                        </div>
                                    </div>
                                   
                                    <div class="add_listing_info">
                                        <h3>Add Gallery Images</h3>
                                        <div class="col-sm-12 padding-control">
                                            <span class="fa fa-image form-control-feedback"></span>
                                            <label class="cabinet">
                                                <input type="file" class="file" id="FileUpload" name="manifest_file_import">
                                            </label>
                                        </div>

                                    </div>
                                     <br />
                                    <div class="add_listing_info" >
                                      <button id="ibtn" class="btn" onclick="CreateList()">Submit Listing</button>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="sidebar">

                        <!--advertisement-->
                        <div class="side-widget">
                            <h4 class="inner-heading">ADVERTISEMENT</h4>
                            <div class="side-widget-adv">
                                <a href="#">
                                    <img src="http://placehold.it/350x250" alt="google ads"></a>
                            </div>
                        </div>
                        <!--end advertisement widget-->

                        <!--Tags-->
                        <div class="side-widget">
                            <h4 class="inner-heading">Tags</h4>
                            <div class="tags">
                                <a href="#">Ads</a>
                                <a href="#">Design</a>
                                <a href="#">Classified</a>
                                <a href="#">PSD’s</a>
                                <a href="#">Advertisement</a>
                                <a href="#">Jobs</a>
                                <a href="#">Community</a>
                                <a href="#">Business</a>
                                <a href="#">Interior</a>
                                <a href="#">Condo</a>
                                <a href="#">Pet</a>
                                <a href="#">Shopping</a>
                                <a href="#">Clothing</a>
                                <a href="#">Vehicles</a>


                            </div>
                        </div>
                        <!--end tags widget-->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--end details-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="Server">
    
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

    <script src="js/list.js"></script>
    <script src="js/CountryStateCity.js"></script>


</asp:Content>


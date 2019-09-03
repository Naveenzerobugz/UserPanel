<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UpdateListing.aspx.cs" Inherits="Admin_UpdateListing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style>
        .imgupdate a:hover
        {
           background-attachment=ulr();
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="Server">
    <!-- Content -->
    <div class="dashboard-content">
        <!-- Titlebar -->
        <div id="titlebar">
            <div class="row">
                <div class="col-md-12">
                    <h2>Add New Listing</h2>
                    <!-- Breadcrumbs -->
                    <nav id="breadcrumbs">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Dashboard</a></li>
                            <li>Add New Listing</li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="row">
            <!-- Listings -->
            <div class="col-lg-12 col-md-12">
                <div class="add_listing_info">
                    <h3>Basic Informations</h3>
                    <div class="form-group">
                        <label class="label-title">Listing Title</label>
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
                            <label class="label-title">City</label>
                            <div class="select">
                                <select class="form-control" id="dllcity">
                                    <option>Montgomery</option>
                                    <option>Sacramento</option>
                                    <option>Austin</option>
                                    <option>Houston</option>
                                    <option>Sacramento</option>
                                    <option>Los Angeles</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group col-sm-6">
                            <label class="label-title">State</label>
                            <div class="select">
                                <select class="form-control" id="txtstate">
                                    <option>Alabama</option>
                                    <option>California</option>
                                    <option>Hawaii</option>
                                    <option>Louisiana</option>
                                    <option>Texas</option>
                                </select>
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
                    <div class="form-group">
                        <label class="label-title">Amenities <span>(optional)</span></label>
                        <div class="checkbox">
                            <p>
                                <input type="checkbox" value="Accepts Credit cards" id="amenities1" name="check">
                                <label for="amenities1">Accepts Credit cards</label>
                            </p>

                            <p>
                                <input type="checkbox" value="Accepts Credit cards" id="amenities2" name="check">
                                <label for="amenities2">No Smoking</label>
                            </p>

                            <p>
                                <input type="checkbox" value="Accepts Credit cards" id="amenities3" name="check">
                                <label for="amenities3">Street Parking</label>
                            </p>

                            <p>
                                <input type="checkbox" value="Accepts Credit cards" id="amenities4" name="check">
                                <label for="amenities4">Wheelchair Accessible</label>
                            </p>

                            <p>
                                <input type="checkbox" value="Accepts Credit cards" id="amenities5" name="check">
                                <label for="amenities5">Pets Friendly</label>
                            </p>

                            <p>
                                <input type="checkbox" value="Accepts Credit cards" id="amenities6" name="check">
                                <label for="amenities6">Air Conditioning</label>
                            </p>

                            <p>
                                <input type="checkbox" value="Accepts Credit cards" id="amenities7" name="check">
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
                                <select class="form-control" id="mondayopen">
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
                                <select class="form-control" id="mondayclose">
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
                                <select class="form-control" id="tuesdayopen">
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
                                <select class="form-control" id="tuesdayclose">
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
                                <select class="form-control" id="wednesdayopen">
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
                                <select class="form-control" id="wednesdayclose">
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
                                <select class="form-control" id="thursdayopen">
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
                                <select class="form-control" id="thursdayclose">
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
                                <select class="form-control" id="Fridayopen">
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
                                <select class="form-control" id="Fridayclose">
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
                                <select class="form-control" id="saturdayopen">
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
                                <select class="form-control" id="saturdayclose">
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
                                <select class="form-control" id="sundayopen">
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
                                <select class="form-control" id="sundayclose">
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
                            <input type="text" class="form-control" id="minprice">
                        </div>
                        <div class="form-group col-sm-6">
                            <label class="label-title">Max. Price</label>
                            <input type="text" class="form-control" id="maxprice">
                        </div>
                    </div>
                </div>

                <div class="add_listing_info">
                    <h3>Add Video</h3>
                    <div class="form-group">
                        <label class="label-title">Video Youtube URL</label>
                        <input type="text" class="form-control" id="video">
                    </div>
                </div>

                <div class="add_listing_info">
                    <h3>Add Gallery Images</h3>
                    <div class="form-group">
                        <input type="file" id="FileUpload" />
                    </div>
                </div>
                <div class="add_listing_info">
                    <button id="ibtn" class="btn" onclick="UpdateList()">Update Listing</button>
                </div>

            </div>
            <!-- Copyrights -->
            <div class="col-md-12">
                <div class="copyrights">Copyright &copy; 2017 ElemoListing Private Limited. All Rights Reserved</div>
            </div>
        </div>

    </div>
    <input type="hidden" id="listid" runat="server" />
    <script src="../assets/js/jquery.min.js"></script>
        
    <script>
        function getParameterByName(name)
        {
            var match = RegExp('[?&]' + name + '=([^&]*)').exec(window.location.search);
            return match && decodeURIComponent(match[1].replace(/\+/g, ' '));
        }
        var id = getParameterByName('n');
        getChanges();
        function getChanges() {
            $.ajax({
                type: 'POST',
                url: 'services/getUpdateListingData.ashx?sc=' + id,
                contentType: false,
                dataType: 'json',
                success: function (Response) {
                    if (Response.Success) {
                        var arr = Response.Message.split('~');
                        document.getElementById("txttitle").value = arr[1];
                        document.getElementById("txttagline").value = arr[2];
                        document.getElementById("dllcategory").value = arr[3];
                        document.getElementById("txtaddress").value = arr[4];
                        document.getElementById("dllcity").value = arr[5];
                        document.getElementById("txtstate").value = arr[6];
                        document.getElementById("txtzipcode").value = arr[7];
                        document.getElementById("txtmob").value = arr[8];
                        document.getElementById("txtemail").value = arr[9];
                        document.getElementById("txtwebsite").value = arr[10];
                        document.getElementById("txtfb").value = arr[11];
                        document.getElementById("txtlinkdin").value = arr[12];
                        document.getElementById("txttwitter").value = arr[13];
                        document.getElementById("txtgoogleplus").value = arr[14];
                        document.getElementById("txtdescription").value = arr[15];
                        document.getElementById("minprice").value = arr[16];
                        document.getElementById("maxprice").value = arr[17];
                        document.getElementById("mondayopen").value = arr[18];
                        document.getElementById("mondayclose").value = arr[19];
                        document.getElementById("tuesdayopen").value = arr[20];
                        document.getElementById("tuesdayclose").value = arr[21];
                        document.getElementById("wednesdayopen").value = arr[22];
                        document.getElementById("wednesdayclose").value = arr[23];
                        document.getElementById("thursdayopen").value = arr[24];
                        document.getElementById("thursdayclose").value = arr[25];
                        document.getElementById("Fridayopen").value = arr[26];
                        document.getElementById("Fridayclose").value = arr[27];
                        document.getElementById("saturdayopen").value = arr[28];
                        document.getElementById("saturdayclose").value = arr[29];
                        document.getElementById("sundayopen").value = arr[30];
                        document.getElementById("sundayclose").value = arr[31];
                        document.getElementById("video").value = arr[32];
                        //document.getElementById("FileUpload").value = arr[33];
                    }
                }
            });
        }

        function UpdateList()
        {
            if ($("[id*=txttitle]").val() == '' || $("[id*=txttagline]").val() == '' || $("[id*=dllcategory]").val() == '' || $("[id*=txtcity]").val() == '') {
                toastr.warning("All fields are mandatory.", " List Update Notifications")
                return;
            }
            if ($("[id*=txtaddress]").val() == '' || $("[id*=txtstate]").val() == '' || $("[id*=txtzipcode]").val() == '' || $("[id*=txtmob]").val() == '') {
                toastr.warning("All fields are mandatory.", " List  Update Notifications")
                return;
            }
            if ($("[id*=txtemail]").val() == '' || $("[id*=minprice]").val() == '' || $("[id*=maxprice]").val() == '' || $("[id*=mondayopen]").val() == '') {
                toastr.warning("All fields are mandatory.", " List  Update Notifications")
                return;
            }
            if ($("[id*=mondayclose]").val() == '' || $("[id*=tuesdayopen]").val() == '' || $("[id*=tuesdayclose]").val() == '' || $("[id*=wednesdayopen]").val() == '') {
                toastr.warning("All fields are mandatory.", " List  Update Notifications")
                return;
            }
            if ($("[id*=wednesdayclose]").val() == '' || $("[id*=thursdayopen]").val() == '' || $("[id*=thursdayclose]").val() == '' || $("[id*=Fridayopen]").val() == '') {
                toastr.warning("All fields are mandatory.", " List  Update Notifications")
                return;
            }

            if ($("[id*=Fridayclose]").val() == '' || $("[id*=saturdayopen]").val() == '' || $("[id*=saturdayclose]").val() == '' || $("[id*=sundayopen]").val() == '' || $("[id*=sundayclose]").val() == '') {
                toastr.warning("All fields are mandatory.", " List  Update Notifications")
                return;
            }
           

            var loginFrm = new FormData();
            loginFrm.append("listid", id);
            loginFrm.append("title", $("[id*=txttitle]").val());
            loginFrm.append("tagline", $("[id*=txttagline]").val());
            loginFrm.append("category", $("[id*=dllcategory]").val());
            loginFrm.append("address", $("[id*=txtaddress]").val());
            loginFrm.append("city", $("[id*=dllcity]").val());
            loginFrm.append("state", $("[id*=txtstate]").val());
            loginFrm.append("zipcode", $("[id*=txtzipcode]").val());
            loginFrm.append("mob", $("[id*=txtmob]").val());
            loginFrm.append("email", $("[id*=txtemail]").val());
            loginFrm.append("website", $("[id*=txtwebsite]").val());
            loginFrm.append("fb", $("[id*=txtfb]").val());
            loginFrm.append("linkdin", $("[id*=txtlinkdin]").val());
            loginFrm.append("twitter", $("[id*=txttwitter]").val());
            loginFrm.append("googleplus", $("[id*=txtgoogleplus]").val());
            loginFrm.append("description", $("[id*=txtdescription]").val());
            loginFrm.append("minprice", $("[id*=minprice]").val());
            loginFrm.append("maxprice", $("[id*=maxprice]").val());

            loginFrm.append("mondayopen", $("[id*=mondayopen]").val());
            loginFrm.append("mondayclose", $("[id*=mondayclose]").val());
            loginFrm.append("tuesdayopen", $("[id*=tuesdayopen]").val());
            loginFrm.append("tuesdayclose", $("[id*=tuesdayclose]").val());
            loginFrm.append("wednesdayopen", $("[id*=wednesdayopen]").val());
            loginFrm.append("wednesdayclose", $("[id*=wednesdayclose]").val());
            loginFrm.append("thursdayopen", $("[id*=thursdayopen]").val());
            loginFrm.append("thursdayclose", $("[id*=thursdayclose]").val());
            loginFrm.append("Fridayopen", $("[id*=Fridayopen]").val());
            loginFrm.append("Fridayclose", $("[id*=Fridayclose]").val());
            loginFrm.append("saturdayopen", $("[id*=saturdayopen]").val());
            loginFrm.append("saturdayclose", $("[id*=saturdayclose]").val());
            loginFrm.append("sundayopen", $("[id*=sundayopen]").val());
            loginFrm.append("sundayclose", $("[id*=sundayclose]").val());
            loginFrm.append("video", $("[id*=video]").val());

           

            $('#ibtn').html('<i class="fa fa-spin fa-spinner"></i>  Wait..').attr('disabled', true); $.ajax({
                url: "services/Updatelist.ashx",
                type: "POST",
                contentType: false,
                processData: false,
                data: loginFrm,
                dataType: "json",
                success: function (Response) {
                    if (Response.Success) {                 
                        toastr.success(Response.Message, "Update Category Notifications")                       
                        $('#ibtn').html('Submit').attr('disabled', false);

                    }
                    else {
                        $('#ibtn').html('Submit').attr('disabled', false);
                        toastr.error(Response.Message, "Update Category Notifications")
                    }
                },
                error: function (err) {
                    $('#ibtn').html('Submit').attr('disabled', false);
                    toastr.error(err.statusText, "Update Category Notifications")
                }
            });
        }

    </script>
    <!-- Content / End -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="Server">
</asp:Content>


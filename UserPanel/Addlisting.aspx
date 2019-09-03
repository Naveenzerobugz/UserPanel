<%@ Page Title="" Language="C#" MasterPageFile="~/UserPanel/UsersMasterPage.master" AutoEventWireup="true" CodeFile="Addlisting.aspx.cs" Inherits="Admin_Addlisting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
                            <label class="label-title">State</label>
                            <div class="select">
                                <select id="listBox" class="form-control border-right-0" onchange='selct_district(this.value)' ></select>          
                            </div>
                        </div>
                        <div class="form-group col-sm-6">
                            <label class="label-title">City</label>
                            <div class="select">                               
                                <select id='secondlist' class="form-control border-right-0"></select>
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
                        <label class="label-title">Keywords <span>(optional)</span></label>
                        <div class="checkbox">
                            <p>
                                <input type="checkbox" value="Accepts Credit cards" id="amenities1" name="check"/>
                                <label for="amenities1">Accepts Credit cards</label>
                            </p>
                            <p>
                                <input type="checkbox" value="Accepts Credit cards" id="amenities2" name="check"/>
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
                            <input type="text" class="form-control" id="minprice"/>
                        </div>
                        <div class="form-group col-sm-6">
                            <label class="label-title">Max. Price</label>
                            <input type="text" class="form-control" id="maxprice"/>
                        </div>
                    </div>
                </div>
                <div class="add_listing_info">
                    <h3>Add Video</h3>
                    <div class="form-group">
                        <label class="label-title">Video Youtube URL</label>
                        <input type="text" class="form-control" id="video"/>
                    </div>
                </div>
                <div class="add_listing_info">
                    <h3>Add Gallery Images</h3>
                    <div class="form-group">
                        <input type="file" id="FileUpload" />
                    </div>
                </div>
                <div class="add_listing_info">
                    <button id="ibtn" class="btn" onclick="CreateList()">Submit Listing</button>
                </div>

            </div>
            <!-- Copyrights -->
            <div class="col-md-12">
                <div class="copyrights">Copyright &copy; 2017 ElemoListing Private Limited. All Rights Reserved</div>
            </div>
        </div>
        
    </div>
    <input type="hidden" id="listid" runat="server" />

    <script src="js/list.js"></script>
    <!-- Content / End -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="Server">
</asp:Content>


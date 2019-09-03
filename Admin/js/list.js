
function CreateList() {
    if ($("[id*=txttitle]").val() == '' || $("[id*=dllcategory]").val() == '' || $("[id*=txtaddress]").val() == '' || $("[id*=dllcity]").val() == '' || $("[id*=txtstate]").val() == '' || $("[id*=txtzipcode]").val() == '' || $("[id*=txtmob]").val() == '' || $("[id*=txtemail]").val() == '' || $("[id*=txtdescription]").val() == '' || $("[id*=minprice]").val() == '' || $("[id*=maxprice]").val() == '') {
        toastr.warning("All fields are mandatory.", "SignUp Notifications")
        return;
    }
    if ($("[id*=FileUpload]").val() == '') {
        toastr.warning("Image are mandatory.", "Registration Notifications")
        return;
    }
    var loginFrm = new FormData();
    loginFrm.append("title", $("[id*=txttitle]").val());
    loginFrm.append("tagline", $("[id*=txttagline]").val());
    loginFrm.append("category", $("[id*=dllcategory]").val());
    loginFrm.append("address", $("[id*=txtaddress]").val());
    loginFrm.append("city", $("[id*=secondlist]").val());
    loginFrm.append("state", $("[id*=listBox]").val());
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
    loginFrm.append("amenities1", $("[id*=amenities1]").val());
    loginFrm.append("amenities2", $("[id*=amenities2]").val());
    loginFrm.append("amenities3", $("[id*=amenities3]").val());
    loginFrm.append("amenities4", $("[id*=amenities4]").val());
    loginFrm.append("amenities5", $("[id*=amenities5]").val());
    loginFrm.append("amenities6", $("[id*=amenities6]").val());
    loginFrm.append("amenities7", $("[id*=amenities7]").val());
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

    var fileUpload = $("#FileUpload").get(0);
    var files = fileUpload.files;
    for (var i = 0; i < files.length; i++) {
        loginFrm.append(files[i].name, files[i]);
    }
    $('#ibtn').html('<i class="fa fa-spin fa-spinner"></i>  Wait..').attr('disabled', true);
    $.ajax({
        url: "services/createbusinesslist.ashx",
        type: "POST",
        contentType: false,
        processData: false,
        data: loginFrm,
        dataType: "json",
        success: function (Response) {
            if (Response.Success) {
                $("[id*=txttitle]").val('');
                $("[id*=txttagline]").val('');
                $("[id*=dllcategory]").val('');
                $("[id*=txtcity]").val('');
                $("[id*=txtaddress]").val('');
                $("[id*=txtstate]").val('');
                $("[id*=txtzipcode]").val('');
                $("[id*=txtmob]").val('');
                $("[id*=txtemail]").val('');
                $("[id*=txtwebsite]").val('');
                $("[id*=txtfb]").val('');
                $("[id*=txtlinkdin]").val('');
                $("[id*=txttwitter]").val('');
                $("[id*=txtgoogleplus]").val('');
                $("[id*=txtdescription]").val('');
                $("[id*=minprice]").val('');
                $("[id*=maxprice]").val('');
                $("[id*=amenities1]").val('');
                $("[id*=amenities2]").val('');
                $("[id*=amenities3]").val('');
                $("[id*=amenities4]").val('');
                $("[id*=amenities5]").val('');
                $("[id*=amenities6]").val('');
                $("[id*=amenities7]").val('');
                $("[id*=mondayopen]").val('');
                $("[id*=mondayclose]").val('');
                $("[id*=tuesdayopen]").val('');
                $("[id*=tuesdayclose]").val('');
                $("[id*=wednesdayopen]").val('');
                $("[id*=wednesdayclose]").val('');
                $("[id*=thursdayopen]").val('');
                $("[id*=thursdayclose]").val('');
                $("[id*=Fridayopen]").val('');
                $("[id*=Fridayclose]").val('');
                $("[id*=saturdayopen]").val('');
                $("[id*=saturdayclose]").val('');
                $("[id*=sundayopen]").val('');
                $("[id*=sundayclose]").val('');
                $("[id*=FileUpload]").val('');

                toastr.success(Response.Message, "SignUp Notifications")
                $('#ibtn').html('Submit').attr('disabled', false);
                cleartextboxes();
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

function Updatelist() {

    if ($("[id*=txttitle]").val() == '' || $("[id*=dllcategory]").val() == '' || $("[id*=txtcity]").val() == '') {
        toastr.warning("All fields are mandatory.", " List  Notifications")
        return;
    }
    if ($("[id*=txtaddress]").val() == '' || $("[id*=txtstate]").val() == '' || $("[id*=txtzipcode]").val() == '' || $("[id*=txtmob]").val() == '') {
        toastr.warning("All fields are mandatory.", " List   Notifications")
        return;
    }
    if ($("[id*=txtemail]").val() == '' || $("[id*=minprice]").val() == '' || $("[id*=maxprice]").val() == '' || $("[id*=mondayopen]").val() == '') {
        toastr.warning("All fields are mandatory.", " List   Notifications")
        return;
    }
    if ($("[id*=mondayclose]").val() == '' || $("[id*=tuesdayopen]").val() == '' || $("[id*=tuesdayclose]").val() == '' || $("[id*=wednesdayopen]").val() == '') {
        toastr.warning("All fields are mandatory.", " List   Notifications")
        return;
    }
    if ($("[id*=wednesdayclose]").val() == '' || $("[id*=thursdayopen]").val() == '' || $("[id*=thursdayclose]").val() == '' || $("[id*=Fridayopen]").val() == '') {
        toastr.warning("All fields are mandatory.", " List   Notifications")
        return;
    }

    if ($("[id*=Fridayclose]").val() == '' || $("[id*=saturdayopen]").val() == '' || $("[id*=saturdayclose]").val() == '' || $("[id*=sundayopen]").val() == '' || $("[id*=sundayclose]").val() == '') {
        toastr.warning("All fields are mandatory.", " List   Notifications")
        return;
    }
    if ($("[id*=FileUpload]").val() == '') {
        toastr.warning("Image are mandatory.", " List   Notifications")
        return;
    }

    var loginFrm = new FormData();
    loginFrm.append("listid", $("[id*=listid]").val());

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

    //loginFrm.append("amenities1", $("[id*=amenities1]").val());
    //loginFrm.append("amenities2", $("[id*=amenities2]").val());
    //loginFrm.append("amenities3", $("[id*=amenities3]").val());
    //loginFrm.append("amenities4", $("[id*=amenities4]").val());
    //loginFrm.append("amenities5", $("[id*=amenities5]").val());
    //loginFrm.append("amenities6", $("[id*=amenities6]").val());
    //loginFrm.append("amenities7", $("[id*=amenities7]").val());

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

    var fileUpload = $("#FileUpload1").get(0);
    var files = fileUpload.files;
    for (var i = 0; i < files.length; i++) {
        loginFrm.append(files[i].name, files[i]);
    }
    $('#ibtn').html('<i class="fa fa-spin fa-spinner"></i>  Wait..').attr('disabled', true);
    $.ajax({
        type: "POST",
        url: "services/UpdateList.ashx",
        data: loginFrm,
        contentType: false,
        processData: false,
        dataType: "json",
        success: function (Response) {
            if (Response.Success) {

                CategoryData();
                toastr.success(Response.Message, " Update Notifications")
                $('#ibtn').html('Submit').attr('disabled', false);
                //$("[id*=listid]").val('');
                //$("[id*=picpath]").val('');
            }
            else {
                $('#ibtn').html('Submit').attr('disabled', false);

                toastr.error(Response.Message, " Update Notifications")
            }
        },
        error: function (err) {
            $.unblockUI();
            toastr.error(err.statusText, " Update Notifications")
        }
    });
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ConValues
/// </summary>
public sealed class ConValues
{
	public ConValues()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    //SMS Setting Default Values 
    public const string SMSUserName = "ethersofttex";
    public const string APIKeym = "lakshmanmaurya";
    public const string SMSPassword = "123123";
    public const string SMSSenderId = "listing";
    public const string Channel = "Trans";
    public const int flashsms = 0;
    public const int DCS = 0;
    public const int route = 02;
    //end SMS Setting Default Values 

    //public const String LoginURL = "http://donate200.com/login";
    //public const string Domain = "http://donate200.com/";
    //public const string LogoURL = "";
    //public const string CompanyName = "Donate 200";
   public const int AllowedMobileCount = 4;
    //public const int AllowedEmailCount = 100;
    //public const string WebURL = "http://donate200.com/";
    public const string SecretKey = "6da11d50-d48c-40dd-95c8-cb1da76dfc7e";

    public static DateTime DefaultDate = Convert.ToDateTime("1 Jan 1900");

    // Master OTP

    public const string MasterOTP = "8841";

   // Master EUR Value
    public const string EURRate = "81";

    public const string LogOutUrl = "/logout";

  // public const string EmailTo = "info@donate200.in";
    //Email settings
    //public const string SMTP = "relay-hosting.secureserver.net";
    public const string SMTP = "104.238.110.128";
   // public const string EmailFrom = "Donate 200 <noreply@donate200.in>";    
    public const bool EmailRequiredAuthentication = true;
    public const bool EmailSSLRequired = false;
  //  public const string EmailUserName = "noreply@donate200.in";
    public const string EmailPassword = "A4ex37q&";
    public const int EmailPort = 25;
    
    public const int MinimumInvestment = 10;
    public const int MaximumInvestment = 10000;
    public const int InvestmentRatio = 10;

    public const int MinimumRequest = 300;
    public const int MaximumRequest = 10000;
    public const int RequestRatio = 1;
 
   
   
    public const string PrimaryWalletName = "donor 200 Wallet";
    public const int PrimaryWalletId = 1;
    public const int PromoWalletId = 2;

    public const string startdate = "03/31/2017";
    public const string supperstartdate = "04/17/2017";
    public DateTime TimeInServer = DateTime.Now.AddHours(12.5);
  
   // public const string AdminUserName = "Admin";
   // public const string AdminPassword = Domain + "112233";
    public const string DefaultMobile = "7754011142";

   //IMPS
   // public const string APILink_Demo = "http://180.179.20.116:8030/RemitMoney/mtransfer";
    //string APILink_AddBeneficiary_Live = "https://emoney.myezypay.in/RemitMoney/mtransfer";
    //public const string APILink_Live = "http://180.179.20.116:8030/RemitMoney/mtransfer";
   // public const string APILink_Live = "https://ezymoney.myezypay.in/mtransfer";
   
    public const string APILink_Demo = "https://ezymoney.myezypay.in/RemitMoney/mtransfer";
    public const string APILink_Live = "https://ezymoney.myezypay.in/RemitMoney/mtransfer";

    // public const string APIKey = "8c681f98f85d42f69a"; //DemoApI Key
    public const string APIKey = "0e2b22d8d49d4ecf91";

    //public const string APIKeyLive = "0e2b22d8d49d4ecf91";
    //public const string APICode_Send_AddBeneficiary = "E06009";
    //public const string APICode_Verify = "E06021";
    //public const string APICode_ResendOTP = "E06019";
    //public const string APICode_Send_AddSender = "E06003";
    //public const string APICode_Get = "E06011";
    //public const string APICode_FundTransfer = "E06015";
    //public const string APICode_DeleteBeneficiary = "E06013";

    //Recharge
    //public const string APIMobileAuthCode = "3857e19eabe54dba89";
    //public const string APIMobileAuthCode = "0e2b22d8d49d4ecf91";
    //public const string APIMobileAuthCodeLive = "0e2b22d8d49d4ecf91";
    //public const string Mobile_Pre_APILink_Live = "https://api.myezypay.in/Ezypaywebservice/PushRequest.aspx?";
    //public const string Mobile_Post_APILink_Live = "https://api.myezypay.in/Ezypaywebservice/postpaidpush.aspx?";
	
	 //SMS Setting Default Values   
   


    //package settings
    public const int PackagevalidDays = 250;
    //withdrwal
    public const double Taxes = 1;   // service charge and admin charge
    public const bool NewRequestOnPendingWithdrawal = false;
    public const int MinimumRequestedAmount = 100;
    public const int MaximumRequestedAmount = 100000;

    //bonus
    public const int SponsorBonusRate = 10;
    //add setting
    public const int MaximumAdLinks = 5;
    public const decimal AdRate = 2;

    // PayUMoney Integration
    //public const string MERCHANT_KEY = "bWBISIYC";
    //public const string hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";
    //public const string SALT = "G0xoyiMc32";
    //public const string PAYU_BASE_URL = "https://secure.payu.in";
}
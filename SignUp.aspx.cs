using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    otpupdate bl = new otpupdate();
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (hfotp.Value == txtotp.Text)
            {
                bl.add(hfusername.Value);
                Response.Redirect("/Login.aspx");
                
            }
           
        }
        catch (Exception ex)
        {

        }
    }
}
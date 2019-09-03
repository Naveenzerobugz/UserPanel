using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UsersApp;

public partial class Admin_UsersMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
           
        {
            
            if (!string.IsNullOrEmpty(Page.User.Identity.Name) && Page.User.Identity.Name != "admin" )
            {
                
                Users p = Users.GetUserid((Convert.ToInt32(Page.User.Identity.Name)));
                if (p != null)
                {
                    musername.InnerText = p.UserName;
                }
               
            }
            else
             if (Request.Cookies["uroll"].Value != "user")
                {
                    Response.Redirect("/logout.aspx");
            }
        }
    }
}

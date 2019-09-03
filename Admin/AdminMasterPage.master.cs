using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication.Membership;


public partial class Admin_AdminMasterPageMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
             if (Request.Cookies["uroll"].Value != "admin")           
            if (!string.IsNullOrEmpty(Page.User.Identity.Name)  )
            {
                WebAdmin p = WebAdmin.GetAdmin((Convert.ToString(Page.User.Identity.Name)));
                if (p != null)
                {
                    ausername.InnerText = p.Username;
                }
            }
            else if (Request.Cookies["uroll"].Value!="admin")
            {        
                Response.Redirect("/logout.aspx");
            }
        }
    }
}

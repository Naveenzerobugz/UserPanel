using System;
using System.Collections.Generic;
using System.Linq;
using BusinessController;
using System.Web.UI;
using UsersApp;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Page.User.Identity.Name))
            {
                logout.Visible = false;
              
                Users p = Users.GetUserid(Convert.ToInt32(Page.User.Identity.Name));
                if (p != null)
                {
                    LoginSection.Visible = false;
                    musername.InnerText = p.UserName;
                    logout.Visible = true;
                    yourlist.Visible = true;
                    hello.Visible = true;
                }
                else
                {
                    LoginSection.Visible = true;
                }
           
            }
            else
            {        
                LoginSection.Visible = true;
                logout.Visible = false;
                yourlist.Visible = false;
                hello.Visible = false;
            }
        }
    }
}

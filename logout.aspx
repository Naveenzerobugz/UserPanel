<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logout.aspx.cs" Inherits="member_logout" %>

<!DOCTYPE html>
<script runat="server">
        protected void Page_Load(object sender, EventArgs e)
        {

            Response.Cookies["uaRole"].Expires = DateTime.Now.AddHours(12.5).AddDays(-1);
            Response.Cookies["uStatus"].Expires = DateTime.Now.AddHours(12.5).AddDays(-1);
            Response.Cookies["dName"].Expires = DateTime.Now.AddHours(12.5).AddDays(-1);
            Response.Cookies["ulastLogin"].Expires = DateTime.Now.AddHours(12.5).AddDays(-1);
            Response.Cookies["ukey"].Expires = DateTime.Now.AddHours(12.5).AddDays(-1);
            Response.Cookies["uName"].Expires = DateTime.Now.AddHours(12.5).AddDays(-1);
            Response.Cookies["uName"].Expires = DateTime.Now.AddHours(12.5).AddDays(-1);
            Response.Cookies["LoginRole"].Expires = DateTime.Now.AddHours(12.5).AddDays(-1);
            Response.Cookies["isApproved"].Expires = DateTime.Now.AddHours(12.5).AddDays(-1);
            Response.Cookies["uRole"].Expires = DateTime.Now.AddHours(12.5).AddDays(-1);
            Response.Cookies["uRank"].Expires = DateTime.Now.AddHours(12.5).AddDays(-1);
        
        FormsAuthentication.SignOut();     
        Session.Abandon();
        Session.RemoveAll();
        Response.Redirect("~/Default.aspx");
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>

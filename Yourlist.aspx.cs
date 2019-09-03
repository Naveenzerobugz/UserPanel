using System;
using System.Web.UI;

public partial class Yourlist : System.Web.UI.Page
{
    // 
    addlist bl = new addlist();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            loaddata();
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
       // objbll.NAME = txtaddress.Text;
    }
    public void loaddata()
    {
        gvListView.DataSource = bl.Getadlist();
        gvListView.DataBind();
    }
    protected void btnDelete_Command(object sender, System.Web.UI.WebControls.CommandEventArgs e)
    {
        try
        {
            bl.SYS_ID = e.CommandArgument.ToString();           
            bl.Delete();
            ScriptManager.RegisterStartupScript(this, typeof(Page),"", " toastr.warning('Record Deleted Successfully');", true);           
            loaddata();
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, typeof(Page), "", " toastr.error('Record Deleted Failed ==>'"+ex.Message+");", true);

        }
    }
}


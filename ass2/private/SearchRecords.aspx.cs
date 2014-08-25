using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class private_SearchRecords : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnTitle_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchRecords.aspx?Username=" + txbTitle.Text);
    }

    protected void btnAge_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchRecords.aspx?Sex=" + txbTitle.Text);
    }

    protected void btnMail_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchRecords.aspx?Email=" + txbTitle.Text);
    }


    protected void BtnSearchRecords_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShowCode.aspx?filename=SearchRecords.aspx&filecode=SearchRecords.aspx.cs");
    }
}
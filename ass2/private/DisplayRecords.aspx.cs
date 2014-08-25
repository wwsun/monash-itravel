using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class private_DisplayRecords : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnSource_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShowCode.aspx?filename=DisplayRecords.aspx&filecode=DisplayRecords.aspx.cs");
    }
    protected void BtnSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("SearchRecords.aspx");
    }
}
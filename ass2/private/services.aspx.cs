using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class private_services : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnTitle_Click(object sender, EventArgs e)
    {
        Response.Redirect("services.aspx?Title="+txbTitle.Text+"#searchphoto");
    }
}
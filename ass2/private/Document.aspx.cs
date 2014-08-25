using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class private_Document : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnCss_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/private/ShowCode.aspx?filename=~/css/menu.css&filecode=~/css/my-style.css");
    }
    protected void BtnSkin_Click(object sender, EventArgs e)
    {

    }
}
using DatabaseComp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //TextBox TxbUsername = LoginView1.FindControl("TxbUsername") as TextBox;
            //TextBox TxbPwd = LoginView1.FindControl("TxbPassword") as TextBox;
            //Label LblResult = LoginView1.FindControl("LblResult") as Label;
            //string username = TxbUsername.Text;
            //string password = TxbPwd.Text;
            //UserDao dao = new UserDao();
            //if (dao.login(username, password))
            //{
            //    LblResult.Text = "Login success!";
            //    FormsAuthentication.RedirectFromLoginPage(username, false);
            //}
            //else
            //{
            //    LblResult.Text = "Please sign in.";
            //}
        }
    }
    protected void BtnSignOff_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("~/default.aspx");
    }
    protected void BtnAdRotator_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/private/ShowCode.aspx?filename=~/Default.aspx&filecode=~/Default.aspx.cs");
    }
    protected void BtnAdRotator2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/private/ShowCode.aspx?filename=~/master/MasterPage.master");
    }
}
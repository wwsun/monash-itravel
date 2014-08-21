using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using DatabaseComp;
using System.Web.Security;

public partial class public_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void BtnSigin_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string username = InputUsername.Text;
            string password = InputPassword.Text;
            UserDao dao = new UserDao(); 
            if (dao.login(username, password))
            {
                LblResult.Text = "Login success!";
                FormsAuthentication.RedirectFromLoginPage(username, false);
            }
            else
            {
                LblResult.Text = "Login failed!";
            }
        }
      
    }
}
using DatabaseComp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class public_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ResultDiv.Style.Add("display","none");
        }
        else
        {
            ResultDiv.Style.Add("display", "block");
        }
    }
    protected void BtnRegister_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            // TODO: Validate passed & put the register logic here
            UserDao dao = new UserDao();
            User user = new User();
            user.Username = TxbUsername.Text;
            user.Password = TxbPassword.Text;
            user.Age = Convert.ToInt32(TxbAge.Text);
            user.AttendanceDate = TxbAttendDate.Text;
            user.Email = TxbMail.Text;

            if (OptSexF.Checked)
                user.Sex = OptSexF.Text;
            else if (OptSexM.Checked)
                user.Sex = OptSexM.Text;

            string interest = "";
            foreach (ListItem item in ChkList.Items)
            {
                if (item.Selected)
                    interest += item.Value + ",";
            }
            user.Interest = interest;

            string subscribeList = "";
            foreach (ListItem item in LsbSubscibe.Items)
            {
                if (item.Selected)
                    subscribeList += item.Value + ",";
            }
            user.Subscribe = subscribeList;

            foreach (ListItem item in DroplistGrade.Items)
            {
                if (item.Selected)
                    user.Grade = item.Value;
            }

            if (dao.CreateUser(user))
            {
                RegDiv.Style.Add("display","none");
                LblResult.Text = "<b>Username:</b> " + user.Username +"<br />"+
                                 "<b>Age:</b> " + user.Age +"<br />"+
                                 "<b>Attendance date:</b> " + user.AttendanceDate +"<br />"+
                                 "<b>Email:</b> " + user.Email + "<br />" +
                                 "<b>sex:</b> " + user.Sex +"<br />"+
                                 "<b>Interest:</b> " + user.Interest +"<br />"+
                                 "<b>Subscribe:</b> " + user.Subscribe +"<br />"+
                                 "<b>Grade:</b> " + user.Grade;
            }
        }
    }
    protected void BtnAddRecords_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/private/ShowCode.aspx?filename=~/public/Register.aspx&filecode=~/public/Register.aspx.cs");
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        try
        {
            int age = Convert.ToInt32(TxbAge.Text);
            args.IsValid = true;
        }
        catch
        {
            args.IsValid = false;
        }
    }
    protected void BtnSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/private/SearchRecords.aspx");
    }
    protected void BtnDisplay_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/private/DisplayRecords.aspx");
    }
}
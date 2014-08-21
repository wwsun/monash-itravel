using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class private_Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    string strPath = "";

    protected void BtnSendMail_Click(object sender, EventArgs e)
    {
        MailMessage newMsg = new MailMessage();

        foreach (GridViewRow gvRow in gvCustomers.Rows)
        {
            CheckBox cb = (CheckBox)gvRow.FindControl("chkEmail");

            if (cb != null && cb.Checked)
            {
                newMsg.To.Add(new MailAddress(gvRow.Cells[2].Text, gvRow.Cells[1].Text));
            }
        }

        newMsg.From = new MailAddress("wsun38@monash.edu", "FIT5192_Weiwei SUN");
        newMsg.Subject = TxbSubject.Text;
        newMsg.Body = TxbMessage.Text;

        bool sendEmail = true;
        if (fileUpload.HasFile)
        {
            if (UpLoadFile(fileUpload.FileName))
            {
                Attachment newAttach = new Attachment(strPath);
                newMsg.Attachments.Add(newAttach);
            }
            else
            {
                sendEmail = false;
            }
        }
        if (sendEmail)
        {
            try
            {
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.monash.edu.au";
                smtp.Send(newMsg);
                lblMail.Text = "Mail Successfully Sent";
            }
            catch (Exception exc)
            {
                lblMail.Text = exc.Message;
                TxbMessage.Text = newMsg.From.Address + exc.StackTrace;
            }
        }
    }

    public bool UpLoadFile(string strFileName)
    {
        bool blnFileOK = false;
        string strExt =
          System.IO.Path.GetExtension(fileUpload.PostedFile.FileName);
        if ((strExt != ".gif") && (strExt != ".jpg"))
        {
            lblMail.Text = "Invalid File Type";
        }
        else
        {
            blnFileOK = true;
            strPath =
              Server.MapPath(".") + "/UploadFiles/" + strFileName;
            fileUpload.PostedFile.SaveAs(strPath);
        }
        return blnFileOK;
    }
}
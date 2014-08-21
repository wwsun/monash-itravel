using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class private_DisplayCodes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FileInfo file = new FileInfo(Server.MapPath(Request.ServerVariables["SCRIPT_NAME"]));
        fileProp.Text = "<b>File Information</b><br />";
        fileProp.Text += "<b>Name:</b> " + file.Name + "<br />";
        fileProp.Text += "<b>Path:</b> "
          + file.DirectoryName + "<br />";
        fileProp.Text += "<b>Is Read Only:</b> "
          + file.IsReadOnly + "<br />";
        fileProp.Text += "<b>Last Access:</b> "
          + file.LastAccessTime + "<br />";
        fileProp.Text += "<b>Last Write:</b> "
          + file.LastWriteTime + "<br />";
        fileProp.Text += "<b>Length:</b> " + file.Length / 1024;

        DirectoryInfo dir = new DirectoryInfo(Server.MapPath("."));
        dirProp.Text = "<b>Directory Information</b><br />";
        dirProp.Text += "<b>Name:</b> " + dir.Name + "<br />";
        dirProp.Text += "<b>Parent:</b> " + dir.Parent + "<br />";
        dirProp.Text += "<b>Full Name:</b> "
          + dir.FullName + "<br />";
        dirProp.Text += "<b>Attributes:</b> "
          + dir.Attributes + "<br />";
        dirProp.Text += "<b>Creation Time:</b> "
          + dir.CreationTime;


        //////////////////////////////////

        ArrayList fileList = new ArrayList();
        DirectoryInfo dir2 = new DirectoryInfo(Server.MapPath("."));
        foreach (FileInfo file2 in dir2.GetFiles())
        {
            if (file2.Extension != ".mdb" && file2.Extension != ".accdb")
            {
                fileList.Add(file2.Name);
            }
        }
        dlFiles.DataSource = fileList;
        dlFiles.DataBind();

        ////////////////////////////////////////////
        String filePath = Server.MapPath(Request.QueryString["filename"]);
        FileName.Text = Request.QueryString["filename"];
        FileInfo file3 = new FileInfo(filePath);

        if (file3.Extension == ".aspx"
          || file3.Extension == ".skin"
          || file3.Extension == ".css"
          || file3.Extension == ".config"
          || file3.Extension == ".master")
        {
            Code.Text = ReadFile(filePath);
        }
        else
        {
            Code.Text = "Sorry you can't read a file with an extension of " + file.Extension;
        }

    }

    private string ReadFile(string filepath)
    {
        string fileOutput = "";
        try
        {
            StreamReader FileReader = new StreamReader(filepath);
            //The returned value is -1 if no more characters are 
            //currently available.
            while (FileReader.Peek() > -1)
            {
                //ReadLine() Reads a line of characters from the 
                //current stream and returns the data as a string.
                fileOutput += FileReader.ReadLine().Replace("<", "&lt;").Replace("  ", "&nbsp;&nbsp;&nbsp;&nbsp;")+"<br />";
            }
            FileReader.Close();
        }
        catch (FileNotFoundException e)
        {
            fileOutput = e.Message;
        }
        return fileOutput;
    }
}
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class private_ShowCode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String filePath = Server.MapPath(Request.QueryString["filename"]);
        FileName.Text = Request.QueryString["filename"];
        FileInfo file = new FileInfo(filePath);

        if (file.Extension  == ".aspx"
          || file.Extension == ".skin"
          || file.Extension == ".css"
          || file.Extension == ".config"
          || file.Extension == ".master")
        {
            Code.Text = ReadFile(filePath);
        }
        else
        {
            Code.Text = "Sorry you can't read a file with an extension of " + file.Extension;
        }
    }

    /// <summary>
    /// Read the source file using pure text format
    /// </summary>
    /// <param name="filepath">the file you want to read</param>
    /// <returns>the pure text format</returns>
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
                fileOutput += FileReader.ReadLine().Replace("<", "&lt;").Replace("  ", "&nbsp;&nbsp;&nbsp;&nbsp;") + "<br />";
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
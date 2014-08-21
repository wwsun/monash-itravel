using DatabaseComp;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class private_Events : System.Web.UI.Page
{
    ArrayList eveList = null;

    protected void Page_Load(object sender, EventArgs e)
    {   
        /**
        eveList = new ArrayList();
        DBUtil util = new DBUtil();
        DataSet ds = util.GetEvents();

        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            Event eve = new Event();
            DateTime dt = (DateTime)dr.Field<DateTime?>("EventDate");
            string title = dr.Field<string>("Title");
            string content = dr.Field<string>("Content");
            eveList.Add(eve);
        }

        foreach (Event eve in eveList)
        {
            LblEvent.Text += eve.eventDate + " " + eve.content + "<br />";
        }
         * **/
        
    }
    protected void EventCalendar_DayRender(object sender, DayRenderEventArgs e)
    {
        DBUtil util = new DBUtil();
        DataSet ds = util.GetEvents();

        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            DateTime dt = (DateTime)dr.Field<DateTime?>("EventDate");
            string title = dr.Field<string>("Title");
            string content = dr.Field<string>("Content");
            if (e.Day.Date == dt.Date)           
            {    
                e.Cell.BackColor = System.Drawing.Color.Silver;
                //add event lable to day
                Label lbl = new Label();
                lbl.BorderColor = System.Drawing.Color.Red;
                lbl.Text = "<br />"+title;
                e.Cell.Controls.Add(lbl);
                LblEvent.Text += "<li class=\"list-group-item\">" + dt.ToShortDateString() + " " + content + "</li>";
            }
            
        }
    }
}
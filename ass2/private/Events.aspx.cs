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
    EventDao dao = new EventDao();
    Event eve = null;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void EventCalendar_DayRender(object sender, DayRenderEventArgs e)
    {
        foreach (DateTime dt in EventCalendar.SelectedDates)
        {
            eve = dao.queryEvent(EventCalendar.SelectedDate.ToShortDateString());
            if (eve == null)
            {
                LblSelection.Text = "No Events Scheduled for Today!";
            }
            else
            {
                LblSelection.Text = eve.eventDate.ToLongDateString() + "<br /><b>" + eve.content + "</b>";
            }
        }


        /////////////////////////////////////////////
        /////           Next for Events      ////////
        /////               Rendering        ////////
        /////////////////////////////////////////////

        DataSet ds = dao.GetEvents();
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
                lbl.Text = "<br />" + title;
                e.Cell.Controls.Add(lbl);
                LblEvent.Text += "<li class=\"list-group-item\">" + dt.ToShortDateString() + " " + content + "</li>";
            }
        }
    }
}
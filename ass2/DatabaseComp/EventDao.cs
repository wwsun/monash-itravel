using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseComp
{
    public class EventDao
    {
        public Event queryEvent(string date){
            string sql = "SELECT * FROM [event] WHERE EventDate= #" + date + "#";
            OleDbCommand cmd = new OleDbCommand(sql);
            DBUtil util = new DBUtil();
            DataSet ds = util.FillDataSet(cmd, "event");

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                DateTime ddt = (DateTime)dr.Field<DateTime?>("EventDate");
                string title = dr.Field<string>("Title");
                string content = dr.Field<string>("Content");

                Event e = new Event();
                e.title = title;
                e.eventDate = ddt;
                e.content = content;
                return e;
            }
           
            return null;
        }


        public DataSet GetEvents()
        {
            String query = "SELECT * FROM [event]";
            OleDbCommand cmd = new OleDbCommand(query);
            DBUtil util = new DBUtil();
            DataSet ds = util.FillDataSet(cmd, "event");

            return ds;
        }
    }
}

using System;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;

namespace DatabaseComp
{
    public class UserDao
    {
        public Boolean login(string username, string password)
        {
            string query = "select * from [user] where username='"+username+"' and password='"+password+"'";
            OleDbCommand cmd = new OleDbCommand(query);
            DBUtil util = new DBUtil();
            DataSet ds = util.FillDataSet(cmd, "user");
            int ResultRows = ds.Tables[0].Rows.Count;
            if ( ResultRows > 0)
                return true;
            else
                return false;
        }

        public Boolean CreateUser(User user)
        {
            DBUtil util = new DBUtil();
            if(util.AddUser(user))
                return true;
            return false;
        }
    }
}

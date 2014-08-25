using System;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace DatabaseComp
{
    public class DBUtil
    {
        private string connectionString;

        public DBUtil() 
        {
            if ( WebConfigurationManager.ConnectionStrings["id25467247"].ConnectionString == null )
            {
                throw new ApplicationException("Missing ConnectionString variable in web.config");
            }
            else
            {
                connectionString = WebConfigurationManager.ConnectionStrings["id25467247"].ConnectionString;
            }
        }

        /// <summary>
        /// Add a new user: user register
        /// </summary>
        /// <param name="user">the specific user you want to insert</param>
        /// <returns>true: insert success, false: insert faild</returns>
        public Boolean AddUser(User user)
        {
            Boolean flag = false;
            OleDbConnection con = new OleDbConnection(connectionString);
            string insertSql = "INSERT INTO [user]"
                         + "(Username, [Password], Age, Sex, Interest, Subscribe, Grade, AttendanceDate, Email)"
                         + "VALUES (@username, @password, @age, @sex, @interest, @subscribe, @grade, @attdate, @mail)";
            OleDbCommand cmd = new OleDbCommand(insertSql, con);
            cmd.Parameters.AddWithValue("@username",user.Username);
            cmd.Parameters.AddWithValue("@password", user.Password);
            cmd.Parameters.AddWithValue("@age",user.Age);
            cmd.Parameters.AddWithValue("@sex", user.Sex);
            cmd.Parameters.AddWithValue("@interest", user.Interest);
            cmd.Parameters.AddWithValue("@subscribe", user.Subscribe);
            cmd.Parameters.AddWithValue("@grade",user.Grade);
            cmd.Parameters.AddWithValue("@attdate", user.AttendanceDate);
            cmd.Parameters.AddWithValue("@mail", user.Email);

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                flag = true;
            }
            finally
            {
                con.Close();
            }
            return flag;
        }

        internal protected DataSet FillDataSet(OleDbCommand cmd, string tableName)
        {
            OleDbConnection con = new OleDbConnection(connectionString);
            cmd.Connection = con;
            OleDbDataAdapter adapter = new OleDbDataAdapter(cmd);

            DataSet ds = new DataSet();
            try
            {
                con.Open();
                adapter.Fill(ds, tableName);
            }
            finally
            {
                con.Close();
            }
            return ds;
        }
        
    }
}

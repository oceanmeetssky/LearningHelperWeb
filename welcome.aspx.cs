using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*String username;
        String connstr = ConfigurationManager.ConnectionStrings["SFEngineeringConnectionString"].ConnectionString;

        using(SqlConnection conn = new SqlConnection(connstr)) {
            conn.Open();

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select Wuname from Webuser where Wuno = @id";
            cmd.Parameters.Add("@id", SqlDbType.Char);
            cmd.Parameters["@id"].Value = Session["userid"].ToString();

            username =  cmd.ExecuteScalar().ToString().Trim();
        }
        Response.Write("Welcome: " + username);
        */
    }
}
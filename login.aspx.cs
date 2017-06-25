using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Timeout = 90;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String userid = TextBox1.Text;
        String userpass = TextBox2.Text;
        String pass;
        String connstr = ConfigurationManager.ConnectionStrings["SFEngineeringConnectionString"].ConnectionString;

        using (SqlConnection conn = new SqlConnection(connstr)) {
            conn.Open();

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select Wupassword from Webuser where Wuno = @id";
            cmd.Parameters.Add("@id", SqlDbType.Char);
            cmd.Parameters["@id"].Value = userid;

            pass = cmd.ExecuteScalar().ToString().Trim();

            if (userpass == pass)
            {
                Session["userid"] = userid;
                Response.Redirect("welcome.aspx");
            }
            else
            {
                Response.Write("用户名或者密码错误!");
            }
        }
    }
}
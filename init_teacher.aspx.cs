using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Data;

public partial class init_teacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String filepath = Server.MapPath("~/UploadFiles/");
            String filename = FileUpload1.PostedFile.FileName;
            String tp = System.IO.Path.GetExtension(filename).ToLower();
            if (tp.Equals(".xls") )
            {
                //数据读取到DataSet中
                DataSet ds = new DataSet();
                FileUpload1.SaveAs(filepath + filename);
                //Response.Write("<p>上传成功，正在导入数据</p>");

                String connstr = "Provider = Microsoft.Jet.OLEDB.4.0; Data Source = " + Server.MapPath("~/UploadFiles") + "/" + filename + "; Extended Properties = Excel 4.0";
                Console.WriteLine(connstr);
                using (OleDbConnection conn = new OleDbConnection(connstr))
                {
                    conn.Open();

                    String sql = "select * from [Sheet1$]";
                    OleDbDataAdapter adapter = new OleDbDataAdapter(sql, conn);
                    adapter.Fill(ds, "[Sheet1$]");
                    conn.Close();
                    this.GridView1.DataSource = ds;
                    this.GridView1.DataBind();
                }

                //插入到数据库中
                string connstr1 = "Data Source=.;Initial Catalog=SFEngineering;Integrated Security=True";
                using (SqlConnection sqlconn = new SqlConnection(connstr1)) {
                    sqlconn.Open();
                    int count = ds.Tables["[Sheet1$]"].Rows.Count;
                    for (int i = 0; i < count; i++)
                    {
                        String Tno, Tname, Tittle, MobilePhone, Email;
                        Tno = ds.Tables["[Sheet1$]"].Rows[i]["Tno"].ToString();
                        Tname = ds.Tables["[Sheet1$]"].Rows[i]["Tname"].ToString();
                        Tittle = ds.Tables["[Sheet1$]"].Rows[i]["Title"].ToString();
                        MobilePhone = ds.Tables["[Sheet1$]"].Rows[i]["MobilePhone"].ToString();
                        Email = ds.Tables["[Sheet1$]"].Rows[i]["Email"].ToString();

                        string sql = "insert into Teacher values('" + Tno + "', '" + Tname + "','" + Tittle + "','" + MobilePhone + "','" + Email + "')";
                        SqlCommand cmd = new SqlCommand(sql, sqlconn);
                        cmd.ExecuteNonQuery();
                        
                    }
                    sqlconn.Close();
                }
                Response.Write("<script> alert('导入成功!'); </script>");

            }
            else
            {
                Response.Write("<script> alert('请选择格式为“.xls”文件!'); </script>");
            }
        }
        else
        {
            Response.Write("<script> alert('请选择要上传的文件文件!'); </script>");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class car_info_product : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.Cookies["Login"] != null)
        {
            Label1.Text = Request.Cookies["Login"]["Username"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
        }


        id = Convert.ToInt32(Request.QueryString["id"].ToString());
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "Select * from models where Mid=" + id + "";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        d1.DataSource = dt;
        d1.DataBind();
        conn.Close();
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        HttpCookie mycookie = new HttpCookie("Login");
        mycookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(mycookie);
        Response.Redirect("Login.aspx"); 
    }
}
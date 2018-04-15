using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

    int id;
    String spname, spprice, spimg;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.Cookies["Login"]["Username"].ToString();

        id = Convert.ToInt32(Request.QueryString["id"].ToString());
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "Select * from car_detail where id=" + id + "";
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
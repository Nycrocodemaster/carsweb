using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Default2 : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
 
    int id;
    String spname, spprice, spimg ,spquntity;

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
            cmd.CommandText = "Select * from sp_details where id=" + id + "";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            d1.DataSource = dt;
            d1.DataBind();
            d2.DataSource = dt;
            d2.DataBind();
            conn.Close();
        }
    
    protected void button_ServerClick(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "Select * from sp_details where id=" + id + "";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            spname = dr["spname"].ToString();
            spprice = dr["spprice"].ToString();
            spimg = dr["spimg"].ToString();
        }


        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "Insert into carttb(Name,price,uname,cartimg) Values('" + spname.ToString() + "','" + spprice.ToString() + "','" + Session["USERNAME"].ToString() + "','" + spimg.ToString() + "')";
        cmd.ExecuteNonQuery();
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
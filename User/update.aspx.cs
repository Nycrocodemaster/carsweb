using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class update : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);    

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

        if (IsPostBack)
        {
            return;
        }
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select * from Registrationtb where Username='" + Session["USERNAME"].ToString() + "'", conn);
        cmd.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        foreach (DataRow dr in dt.Rows)
        {          
            TextBox1.Text = dr["username"].ToString();
            TextBox2.Text = dr["password"].ToString(); 
            TextBox3.Text = dr["address"].ToString();
            TextBox4.Text = dr["city"].ToString();
            TextBox5.Text = dr["email"].ToString();
            TextBox6.Text = dr["phone_no"].ToString();
            TextBox7.Text = dr["pincode"].ToString();
            //cmd.CommandText = "insert into cookies(product_name,product_price,username) values('" + T1.Text + "','" + T3.Text + "','" + Session["username"].ToString() + "')";
            conn.Close();
        }
    }
    protected void Unnamed_ServerClick(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd1= new SqlCommand("update registrationtb set password='"+TextBox2.Text+"',address='"+TextBox3.Text+"',city='"+TextBox4.Text+"',email='"+TextBox5.Text+"',phone_no='"+TextBox6.Text+"',pincode='"+TextBox7.Text+"' where Username='"+Session["USERNAME"]+"'",conn);
        cmd1.ExecuteNonQuery();
    }
    protected void Button1_ServerClick(object sender, EventArgs e)
    {
        Response.Redirect("payment.aspx");
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        HttpCookie mycookie = new HttpCookie("Login");
        mycookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(mycookie);
        Response.Redirect("Login.aspx"); 
    }
}
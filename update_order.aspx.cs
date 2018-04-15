using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class update_order : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(" Data Source=DESKTOP-KHD6SMN;Initial Catalog=Registration;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        
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

            TextBoxUsern.Text = dr["username"].ToString();
            TextBoxpassw.Text = dr["password"].ToString();
            TextBoxfname.Text = dr["first_name"].ToString();
            TextBoxlname.Text = dr["last_name"].ToString();
            TextBox1.Text = dr["address"].ToString();
            TextBoxcity.Text = dr["city"].ToString();
            TextBoxEmail.Text = dr["email"].ToString();
            TextBoxph.Text = dr["phone_no"].ToString();
            TextBoxpin.Text = dr["pincode"].ToString();
            //cmd.CommandText = "insert into cookies(product_name,product_price,username) values('" + T1.Text + "','" + T3.Text + "','" + Session["username"].ToString() + "')";
            conn.Close();

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd1 = new SqlCommand("update registrationtb set password='" + TextBoxpassw.Text + "',first_name='" + TextBoxfname.Text + "',last_name='" + TextBoxlname.Text + "',address='" + TextBox1.Text + "',city='" + TextBoxcity.Text + "',email='" + TextBoxEmail.Text + "',phone_no='" + TextBoxph.Text + "',pincode='" + TextBoxpin.Text + "' where Username='" + Session["USERNAME"] + "'", conn);
        cmd1.ExecuteNonQuery();
    }
}
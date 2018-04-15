using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_carform : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    string a,b,c,d;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        a = Class1.GetRandomPassword(10).ToString();
        f1.SaveAs(Request.PhysicalApplicationPath + "./car images/" + a + f1.FileName.ToString());
        b = "car images/" + a + f1.FileName.ToString();
        c = Class1.GetRandomPassword(10).ToString();
        f2.SaveAs(Request.PhysicalApplicationPath + "./car_img2/" + c + f2.FileName.ToString());
        d = "car_img2/" + c + f2.FileName.ToString();
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into car_detail values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + b.ToString() + "','" + TextBox5.Text + "','"+d.ToString()+"')";
        cmd.ExecuteNonQuery();

        conn.Close();
    }
}
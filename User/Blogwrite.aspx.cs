using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Blogwrite : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    string a, b, c, d, l, m;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        a = Class1.GetRandomPassword(10).ToString();
        f1.SaveAs(Request.PhysicalApplicationPath + "./Blogimg/" + a + f1.FileName.ToString());
        b = "Blogimg/" + a + f1.FileName.ToString();

        c = Class1.GetRandomPassword(10).ToString();
        f2.SaveAs(Request.PhysicalApplicationPath + "./blogimg2/" + c + f2.FileName.ToString());
        d = "blogimg2/" + c + f2.FileName.ToString();

        l = Class1.GetRandomPassword(10).ToString();
        f3.SaveAs(Request.PhysicalApplicationPath + "./blogimg3/" + l + f3.FileName.ToString());
        m = "blogimg3/" + l + f3.FileName.ToString();

        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into blogtb values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + b.ToString() + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + d.ToString() + "','"+m.ToString()+"')";
        cmd.ExecuteNonQuery();
        conn.Close();


        string msgstring = "Your Blog is Sucessfully Uploaded";
        string content = "windows.onload=function() { alert('";
        content += msgstring;
        content += "');";
        content += "window.location='";
        content += Request.Url.AbsoluteUri;
        content += "');";
        ClientScript.RegisterStartupScript(this.GetType(), "SucessMessage", content, true);

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";      


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
        TextBox4.Text = string.Empty;      
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_sponser : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    string a, b, c, d,e,f,g,h,i,j,k,l;

    protected void Page_Load(object sender, EventArgs e)
    {
        a = Class1.GetRandomPassword(10).ToString();
        img01.SaveAs(Request.PhysicalApplicationPath + "./sponimg/" + a + img01.FileName.ToString());
        b = "spon images/" + a + img01.FileName.ToString();
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into sponsortb values('" +TextBox1.Text + "','"+b.ToString()+"')";
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_banUpload : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    string a, b, c, d;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            a = Class1.GetRandomPassword(10).ToString();
            img01.SaveAs(Request.PhysicalApplicationPath + "./banimg/" + a + img01.FileName.ToString());
            b = "ban images/" + a + img01.FileName.ToString();
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into banner values('" + b.ToString() + "')";
            cmd.ExecuteNonQuery();

            conn.Close();
    }
}
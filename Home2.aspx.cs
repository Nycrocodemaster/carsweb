using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Home2 : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select Top 8 * from models";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        d1.DataSource = dt;
        d1.DataBind();
        conn.Close();


        conn.Open();
        SqlCommand cmdd = conn.CreateCommand();
        cmdd.CommandType = CommandType.Text;
        cmdd.CommandText = "select Top 8 * from sp_details";
        cmdd.ExecuteNonQuery();
        DataTable dtt = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter(cmdd);
        da1.Fill(dtt);
        d2.DataSource = dtt;
        d2.DataBind();
        conn.Close();



        conn.Open();
        SqlCommand cmd2 = conn.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "select Top 8 * from blogtb";
        cmd2.ExecuteNonQuery();
        DataTable dt2 = new DataTable();
        SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
        da2.Fill(dt2);
        Repeater1.DataSource = dt2;
        Repeater1.DataBind();
        conn.Close();

    }
}
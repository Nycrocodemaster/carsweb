using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
delegate int count(int x);
public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        string query1=("Select count (Username) from registrationtb");
        SqlCommand cmd = new SqlCommand(query1, conn);
        conn.Open();
        object count = cmd.ExecuteScalar();  
        if (count != null)
        {
            Label1.Text = count.ToString();
       }
        conn.Close();

        string query2 = ("Select count (spname) from sp_details");
        SqlCommand cmd2 = new SqlCommand(query2, conn);
        conn.Open();
        object count2 = cmd.ExecuteScalar();
        if (count2 != null)
        {
            Label2.Text = count.ToString();
        }
        conn.Close();

        string query3 = ("Select count (Company_name) from models");
        SqlCommand cmd3 = new SqlCommand(query3, conn);
        conn.Open();
        object count3 = cmd.ExecuteScalar();
        if (count3 != null)
        {
            Label3.Text = count.ToString();
        }
    }
    }


 

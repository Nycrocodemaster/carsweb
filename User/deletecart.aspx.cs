using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class deletecart : System.Web.UI.Page
{
    int id;
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.Open();
        id = Convert.ToInt32(Request.QueryString["cartid"].ToString());
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "Delete from carttb where uname='" + Session["USERNAME"].ToString() + "' and cartid='"+id+"'";
        cmd.ExecuteNonQuery();
        Response.Redirect("../Cart/ShowCart.aspx");
       
    }
}
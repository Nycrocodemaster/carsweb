using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Carsinfo : System.Web.UI.Page
{
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
        if (!IsPostBack)
        {
            Fill();
        }


    }
    private void Fill()
    {
        string conString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
        string query = "SELECT  * FROM models where Company_name=@Company_name or @Company_name=''";
        SqlCommand cmd = new SqlCommand(query);
        cmd.Parameters.AddWithValue("@Company_name", ddlCountry.SelectedItem.Value);
        using (SqlConnection con = new SqlConnection(conString))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataSet ds = new DataSet())
                {
                    sda.Fill(ds);
                    d1.DataSource = ds;
                    d1.DataBind();
                }
            }
        }
    }
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string q = "";
        foreach (ListItem li in CheckBoxList1.Items)
        {
            if (li.Selected)
            {
                if (q == "")
                {
                    q = "'"+li.Text+"'";
                }
                else
                {
                    q = q + "," + "'" + li.Text + "'";
                }
            }
        }
        string conString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
        string query = "SELECT  * FROM models where fuelType in (" + q + ")";
        SqlCommand cmd = new SqlCommand(query);
       
        using (SqlConnection con = new SqlConnection(conString))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataSet ds = new DataSet())
                {
                    sda.Fill(ds);
                    d1.DataSource = ds;
                    d1.DataBind();
                }
            }
        }

    }
    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        string conString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
        string query = "SELECT  * FROM models where Company_name=@Company_name or @Company_name=''";
        SqlCommand cmd = new SqlCommand(query);
        cmd.Parameters.AddWithValue("@Company_name", ddlCountry.SelectedItem.Value);
        using (SqlConnection con = new SqlConnection(conString))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataSet ds = new DataSet())
                {
                    sda.Fill(ds);            
                    d1.DataSource = ds;
                     d1.DataBind();       
                }
            }
        }

    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        HttpCookie mycookie = new HttpCookie("Login");
        mycookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(mycookie);
        Response.Redirect("Login.aspx"); 
    }
}
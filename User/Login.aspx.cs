using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["UNAME"]!=null && Request.Cookies["PWD"]!=null)
            {
                TextBoxUsern.Text = Request.Cookies["UNAME"].Value;
                TextBoxpassw.Attributes["value"] = Request.Cookies["PWD"].Value;
                CheckBox1.Checked = true;
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String CS = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from Registrationtb where Username='" + TextBoxUsern.Text + "' and Password='" + TextBoxpassw.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {

                if (CheckBox1.Checked)
                {
                    Response.Cookies["UNAME"].Value = TextBoxUsern.Text;
                    Response.Cookies["PWD"].Value = TextBoxpassw.Text;

                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);
                }
                else
                {
                    Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                }
                String Utype;
                Utype = dt.Rows[0][6].ToString().Trim();

                if (Utype == "U")
                {
                    HttpCookie mycookie = new HttpCookie("Login");
                    mycookie["USERNAME"] = dt.Rows[0]["USERNAME"].ToString();
                    mycookie.Expires = DateTime.Now.AddDays(1d);
                    Response.Cookies.Add(mycookie);
                    Session["USERNAME"] = TextBoxUsern.Text;
                    Response.Redirect("UserHome.aspx");
                }
                if (Utype == "A")
                {
                    HttpCookie mycookie = new HttpCookie("Login");
                    mycookie["USERNAME"] = dt.Rows[0]["USERNAME"].ToString();
                    mycookie.Expires = DateTime.Now.AddDays(1d);
                    Response.Cookies.Add(mycookie);
                    Session["USERNAME"] = TextBoxUsern.Text;
                    Response.Redirect("../Admin/Admin.aspx");
                }


            }
            else
            {
                lblError.Text = "Invalid Username or Password !";
            }
        }
    }
}
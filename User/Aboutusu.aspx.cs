using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Aboutusu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Login"] != null)
        {
            Label2.Text = Request.Cookies["Login"]["Username"].ToString();
        }
        else
        {
            Response.Redirect("Login.aspx");
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
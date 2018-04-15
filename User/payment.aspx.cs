using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class payment : System.Web.UI.Page
{
    int count;
    String order_no;
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    
    protected void Page_Load(object sender, EventArgs e)
    {

        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "Select * from carttb where uname='"+Session["USERNAME"].ToString()+"'";
        SqlDataReader read = cmd.ExecuteReader();
        while (read.Read())
        {
            count +=Convert.ToInt32(read["price"]);
            Session["count"] = count;
        }




        order_no = Class1.GetRandomPassword(10).ToString();
        Session["order_no"] = order_no.ToString();

        Response.Write("<form action='https://www.sandbox.paypal.com/cgi-bin/webscr' method='post' name='buyCredits' id='buyCredits'>");
        Response.Write("<input type='hidden' name='cmd' value='_xclick'>");
        Response.Write("<input type='hidden' name='business' value='ashutosh.singh0910@gmail.com'>");
        Response.Write("<input type='hidden' name='currency_code' value='USD'>");
        Response.Write("<input type='hidden' name='item_name' value='payment'>");
        Response.Write("<input type='hidden' name='item_number' value='0'>");
        Response.Write("<input type='hidden' name='amount' value='" + Session["count"].ToString() + "'>");
        Response.Write("<input type='hidden' name='return' value='http://localhost:52711/Oldproject/payment_success.aspx?order=" + order_no.ToString() + "'>");
        Response.Write("</form>");
   

        Response.Write("<script type='text/javascript'>");
        Response.Write("document.getElementById('buyCredits').submit();");
        Response.Write("</script>");


    }
}


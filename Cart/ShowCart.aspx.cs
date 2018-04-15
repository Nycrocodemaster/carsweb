using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Cart_ShowCart : System.Web.UI.Page
{
   string s;
   int id;
    string t;
    string[] a = new string[3];
    int count = 0;
    int tot = 0;
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
   

    protected void Page_Load(object sender, EventArgs e)
    {
      //DataTable dt = new DataTable();
      //  dt.Columns.AddRange(new DataColumn[4] { new DataColumn("spname"), new DataColumn("spprice"), new DataColumn("spimg"), new DataColumn("id") });

      //  if (Request.Cookies["a"] != null)
      //  {
      //      s = Convert.ToString(Request.Cookies["a"].Value);

      //      string[] strArr = s.Split('|');

      //      for (int i = 0; i < strArr.Length; i++)
      //      {
      //          t = Convert.ToString(strArr[i].ToString());
      //          string[] strArr1 = t.Split(',');
      //          for (int j = 0; j < strArr1.Length; j++)
      //          {
      //              a[j] = strArr1[j].ToString();
      //          }
      //          count = count + (Convert.ToInt32(a[1].ToString()));
      //          dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(), i.ToString());
      //          price.Text = count.ToString();
      //      }
      //  }
      //  d1.DataSource = dt;
      //  d1.DataBind();

        conn.Open();
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from carttb where uname='"+Session["USERNAME"].ToString()+"'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        d1.DataSource = dt;
        d1.DataBind();
        conn.Close();

        //id = Convert.ToInt32(Request.QueryString[id].ToString());
        conn.Open();
        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "select price from carttb where uname='"+ Session["USERNAME"].ToString() + "'";
        SqlDataReader dr = cmd1.ExecuteReader();
        while(dr.Read())
        {
            count += Convert.ToInt32(dr["price"].ToString());
            price.Text = count.ToString();
        }
        conn.Close();
    }

    protected void d1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["checkoutbtn"] = "yes";
        Response.Redirect("../User/checkout.aspx");
    }
}


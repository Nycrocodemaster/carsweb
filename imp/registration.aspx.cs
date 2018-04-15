using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count (*) from Registrationtb where Username='" + TextBoxUsern.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("User Already Exist");
            }

            conn.Close();
        }
    }
  
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

            conn.Open();
            string insertQuery = "insert into Registrationtb (First_name,Last_name,Username,Email,Password,address,city,state,pincode,phone_no,Utype) values (@fname,@lname,@uname,@email,@password,@address,@city,@state,@pincode,@phone_no,@utype)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@fname", TextBoxfname.Text);
            com.Parameters.AddWithValue("@lname", TextBoxlname.Text);            
            com.Parameters.AddWithValue("@uname", TextBoxUsern.Text);
            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            com.Parameters.AddWithValue("@password", TextBoxpassw.Text);
            com.Parameters.AddWithValue("@utype", 'U');
            com.Parameters.AddWithValue("@address", TextBox1.Text);
            com.Parameters.AddWithValue("@city", TextBoxcity.Text);
            com.Parameters.AddWithValue("@state", TextBoxstate.Text);
            com.Parameters.AddWithValue("@pincode", TextBoxpin.Text);
            com.Parameters.AddWithValue("@phone_no", TextBoxph.Text);

            com.ExecuteNonQuery();
            Response.Redirect("Login.aspx");
            Response.Write("Registration is Successfull");

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }
}

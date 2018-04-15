using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Text;


public partial class CreatePassword : System.Web.UI.Page
{
    SqlCommand cmd;
    DataTable dt;
   
    SqlDataAdapter adp;
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        //with the help of the last page a link will be sent to the user's email address. the user can use this link only
        //one time to change his/her password
    
        //  here i am declairing connection  with the database
      
        conn.Open();
        if (conn.State == ConnectionState.Closed)
        {
            conn.Open();
        }
        // at the .aspx i am creating two panels. inside the second panel am holding a image named images.jpg that will show thae there is a invalid link,if
        // any user use this link second time.
        //if any user use this link first time then he will see the design that will show the structure of change password
        try
        {
            // here in SqlDataAdapter i am executing sql query if after the execution of this query there will be any data inside the datatable then
            // it will go inside the else condition otherwise it will go inside the if
            adp = new SqlDataAdapter("select Username,Email,code from Registrationtb where code=@code and(Email=@Email or Username=@Username )", conn);
            adp.SelectCommand.Parameters.AddWithValue("@code", Request.QueryString["code"].ToString());
            adp.SelectCommand.Parameters.AddWithValue("@Email", Request.QueryString["Email"].ToString());
            adp.SelectCommand.Parameters.AddWithValue("@Username", Request.QueryString["Username"].ToString());

            dt = new DataTable();
            adp.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                //if this condition will be setisfy then Pane_image will true and  Panel_reset_pwd will false

                Pane_image.Visible = true;
                Panel_reset_pwd.Visible = false;

                return;
            }
            else
            {
                //if this condition will be setisfy then Pane_image will be false and  Panel_reset_pwd will be true
                Pane_image.Visible = false;
                Panel_reset_pwd.Visible = true;

            }
        }
        catch
        {

        }
        finally
        {

        }
    }
    protected void btn_change_pwd_Click(object sender, EventArgs e)
    {
        //if the else condition will be setisfy then   Panel_reset_pwd will be true and after entering the new password by the user,
        //this code will be executed
        if (conn.State == ConnectionState.Closed)
        { conn.Open(); }
        try
        {
            // in the below quesry, after changing the password by the user, i am clearing the code column's value from the table tb_employee_with_code
            // if there will be no value inside the code column of the table and user will try to open the link again then at the time of
            //page load the user goes inside the first panel
            // and the first panel dislay message thar this link is invalid
            cmd = new SqlCommand("update Registrationtb set code='',Password=@Password where   code=@code  and (Email=@Email or Username=@Username)", conn);
            cmd.Parameters.AddWithValue("@Password", txt_pwd.Text);

            cmd.Parameters.AddWithValue("@code", Request.QueryString["code"].ToString());
            cmd.Parameters.AddWithValue("@Email", Request.QueryString["Email"].ToString());
            cmd.Parameters.AddWithValue("Username", Request.QueryString["Username"].ToString());

            cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
            lbl_msg.Text = "Your Password has been Changed successfully";
            txt_pwd.Text = "";
            txt_retype_pwd.Text = "";

        }
        catch
        {

        }
        finally
        {
            conn.Close();
        }

    }
    
}
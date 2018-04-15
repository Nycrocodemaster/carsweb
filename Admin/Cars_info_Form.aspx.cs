using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Cars_info_Form : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    string a, b, c, d;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //DropDownList ddl = new DropDownList();
        //ddl.SelectedValue;
        //ddl.DataSource = null;
        //ddl.DataTextField = "";
        //ddl.DataValueField

        a = Class1.GetRandomPassword(10).ToString();
        f1.SaveAs(Request.PhysicalApplicationPath + "./car images/" + a + f1.FileName.ToString());
        b = "car images/" + a + f1.FileName.ToString();

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery = "insert into models(Company_name,Model_name,Car_version,Cprice,Body_type,segment,engine,displacement,fuelType,transmission,noofgears,Peak_Power,Peak_Torque,Milleage_City,Length,Width,Height,Ground_Clearance,Wheelbase,Kerb_Weight,Boot_Space,Turning_Radius,AC,Climate_control,Central_Locking,Cd_Player,Power_streering,Power_Windows,Steering_Adjustment,Electricity_Adjustment,Steerin_Mounted,ABS,Airbag,Parking_Sensors,Traction_Control,Fuel_Capacity,Seating_Capacity,Specs_Front,Specs_Rear,Vehicle_type,cimage) values (@Company_name,@Model_name,@Car_version,@Cprice,@Body_type,@segment,@engine,@displacement,@fuelType,@transmission,@noofgears,@Peak_Power,@Peak_Torque,@Millege_City,@Length,@Width,@Height,@Ground_Clearance,@Wheelbase,@Kerb_Weight,@Boot_Space,@Turning_Radius,@AC,@Climate_control,@Central_Locking,@Cd_Player,@Power_streering,@Power_Windows,@Steering_Adjustment,@Electricity_Adjustment,@Steerin_Mounted,@ABS,@Airbag,@Parking_Sensors,@Traction_Control,@Fuel_Capacity,@Seating_Capacity,@Specs_Front,@Specs_Rear,@Vehicle_type, @cimage)";
        SqlCommand com = new SqlCommand(insertQuery, conn);
        com.Parameters.AddWithValue("@Company_name", TextBox1.Text);
        com.Parameters.AddWithValue("@Compamy_name", TextBox1.Text);
        com.Parameters.AddWithValue("@Model_name", TextBox2.Text);
        com.Parameters.AddWithValue("@Car_version", TextBox3.Text);
        com.Parameters.AddWithValue("@Cprice", TextBox4.Text);
        com.Parameters.AddWithValue("@Body_type", TextBox5.Text);
        com.Parameters.AddWithValue("@segment", TextBox6.Text);
        com.Parameters.AddWithValue("@engine", TextBox7.Text);
        com.Parameters.AddWithValue("@displacement", TextBox8.Text);
        com.Parameters.AddWithValue("@fuelType", TextBox9.Text);
        com.Parameters.AddWithValue("@transmission", TextBox10.Text);
        com.Parameters.AddWithValue("@noofgears", TextBox11.Text);
        com.Parameters.AddWithValue("@Peak_Power", TextBox12.Text);
        com.Parameters.AddWithValue("@Peak_Torque", TextBox13.Text);
        com.Parameters.AddWithValue("@Millege_City", TextBox14.Text);
        com.Parameters.AddWithValue("@Length", TextBox15.Text);
        com.Parameters.AddWithValue("@Width", TextBox16.Text);
        com.Parameters.AddWithValue("@Height", TextBox17.Text);
        com.Parameters.AddWithValue("@Ground_Clearance", TextBox18.Text);
        com.Parameters.AddWithValue("@Wheelbase", TextBox19.Text);
        com.Parameters.AddWithValue("@Kerb_Weight", TextBox20.Text);
        com.Parameters.AddWithValue("@Boot_Space", TextBox21.Text);
        com.Parameters.AddWithValue("@Turning_Radius", TextBox22.Text);
        com.Parameters.AddWithValue("@AC", TextBox23.Text);
        com.Parameters.AddWithValue("@Climate_control", TextBox24.Text);
        com.Parameters.AddWithValue("@Central_Locking", TextBox39.Text);
        com.Parameters.AddWithValue("@Cd_Player", TextBox25.Text);
        com.Parameters.AddWithValue("@Power_streering", TextBox26.Text);
        com.Parameters.AddWithValue("@Power_Windows", TextBox27.Text);
        com.Parameters.AddWithValue("@Steering_Adjustment", TextBox28.Text);
        com.Parameters.AddWithValue("@Electricity_Adjustment", TextBox29.Text);
        com.Parameters.AddWithValue("@Steerin_Mounted", TextBox30.Text);
        com.Parameters.AddWithValue("@ABS", TextBox31.Text);
        com.Parameters.AddWithValue("@Airbag", TextBox32.Text);
        com.Parameters.AddWithValue("@Parking_Sensors", TextBox33.Text);
        com.Parameters.AddWithValue("@Traction_Control", TextBox34.Text);
        com.Parameters.AddWithValue("@Fuel_Capacity", TextBox35.Text);
        com.Parameters.AddWithValue("@Seating_Capacity", TextBox36.Text);
        com.Parameters.AddWithValue("@Specs_Front", TextBox37.Text);
        com.Parameters.AddWithValue("@Specs_Rear", TextBox38.Text);
        com.Parameters.AddWithValue("@Vehicle_type", TextBox40.Text);
        com.Parameters.AddWithValue("@cimage", b.ToString());
        com.ExecuteNonQuery();


        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        TextBox14.Text = "";
        TextBox15.Text = "";
        TextBox16.Text = "";
        TextBox17.Text = "";
        TextBox18.Text = "";
        TextBox19.Text = "";
        TextBox20.Text = "";
        TextBox21.Text = "";
        TextBox22.Text = "";
        TextBox23.Text = "";
        TextBox24.Text = "";
        TextBox25.Text = "";
        TextBox26.Text = "";
        TextBox27.Text = "";
        TextBox28.Text = "";
        TextBox29.Text = "";
        TextBox30.Text = "";
        TextBox31.Text = "";
        TextBox32.Text = "";
        TextBox33.Text = "";
        TextBox34.Text = "";
        TextBox35.Text = "";
        TextBox36.Text = "";
        TextBox37.Text = "";
        TextBox38.Text = "";
        TextBox39.Text = "";
        TextBox40.Text = "";
        

    }
}
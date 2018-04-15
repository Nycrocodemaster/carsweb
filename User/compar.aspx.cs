using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class compar : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
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

        if (!IsPostBack)
        {
           Companyname.DataSource= GetData("spGetCars", null);
           Companyname.DataBind();

           Companyname2.DataSource = GetData("spGetCars", null);
           Companyname2.DataBind();


           ListItem liCars = new ListItem("Select Company", "-1");
           Companyname.Items.Insert(0, liCars);

           ListItem liCars2 = new ListItem("Select Company", "-1");
           Companyname2.Items.Insert(0, liCars2);

           ListItem liModel = new ListItem("Select Model", "-1");
           Modelname.Items.Insert(0, liModel);

           ListItem liModel2 = new ListItem("Select Model", "-1");
           Modelname2.Items.Insert(0, liModel2);

           Modelname.Enabled = false;
           Modelname2.Enabled = false;
        }
    }
    private DataSet GetData(string SPName, SqlParameter SPParameter)
    {
        string CS = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(CS);
        SqlDataAdapter da = new SqlDataAdapter(SPName, con);
        da.SelectCommand.CommandType = CommandType.StoredProcedure;
        if (SPParameter != null)
        {
            da.SelectCommand.Parameters.Add(SPParameter);
        }

        DataSet Ds = new DataSet();
        da.Fill(Ds);
        con.Close();
        return Ds;
    }
    protected void Companyname_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Companyname.SelectedIndex == 0)
        {
            Modelname.SelectedIndex = 0;
            Modelname.Enabled = false;
        }
        else
        {
            Modelname.Enabled = true;
            SqlParameter parameter = new SqlParameter("@Cid", Companyname.SelectedValue);
            DataSet Ds= GetData("spModelsByCid", parameter);

            Modelname.DataSource = Ds;
            Modelname.DataBind();

            ListItem liModel = new ListItem("Select Model", "-1");
            Modelname.Items.Insert(0, liModel);
        }
    }
    
    protected void Companyname2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Companyname2.SelectedIndex == 0)
        {
            Modelname2.SelectedIndex = 0;
            Modelname2.Enabled = false;
        }
        else
        {
            Modelname2.Enabled = true;
            SqlParameter parameter = new SqlParameter("@Cid", Companyname2.SelectedValue);
            DataSet Ds = GetData("spModelsByCid", parameter);

            Modelname2.DataSource = Ds;
            Modelname2.DataBind();

            ListItem liModel2 = new ListItem("Select Model", "-1");
            Modelname2.Items.Insert(0, liModel2);

        }
    }

    protected void Button1_Click(object sender, EventArgs e)

    {
        conn.Open();
        SqlDataAdapter sda8 = new SqlDataAdapter("SELECT A.cimage AS cimage1, B.cimage AS cimage2 FROM models A, models B WHERE A.Mid=" + int.Parse((Modelname.Text).Trim()) + " And B.Mid=" + int.Parse((Modelname2.Text).Trim()), conn);
        DataSet ds8 = new DataSet();
        sda8.Fill(ds8);
        FormView1.DataSource = ds8;
        FormView1.DataBind();
        conn.Close();
       
       conn.Open();
        //SqlDataAdapter sda = new SqlDataAdapter("select * from models where Mid="+ int.Parse((Modelname.Text).Trim()), conn);
        SqlDataAdapter sda = new SqlDataAdapter("SELECT A.Car_version AS CarVersion1, A.Cprice AS cprice1, B.Car_version AS CarVersion2, B.Cprice AS CPrice2 FROM models A, models B WHERE A.Mid=" + int.Parse((Modelname.Text).Trim()) + " And B.Mid=" + int.Parse((Modelname2.Text).Trim()), conn); 
        DataSet ds = new DataSet();
        sda.Fill(ds);
        f1.DataSource = ds;
        f1.DataBind();
        conn.Close();

        conn.Open();
        SqlDataAdapter sda1 = new SqlDataAdapter("SELECT A.Body_type AS Body_type1, A.segment AS segment1, A.engine AS engin1, A.displacement AS desplacement1, A.fuelType AS fuletype1, A.transmission AS transmission1, A.noofgears AS noofgears1, B.Body_type AS bodytype2, B.segment AS segment2, B.engine AS engin2, B.displacement AS desplacement2, B.fuelType AS fuletype2, B.transmission AS transmission2, B.noofgears AS noofgears2 FROM models A, models B WHERE A.Mid=" + int.Parse((Modelname.Text).Trim()) + " And B.Mid=" + int.Parse((Modelname2.Text).Trim()), conn);
        DataSet ds1 = new DataSet();
        sda1.Fill(ds1);
        f2.DataSource = ds1;
        f2.DataBind();
        conn.Close();

        conn.Open();
        SqlDataAdapter sda2 = new SqlDataAdapter("SELECT A.Peak_Power AS peak_power1, A.Peak_Torque AS Peak_Torque1, A.Milleage_City AS Milleage_City1, B.Peak_Power AS peak_power2, B.Peak_Torque AS Peak_Torque2, B.Milleage_City AS Milleage_City2 FROM models A, models B WHERE A.Mid=" + int.Parse((Modelname.Text).Trim()) + " And B.Mid=" + int.Parse((Modelname2.Text).Trim()), conn);
        DataSet ds2 = new DataSet();
        sda2.Fill(ds2);
        f3.DataSource = ds2;
        f3.DataBind();
        conn.Close();

        conn.Open();
        SqlDataAdapter sda3 = new SqlDataAdapter("SELECT A.Length AS Length1, A.Width AS Width1, A.Height AS Height1, A.Ground_Clearance AS Ground_Clearance1, A.Wheelbase AS Wheelbase1, A.Kerb_Weight AS Kerb_Weight1, A.Boot_Space AS Boot_Space1, A.Turning_Radius AS turning_radius1, B.Length AS Length2, B.Width AS Width2, B.Height AS Height2, B.Ground_Clearance AS Ground_Clearance2, B.Wheelbase AS Wheelbase2, B.Kerb_Weight AS Kerb_Weight2, B.Boot_Space AS Boot_Space2, B.Turning_Radius AS turning_radius2 FROM models A, models B WHERE A.Mid=" + int.Parse((Modelname.Text).Trim()) + " And B.Mid=" + int.Parse((Modelname2.Text).Trim()), conn);
        DataSet ds3 = new DataSet();
        sda3.Fill(ds3);
        f4.DataSource = ds3;
        f4.DataBind();
        conn.Close();

        conn.Open();
        SqlDataAdapter sda4 = new SqlDataAdapter("SELECT A.AC AS AC1, A.Climate_control AS Climate_control1, A.Central_Locking AS Central_Locking1, A.Cd_Player AS Cd_Player1, A.Power_streering AS Power_streering1, A.Power_Windows AS Power_Windows1, A.Steering_Adjustment AS Steering_Adjustment1, A.Electricity_Adjustment AS Electricity_Adjustment1, A.Steerin_Mounted AS Steerin_Mounted1, B.AC AS AC2, B.Climate_control AS Climate_control2, B.Central_Locking AS Central_Locking2, B.Cd_Player AS Cd_Player2, B.Power_streering AS Power_streering2, B.Power_Windows AS Power_Windows2, B.Steering_Adjustment AS Steering_Adjustment2, B.Electricity_Adjustment AS Electricity_Adjustment2, B.Steerin_Mounted AS Steerin_Mounted2 FROM models A, models B WHERE A.Mid=" + int.Parse((Modelname.Text).Trim()) + " And B.Mid=" + int.Parse((Modelname2.Text).Trim()), conn);
        DataSet ds4 = new DataSet();
        sda4.Fill(ds4);
        f5.DataSource = ds4;
        f5.DataBind();
        conn.Close();

        conn.Open();
        SqlDataAdapter sda5 = new SqlDataAdapter("SELECT A.ABS AS ABS1, A.Airbag AS Airbag1, A.Parking_Sensors AS Parking_Sensors1, A.Traction_Control AS Traction_Control1, B.ABS AS ABS2, B.Airbag AS Airbag2, B.Parking_Sensors AS Parking_Sensors2, B.Traction_Control AS Traction_Control2 FROM models A, models B WHERE A.Mid=" + int.Parse((Modelname.Text).Trim()) + " And B.Mid=" + int.Parse((Modelname2.Text).Trim()), conn);
        DataSet ds5 = new DataSet();
        sda5.Fill(ds5);
        f6.DataSource = ds5;
        f6.DataBind();
        conn.Close();

        conn.Open();
        SqlDataAdapter sda6 = new SqlDataAdapter("SELECT A.Fuel_Capacity AS Fuel_Capacity1, A.Seating_Capacity AS Seating_Capacity1, B.Fuel_Capacity AS Fuel_Capacity2, B.Seating_Capacity AS Seating_Capacity2 FROM models A, models B WHERE A.Mid=" + int.Parse((Modelname.Text).Trim()) + " And B.Mid=" + int.Parse((Modelname2.Text).Trim()), conn);
        DataSet ds6 = new DataSet();
        sda6.Fill(ds6);
        f7.DataSource = ds6;
        f7.DataBind();
        conn.Close();
        conn.Open();

        SqlDataAdapter sda7 = new SqlDataAdapter("SELECT A.Specs_Front AS Specs_Front1, A.Specs_Rear AS Specs_Rear1, B.Specs_Front AS Specs_Front2, B.Specs_Rear AS Specs_Rear2 FROM models A, models B WHERE A.Mid=" + int.Parse((Modelname.Text).Trim()) + " And B.Mid=" + int.Parse((Modelname2.Text).Trim()), conn);
        DataSet ds7 = new DataSet();
        sda7.Fill(ds7);
        f8.DataSource = ds7;
        f8.DataBind();
        conn.Close();
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        HttpCookie mycookie = new HttpCookie("Login");
        mycookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(mycookie);
        Response.Redirect("Login.aspx");   
    }
}
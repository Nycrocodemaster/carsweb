using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;


public partial class payment_success : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=index;Integrated Security=True");
    string order = "";
    string order_id;
    string s;
    string t;
    string[] a = new string[6];
    int count = 0;

    protected void Page_Load(object sender, EventArgs e){
        Label2.Text = DateTime.Now.ToString();

        if (Session["username"] != null)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[4] { new DataColumn("product_name"), new DataColumn("product_price"), new DataColumn("product_image"), new DataColumn("id") });

            if (Request.Cookies["aa"] != null)
            {
                s = Convert.ToString(Request.Cookies["aa"].Value);

                string[] strArr = s.Split('|');

                for (int i = 0; i < strArr.Length; i++)
                {
                    t = Convert.ToString(strArr[i].ToString());
                    string[] strArr1 = t.Split(',');
                    for (int j = 0; j < strArr1.Length; j++)
                    {
                        a[j] = strArr1[j].ToString();
                    }
                    count = count + (Convert.ToInt32(a[1].ToString()));
                    dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(), i.ToString());
                   price.Text = count.ToString();
                }
            }
            d1.DataSource = dt;
            d1.DataBind();


        }



conn.Open();
order = Request.QueryString["order"].ToString();

if(order == Session["order_no"].ToString())
{

SqlCommand cmd = conn.CreateCommand();
cmd.CommandType = CommandType.Text;
cmd.CommandText = "select * from index1 where username='"+Session["username"].ToString() +"'";

cmd.ExecuteNonQuery();
DataTable dt = new DataTable();
SqlDataAdapter da = new SqlDataAdapter(cmd);
da.Fill(dt);
foreach(DataRow dr in dt.Rows){

SqlCommand cmd1 = conn.CreateCommand();
cmd1.CommandType = CommandType.Text;
cmd1.CommandText = "insert into orders values('" + dr["Shipping_name"].ToString() + "','" + dr["Pincode"].ToString() + "','" + dr["Locality"].ToString() + "','" + dr["Address"].ToString() + "','" + dr["City"].ToString() + "','" + dr["State"].ToString() + "','" + dr["Landmark"].ToString() + "','" + dr["Phone"].ToString() + "','" + dr["Alt_Phone"].ToString() + "','" + dr["username"].ToString() + "','"+Session["order_no"].ToString()+"')";
cmd1.ExecuteNonQuery();
}


SqlCommand cmd5 = conn.CreateCommand();
cmd5.CommandType = CommandType.Text;
cmd5.CommandText = "select * from orders where Order_id='" + Session["order_no"].ToString() + "'";
cmd5.ExecuteNonQuery();
DataTable dt5 = new DataTable();
SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
da5.Fill(dt5);
DataList1.DataSource = dt5;
DataList1.DataBind();




SqlCommand cmd2 = conn.CreateCommand();
cmd2.CommandType = CommandType.Text;
cmd2.CommandText = "select top 1 * from orders where username='"+Session["username"].ToString()+"' order by id desc";
cmd2.ExecuteNonQuery();
DataTable dt2 = new DataTable();
SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
da2.Fill(dt2);
foreach(DataRow dr2 in dt2.Rows){
order_id = dr2["id"].ToString();
}


if(Request.Cookies["aa"]!=null){
s=Convert.ToString(Request.Cookies["aa"].Value);
string[] strArr = s.Split('|');
for(int i=0;i<strArr.Length;i++){
t=Convert.ToString(strArr[i].ToString());
string[] strArr1 = t.Split(',');
for(int j=0;j<strArr1.Length;j++){
a[j]=strArr1[j].ToString();
}


SqlCommand cmd3 = conn.CreateCommand();
cmd3.CommandType = CommandType.Text;
cmd3.CommandText = "insert into order_details values('"+Session["order_no"].ToString()+"','"+a[0].ToString()+"','"+a[1].ToString()+"','"+a[2].ToString()+"','"+count+"')";
cmd3.ExecuteNonQuery();
}
}

SqlCommand cmd8 = conn.CreateCommand();
cmd8.CommandType = CommandType.Text;
cmd8.CommandText = "select * from order_details where order_id='" + Session["order_no"].ToString() + "'";
cmd8.ExecuteNonQuery();
DataTable dt8 = new DataTable();
SqlDataAdapter da8 = new SqlDataAdapter(cmd8);
da8.Fill(dt8);
d1.DataSource = dt8;
d1.DataBind();
//DataList2.DataSource = dt8;
//DataList2.DataBind();

}
else
{
Response.Redirect("error.aspx");
}
conn.Close();




//Response.Cookies["a"].Expires=DateTime.Now.AddDays(-1);
//Response.Cookies["a"].Expires=DateTime.Now.AddDays(-1);

}
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=Invoice.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        Panel1.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        //Document pdfDoc = new Document.SetPageSize(iTextSharp.text.PageSize.A4.Rotate());
        Document pdfDoc = new Document(iTextSharp.text.PageSize.A4.Rotate(), 25, 25, 30, 30);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();

}


}

    

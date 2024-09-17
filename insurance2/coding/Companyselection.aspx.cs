using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Companyselection : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("database=newinsurance;integrated security=true;server=localhost");
    SqlDataAdapter da;
    SqlCommand cm;
    DataSet ds = new DataSet();
    DataRow r;
    SqlCommandBuilder cb; 
    protected void Page_Load(object sender, EventArgs e)
    {
        
        da = new SqlDataAdapter("select company_id,company_name,company_phone,company_email,comapny_website_link from insurance_companies_master ", con);
        da.Fill(ds, "company_master");
        filldata();
    }
    private void filldata()
		{
			DataGrid1.DataSource=ds;
			DataGrid1.DataBind();
		}
    

    protected void DataGrid1_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        
       //int j;
         Session["j"] = Convert.ToInt32(DataGrid1.Items[DataGrid1.SelectedIndex].Cells[0].Text);
         Response.Redirect("agntcmpregistration.aspx"); 
        //TextBox1.Text = j.ToString();

    }


    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        filldata();
    }
}

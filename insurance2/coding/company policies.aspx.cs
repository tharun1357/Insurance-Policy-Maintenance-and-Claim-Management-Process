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

public partial class company_policies : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("database=newinsurance;integrated security=true;server=localhost");
    SqlDataAdapter da;
    SqlCommand cm;
    DataSet ds = new DataSet();

    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        i = Convert.ToInt32(Session["agent_id"]);
        da = new SqlDataAdapter("select company_id,company_name,company_phone,company_email,comapny_website_link from insurance_companies_master where company_id in(select company_id from insu_companies_agent_master where agent_id=" + i + " and agent_accepted_date is not null)", con);
        da.Fill(ds, "company_master");
        filldata();
        //			DataGrid2.Visible=false;
    }
    private void filldata()
    {
        DataGrid1.DataSource = ds;
        DataGrid1.DataBind();
    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int j;
        j = Convert.ToInt32(DataGrid1.Items[DataGrid1.SelectedIndex].Cells[0].Text);
        Session["company_id"] = j.ToString();
        Response.Redirect("agent_policy_details.aspx");


        //			DataGrid1.Visible=false;
        //			DataGrid2.Visible=true;
			

    }
}

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

public partial class custpolicydetails : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("database=newinsurance;integrated security=true;server=localhost");
    SqlDataAdapter da;
    SqlCommand cmd;
    SqlCommandBuilder cb;
    SqlDataReader dr;
    DataRow r;
    DataSet ds = new DataSet();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            filldata();


        }

    }
    private void filldata()
    {
        da = new SqlDataAdapter("select a.policy_id,a.policy_name,b.policy_type_field_name,a.policy_min_value,a.policy_max_value,a.policy_min_age_limit,a.policy_max_age_limit,d.company_name from policies_master a,policy_type_master b,insurance_companies_master d where a.policy_type_field_id=b.policy_type_field_id and a.company_id=d.company_id ", cn);
        da.Fill(ds, "policy");
        DataGrid1.DataSource = ds;
        DataGrid1.DataMember = "policy";
        DataGrid1.DataBind();
    }

    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int l;
        Session["l"] = Convert.ToInt32(DataGrid1.Items[DataGrid1.SelectedIndex].Cells[0].Text);
        //			j=DataGrid1.Items[DataGrid1.SelectedIndex].Cells[7].Text;
       Session["p"] = DataGrid1.Items[DataGrid1.SelectedIndex].Cells[7].Text;
        
        Response.Redirect("custagentreg.aspx");
    }
    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        filldata();
    }
}

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

public partial class premium_details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("database=newinsurance;integrated security=true;server=localhost");
    SqlDataAdapter da;
    //		SqlCommand cm;
    DataSet ds = new DataSet();
	
    protected void Page_Load(object sender, EventArgs e)
    {
        int i;
        i = Convert.ToInt32(Session["cust_id"]);
        da = new SqlDataAdapter("select cust_policy_no,policy_amount,policy_prem_amount,policy_prem_pay_mode,policy_prem_months,nominee_status from cust_policies_master where cust_id=" + i + " ", con);
        da.Fill(ds, "cust_company");
        filldata();

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
        Session["cust_policy_no"] = j.ToString();
        Response.Redirect("cust_nomineesdetails.aspx?cpno=" + j.ToString());
        

    }
    

    protected void DataGrid1_PageIndexChanged1(object source, DataGridPageChangedEventArgs e)
    {
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        filldata();
    }
}

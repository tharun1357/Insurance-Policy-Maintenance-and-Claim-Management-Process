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

public partial class agntcustdetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("database=newinsurance;integrated security=true;server=localhost");
    SqlDataAdapter da;
    SqlCommand cm;
    DataSet ds = new DataSet();
    int k;
    string l;
		
    protected void Page_Load(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select a.cust_policy_no,b.cust_name,c.policy_name,a.policy_date,a.policy_amount,a.policy_prem_amount,a.policy_prem_pay_mode,a.policy_prem_amount,a.policy_prem_months,a.nominee_status from cust_policies_master a,policies_master c,customer_master b where agent_id=" + Session["agent_id"] + " and a.cust_id=b.cust_id and a.policy_id=c.policy_id", con);
        da.Fill(ds, "customer");
        filldata();

    }
    private void filldata()
    {
        DataGrid1.DataSource = ds;
        DataGrid1.DataBind();
    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {
        k = Convert.ToInt32(DataGrid1.Items[DataGrid1.SelectedIndex].Cells[0].Text);
        l = DataGrid1.Items[DataGrid1.SelectedIndex].Cells[8].Text;
        Session["customer_policy_no"] = k;
        if (l == "yes")
        {
            Response.Redirect("agent_cust_nominee.aspx");
        }
        else
        {
            msg("They Are No Nominees");
        }
    }

		private void msg(string message)
		{
			this.RegisterStartupScript("ClientScript","<html><body><script>alert('"+message+"')</script></body></html>");
			
		}

		

        protected void DataGrid1_PageIndexChanged1(object source, DataGridPageChangedEventArgs e)
        {
            DataGrid1.CurrentPageIndex = e.NewPageIndex;
            filldata();

        }
}

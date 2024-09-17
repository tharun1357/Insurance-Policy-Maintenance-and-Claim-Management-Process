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

public partial class policyInfo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    SqlCommand cmd;
    SqlCommand cmd1;
    SqlCommandBuilder cmb;
    DataRow r;
    int x;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select * from policies_master where policy_id in (select policy_id from cust_policies_master where cust_id=" + Session["cust_id"] + ")", con);
        da.Fill(ds, "policy_master");
        int i;
        int count;
        count = ds.Tables["policy_master"].Rows.Count;
        Array a = Array.CreateInstance(typeof(String), count, 0);
        for (i = 0; i < count; i++)
        {
            a = ds.Tables["policy_master"].Rows[i].ItemArray;
            dplcyname.Items.Add(a.GetValue(1).ToString());
            dplcyname.Items[dplcyname.Items.Count - 1].Value = a.GetValue(0).ToString();
        }
    }
    protected void cmdplcyinfo_Click(object sender, EventArgs e)
    {
        Session["c"] = dplcyname.SelectedItem.Text.ToString();
        Session["d"] = dplcyname.SelectedItem.Value;
        Response.Redirect("Policyclaim.aspx");
    }
}

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

public partial class agntcmpregistration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("database=newinsurance;integrated security=true;server=localhost");
    SqlDataAdapter da;
    SqlCommand cm;
    DataSet ds = new DataSet();
    DataRow r;
    SqlCommandBuilder cb;
    protected void Page_Load(object sender, EventArgs e)
    {
        int i;
        i = Convert.ToInt32(Session["agent_id"]);
        txt_agntID.Text = i.ToString();

        int k;
        k = Convert.ToInt32(Session["j"]);
        txt_cmpID.Text = k.ToString();
    }
    protected void cmdsave_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select company_id,agent_id from insu_companies_agent_master", con);
        da.Fill(ds, "insu_company");
        
        r = ds.Tables["insu_company"].NewRow();
        r[0] = Convert.ToInt32(txt_cmpID.Text);
        r[1] = Convert.ToInt32(txt_agntID.Text);
        ds.Tables["insu_company"].Rows.Add(r);
        cb = new SqlCommandBuilder(da);
        da.Update(ds, "insu_company");
    }
    protected void cmdBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Companyselection.aspx");
    }
}

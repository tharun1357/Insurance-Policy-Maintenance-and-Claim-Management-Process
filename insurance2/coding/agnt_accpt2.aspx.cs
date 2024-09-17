using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class agnt_accpt2 : System.Web.UI.Page
{
    SqlDataAdapter da;
    SqlCommand cmd1;
    DataSet ds = new DataSet();
    SqlCommandBuilder cb;
    SqlDataReader dr;
    SqlConnection cn = new SqlConnection("database=newinsurance;integrated security=true;server=localhost");
    DataRow r;
    int a;
    protected void Page_Load(object sender, EventArgs e)
    {
        txt_agntid.Text = Session["k"].ToString();
        txt_cmpid.Text = Session["i"].ToString();
        txt_date.Text = DateTime.Now.ToShortDateString();
        da = new SqlDataAdapter("select * from insu_companies_agent_master where agent_accepted_date is null", cn);
        da.Fill(ds, "agent_policy");
    }
    protected void cmdsavechngs_Click(object sender, EventArgs e)
    {
        cmd1 = new SqlCommand("update insu_companies_agent_master set agent_accepted_date='" + Convert.ToDateTime(txt_date.Text) + "' where company_id=" + Convert.ToInt32(txt_cmpid.Text) + " and agent_id=" + Convert.ToInt32(txt_agntid.Text) + "", cn);
        cn.Open();
        cmd1.ExecuteNonQuery();
       
 
    }
    
    protected void cmdback_Click(object sender, EventArgs e)
    {
        Response.Redirect("agent_accept_details.aspx");
    }
}

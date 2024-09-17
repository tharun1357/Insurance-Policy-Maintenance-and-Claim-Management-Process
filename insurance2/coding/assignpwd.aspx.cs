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

public partial class assignpwd : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
    SqlDataAdapter da;
    SqlCommandBuilder cmb;
    DataSet ds = new DataSet();
    SqlCommand cmd;
    DataRow r;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtagentid.Text = Session["agent_id"].ToString();
        txtpwdchngdate.Text = DateTime.Now.ToShortDateString();

    }
    protected void cmdsave_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select * from agent_security_master", con);
        ds = new DataSet();
        da.Fill(ds, "agent_secu");
        r = ds.Tables["agent_secu"].NewRow();
        r[0] = txtagentid.Text;
        r[1] = txtpwd.Text;
        r[2] = txtreenterpwd.Text;
        r[3] = Convert.ToDateTime(txtpwdchngdate.Text);
        ds.Tables["agent_secu"].Rows.Add(r);
        cmb = new SqlCommandBuilder(da);
        da.Update(ds, "agent_secu");
        Response.Redirect("Agentlogin.aspx");
    }
}

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

public partial class custpolicyreg : System.Web.UI.Page
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

        txtcmpname.Text = Session["p"].ToString();
            cmd = new SqlCommand("select agent_name from agent_master where agent_id in (select agent_id from insu_companies_agent_master where company_id in (select company_id from insurance_companies_master where company_name ='" + txtcmpname.Text + "'))", cn);
        cn.Open();
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            dr_agent_name.Items.Add(dr[0].ToString());
        }

        cn.Close();
        

    }
     
    protected void dr_agent_name_SelectedIndexChanged1(object sender, EventArgs e)
    {
              
        cmd = new SqlCommand("select agent_id from agent_master where agent_name='" + dr_agent_name.SelectedItem.Value + "'", cn);
        cn.Open();
        Session["m"] = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
    }
    protected void cmdplcyinfo_Click(object sender, EventArgs e)
    {
        Response.Redirect("policyreg_enter.aspx");
    }
}

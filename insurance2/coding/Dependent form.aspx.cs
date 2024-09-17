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

public partial class Dependent_form : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    SqlDataAdapter da;
    SqlCommand cmd;
    SqlCommandBuilder cb;
    DataSet ds = new DataSet();
    DataRow r;
    protected void Page_Load(object sender, EventArgs e)
    {
        txt_cust_Name.Text = Session["cust_name"].ToString();
        int i;
        //			int count;
        cmd = new SqlCommand("select count(*) from cust_dependent_master", cn);
        cn.Open();
        i = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        if (i == 0)
        {
            txt_dependent_id.Text = "1";

        }
        else
        {
            cmd = new SqlCommand("select max(depen_id)+1 from cust_dependent_master", cn);
            cn.Open();
            txt_dependent_id.Text = Convert.ToInt32(cmd.ExecuteScalar()).ToString();

        }
        da = new SqlDataAdapter("select * from cust_dependent_master", cn);
        da.Fill(ds, "dependent");
        cn.Close();
    }
    protected void cmdsave_Click(object sender, EventArgs e)
    {
        r = ds.Tables["dependent"].NewRow();
        r[0] = Convert.ToInt32(txt_dependent_id.Text);
        cmd = new SqlCommand("select cust_id from customer_master where cust_name='" + txt_cust_Name.Text + "'", cn);
        cn.Open();        
        r[1] = Convert.ToInt32(cmd.ExecuteScalar());
        r[2] = txt_dpndt_Name.Text.ToString();
        r[3] = txt_dpndt_rship.Text.ToString();
        r[4] = txt_dpdaddress.Text.ToString();
        r[5] = Convert.ToInt32(txt_phno.Text);
        r[6] = txt_Email.Text.ToString();
        r[7] = Convert.ToDateTime(txt_dob.Text);
        ds.Tables["dependent"].Rows.Add(r);
        cb = new SqlCommandBuilder(da);
        da.Update(ds, "dependent");
        Response.Redirect("dependent details.aspx");
        cn.Close();
    }
    protected void cmdback_Click(object sender, EventArgs e)
    {
        Response.Redirect("custpolicydetails.aspx");
    }
}

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

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
    SqlDataAdapter da;
    SqlCommandBuilder cmb;
    DataRow r;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtcustid.Text = Session["cust_id"].ToString();
        txtpwdchngdate.Text = DateTime.Now.ToShortDateString();
			
    }
    protected void cmdsave_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select * from customer_security_master", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "cust_secu");
        r = ds.Tables["cust_secu"].NewRow();
        r[0] = txtcustid.Text;
        r[1] = txt_pwd.Text;
        r[2] = txt_reenterpwd.Text;
        r[3] = Convert.ToDateTime(txtpwdchngdate.Text);
        ds.Tables["cust_secu"].Rows.Add(r);
        cmb = new SqlCommandBuilder(da);
        da.Update(ds, "cust_secu");
        if (Session["creg"] == "yes")
        {
            Response.Redirect("Customerlogin.aspx");
        }
    }
}

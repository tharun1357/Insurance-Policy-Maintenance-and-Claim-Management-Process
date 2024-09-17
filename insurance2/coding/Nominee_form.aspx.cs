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

public partial class Nominee_form : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    SqlDataAdapter da;
    SqlCommand cmd;
    DataSet ds = new DataSet();
    SqlCommandBuilder cmb;
    DataRow r;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            //string a;
            //a=Session["cust_policy_no"].ToString();
            //                msg(a);

            txt_policyno.Text = Session["cust_policy_no"].ToString();


            cmd = new SqlCommand("select count(*) from nominee_details", cn);
            cn.Open();
            int id;
            id = Convert.ToInt32(cmd.ExecuteScalar());
            cn.Close();
            if (id == 0)
            {
                txt_nomineeid.Text = "1";
            }
            else
            {
                cn.Open();
                cmd = new SqlCommand("select max(nominee_id)+1 from nominee_details", cn);
                txt_nomineeid.Text = Convert.ToString(cmd.ExecuteScalar());
                cn.Close();
            }
        }
    }
    protected void cmdsave_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select * from nominee_details", cn);
        da.Fill(ds, "nominees");
        r = ds.Tables["nominees"].NewRow();
        r[0] = Convert.ToInt32(txt_nomineeid.Text);
        r[1] = txt_nomineename.Text;
        r[2] = txt_address.Text;
        r[3] = Convert.ToDateTime(txt_dob.Text);
        r[4] = txt_mailid.Text;
        r[5] = txt_rship.Text;
        r[6] = Convert.ToInt32(txt_policyno.Text);
        ds.Tables["nominees"].Rows.Add(r);
        cmb = new SqlCommandBuilder(da);
        da.Update(ds, "nominees");
        Response.Redirect("Dependent form.aspx");
    }
    protected void cmdback_Click(object sender, EventArgs e)
    {

    }
}

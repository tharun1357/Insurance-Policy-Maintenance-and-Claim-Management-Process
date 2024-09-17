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

public partial class _Default : System.Web.UI.Page
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
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();
        int count;
        cmd = new SqlCommand("select count(*) from policy_claim_master", con);
        count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count == 0)
        {
            txtclaimid.Text = "1";
        }
        else
        {
            cmd = new SqlCommand("select max(claim_id)+1 from policy_claim_master", con);
            count = Convert.ToInt32(cmd.ExecuteScalar());
            txtclaimid.Text = count.ToString();
        }
        con.Close();
        string i ,j;
        i = Session["b"].ToString();
        j = Session["c"].ToString();
        txtstsdesc.Text = i.ToString();
        txt_custplcy_name.Text = j.ToString();
        txt_date.Text = DateTime.Now.ToShortDateString();
       // txt_amnt.Text = "";
        txt_stsbit.Text = "yes";
        


    }
    protected void cmdsave_Click(object sender, EventArgs e)
    {
        int k = Convert.ToInt32(Session["d"]);
        da = new SqlDataAdapter("select * from policy_claim_master", con);
        da.Fill(ds, "policy_claim_master");
        
        cmd = new SqlCommand("select cust_policy_no from cust_policies_master  where cust_id=" + Session["cust_id"] + " and policy_id=" + k + "", con);
        int a;
        con.Open();
        a = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        cmd = new SqlCommand("select cust_policy_no from policy_claim_master where cust_policy_no=" + a + " ", con);
        con.Open();
        dr = cmd.ExecuteReader();
        bool count;
        count = dr.HasRows;
        dr.Close();
        if (count == true)
        {

            message("already claimed");
            con.Close();


        }
        else
        {
            
            r = ds.Tables["policy_claim_master"].NewRow();
            r[0] = Convert.ToInt32(txtclaimid.Text);
            r[1] = Convert.ToInt32(txtstsdesc.Text);
            r[2] = a.ToString();
            r[3] = Convert.ToDateTime(txt_date.Text);
            r[4] = Convert.ToInt32(txt_amnt.Text);
            r[5] = txt_stsbit.Text;
            ds.Tables["policy_claim_master"].Rows.Add(r);
            cmb = new SqlCommandBuilder(da);
            da.Update(ds, "policy_claim_master");
            
        }
		
            }
    private void message(string msg)
    {
        this.RegisterStartupScript("ClientScript", "<html><body><script>alert('" + msg + "')</script></body></html>");
    }

    protected void cmdback_Click(object sender, EventArgs e)
    {
        Response.Redirect("Policyclaimstatusdetails.aspx");

    }
}

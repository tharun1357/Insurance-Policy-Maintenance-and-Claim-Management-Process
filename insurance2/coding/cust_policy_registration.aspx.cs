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

public partial class cust_policy_registration : System.Web.UI.Page
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
        cmd = new SqlCommand("select cust_name from customer_master where cust_id=" + Session["cust_id"] + "", cn);
        cn.Open();

       

        TextBox2.Text = cmd.ExecuteScalar().ToString();
        //		TextBox2.Text=j.ToString();
        TextBox3.Text = Session["l"].ToString();
        TextBox4.Text = DateTime.Now.ToString();

        TextBox11.Text = Session["m"].ToString();
        //cn.Close();
        cmd = new SqlCommand("select count(*)from cust_policies_master", cn);
        int id;
        id = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();
        if (id == 0)
        {
            TextBox1.Text = "1";
        }
        else
        {
            cn.Open();
            cmd = new SqlCommand("select max(cust_policy_no)+1 from cust_policies_master", cn);
            TextBox1.Text = Convert.ToString(cmd.ExecuteScalar());
        }
    }
    protected void cmdsave_Click(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select * from cust_policies_master", cn);
        da.Fill(ds, "cust_policies_master");
        r = ds.Tables["cust_policies_master"].NewRow();
        r[0] = Convert.ToInt32(TextBox1.Text);

        r[1] = Convert.ToInt32(Session["cust_id"]);
        r[2] = Convert.ToInt32(TextBox3.Text);
        r[3] = Convert.ToDateTime(TextBox4.Text);
        r[4] = Convert.ToInt32(TextBox5.Text);
        r[5] = Convert.ToInt32(TextBox6.Text);
        r[6] = Convert.ToInt32(TextBox7.Text);
        r[7] = dr_policy_payamnt.SelectedItem.Text;
        r[8] = Convert.ToInt32(TextBox9.Text);
        r[9] = dr_nominee_status.SelectedItem.Text;
        r[10] = Convert.ToInt32(TextBox11.Text);
        ds.Tables["cust_policies_master"].Rows.Add(r);
        cb = new SqlCommandBuilder(da);
        da.Update(ds, "cust_policies_master");
        Session["cust_policy_no"] = TextBox1.Text;
        if (dr_nominee_status.SelectedItem.Text == "Yes")
        {
            Response.Redirect("Nominee_form.aspx");
        }
        else
        {
            Response.Redirect("custagentreg.aspx");
        }
    }
    protected void cmdback_Click(object sender, EventArgs e)
    {
        Response.Redirect("custpolicydetails.aspx");
    }
}
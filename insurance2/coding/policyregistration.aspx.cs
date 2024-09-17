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
    SqlConnection cn = new SqlConnection("database=newinsurance;integrated security=true;server=localhost");
    SqlDataAdapter da;
    SqlCommand cmd1;
    SqlCommandBuilder cb;
    DataRow p;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            //				da.Fill(ds,"policies_master");

     
        }
        da = new SqlDataAdapter("exec policy_type_id_select", cn);
        dr_policy_type.Items.Clear();
        da.Fill(ds, "policy_type");
        int i;
        int count;
        count = ds.Tables["policy_type"].Rows.Count;
        Array a = Array.CreateInstance(typeof(String), count, 0);
        for (i = 0; i < count; i++)
        {
            a = ds.Tables["policy_type"].Rows[i].ItemArray;
            dr_policy_type.Items.Add(a.GetValue(1).ToString());
            dr_policy_type.Items[dr_policy_type.Items.Count - 1].Value = a.GetValue(0).ToString();
        }
        da = new SqlDataAdapter("exec company_id_select", cn);
        dr_company_id.Items.Clear();
        da.Fill(ds, "company");
        int j;
        int count1;
        count1 = ds.Tables["company"].Rows.Count;
        Array a1 = Array.CreateInstance(typeof(String), count1, 0);

        for (j = 0; j < count1; j++)
        {
            a1 = ds.Tables["company"].Rows[j].ItemArray;
            dr_company_id.Items.Add(a1.GetValue(1).ToString());
            dr_company_id.Items[dr_company_id.Items.Count - 1].Value = a1.GetValue(0).ToString();

        }
        int id;

        if (cn.State == ConnectionState.Open)
        {
            cn.Close();

        }
        cn.Open();
        cmd1 = new SqlCommand("select count(*) from policies_master", cn);
        id = Convert.ToInt32(cmd1.ExecuteScalar());
        cn.Close();
        if (id == 0)
        {
            TextBox1.Text = "1";
        }

        else
        {
            cn.Open();
            cmd1 = new SqlCommand("exec policies_select", cn);
            TextBox1.Text = Convert.ToInt32(cmd1.ExecuteScalar()).ToString();
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        da = new SqlDataAdapter("select * from Policies_master", cn);
        da.Fill(ds, "policies_master");
        p = ds.Tables["policies_master"].NewRow();
        p[0] = Convert.ToInt32(TextBox1.Text);
        p[1] = TextBox2.Text.ToString();
        p[2] = TextBox3.Text;
        p[3] = Convert.ToInt32(dr_policy_type.SelectedItem.Value);
        p[4] = Convert.ToInt32(TextBox5.Text);
        p[5] = Convert.ToInt32(TextBox6.Text);
        p[6] = Convert.ToInt32(TextBox7.Text);
        p[7] = Convert.ToInt32(TextBox8.Text);
        p[8] = Convert.ToInt32(dr_company_id.SelectedItem.Value);
        p[9] = TextBox10.Text.ToString();

        ds.Tables["policies_master"].Rows.Add(p);
        cb = new SqlCommandBuilder(da);
        da.Update(ds, "policies_master");
      
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminHome.aspx");
    }
}

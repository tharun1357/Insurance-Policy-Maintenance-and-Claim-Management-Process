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

public partial class cust_registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
    SqlDataAdapter da;
    SqlCommand cmd;
    SqlCommandBuilder cmb;
    DataSet ds = new DataSet();
    DataRow r;
    protected void Page_Load(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select * from gender", con);
        da.Fill(ds, "gender");

        if (Page.IsPostBack == false)
        {
            filldata();
        }
        da = new SqlDataAdapter("select * from customer_master", con);
        da.Fill(ds, "customer_master");

    }
    private void filldata()
    {

        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
        con.Open();

        int count;
        cmd = new SqlCommand("exec max_cust", con);
        count = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        if (count == 0)
        {
            txtcustid.Text = "1";
        }
        else
        {
            txtcustid.Text = count.ToString();
            Session["cust_id"] = txtcustid.Text;
        }
        int i;
        int count1;
        count1 = ds.Tables["gender"].Rows.Count;
        Array a = Array.CreateInstance(typeof(String), count1, 0);
        for (i = 0; i < count1; i++)
        {
            a = ds.Tables["gender"].Rows[i].ItemArray;
            d1.Items.Add(a.GetValue(0).ToString());
        }

    }
    protected void cmdsave_Click(object sender, EventArgs e)
    {
        try
        {
            Session["cust_id"] = txtcustid.Text;
            r = ds.Tables["customer_master"].NewRow();
            r[0] = Convert.ToInt32(txtcustid.Text);
            r[1] = txtcustname.Text;
            r[2] = Convert.ToDateTime(txtcustdob.Text);
            r[3] = txtcustaddress.Text;
            r[4] = txtcustemail.Text;
            r[5] = txtcustphno.Text;
            r[6] = r1.SelectedItem.Text;
            r[7] = d1.SelectedItem.Text;
            ds.Tables["customer_master"].Rows.Add(r);
            cmb = new SqlCommandBuilder(da);
            da.Update(ds, "customer_master");
            //con.Open();
            //SqlCommand cmd1= new SqlCommand("insert into customer_master values(" + txt_cust_id.Text + ",'" + txt_cust_name.Text + "','" + txt_cust_dob.Text + "','" + txt_cust_address.Text + "','" + txt_cust_email.Text + "'," + txt_cust_phone.Text + ",'" + RadioButtonList1.SelectedItem.Text + "','" + dr_gender.SelectedValue+ "')", con);
            //cmd1.ExecuteNonQuery();
            ////filldata();
            //con.Close();
            Session["creg"] = "yes";
            Response.Redirect("assigncustpwd.aspx");
        }
        catch (Exception ex)
        {
           
        }
			
    }
    protected void cmdback_Click(object sender, EventArgs e)
    {
        Response.Redirect("homepage.aspx");
    }
    protected void cmdclear_Click(object sender, EventArgs e)
    {
        txtcustname.Text = "";
        txtcustaddress.Text = "";
        txtcustdob.Text = "";
        txtcustemail.Text="";
        txtcustphno.Text = "";
    }
}

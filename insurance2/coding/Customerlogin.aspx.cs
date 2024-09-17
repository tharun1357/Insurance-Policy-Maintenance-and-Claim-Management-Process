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

public partial class Customerlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cmdsubmit_Click(object sender, EventArgs e)
    {
        int i;
        int count;
        da = new SqlDataAdapter("select a.cust_id,a.cust_pwd_new,b.cust_name from customer_security_master a,customer_master b where a.cust_id=b.cust_id", con);
        da.Fill(ds, "cust_master");
        count = ds.Tables["cust_master"].Rows.Count;
        Array a1 = Array.CreateInstance(typeof(String), count, 0);

        for (i = 0; i < count; i++)
        {
            a1 = ds.Tables["cust_master"].Rows[i].ItemArray;

            string pwd = a1.GetValue(1).ToString();
            string name = a1.GetValue(2).ToString();
            cmd = new SqlCommand("select cust_id from customer_master where cust_name='" + name + "'", con);
            con.Open();
            int j = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();

            Session["cust_id"] = j;
            if (txtusrname.Text == name && txtpassword.Text == pwd)
            {
                Session["cust_name"] = txtusrname.Text;
                Session.Remove("creg");
                Response.Redirect("Customerhomepage.aspx");
            }
            else
            {
                lbldisplay.Text = "Invalid UserId/Password";
            }
        }
    }
    protected void cmdcancel_Click(object sender, EventArgs e)
    {
        txtusrname.Text = "";
        txtpassword.Text = "";
        lbldisplay.Text = "";
    }
}

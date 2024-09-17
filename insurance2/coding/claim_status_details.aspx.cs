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
    SqlDataAdapter da;
    SqlCommand cmd1;
    DataSet ds = new DataSet();
    SqlCommandBuilder cb;
    SqlDataReader dr;
    SqlConnection con = new SqlConnection("database=newinsurance;integrated security=true;server=localhost");
    DataRow r;
    protected void Page_Load(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("exec claim_select", con);
        da.Fill(ds, "status");
                int id;
        if (con.State == ConnectionState.Open)
        {
            con.Close();

        }
        con.Open();
        cmd1 = new SqlCommand("select count(*) from claim_status_code", con);
        id = Convert.ToInt32(cmd1.ExecuteScalar());
        con.Close();
        if (id == 0)
        {
            TextBox1.Text = "1";
        }

        else
        {
            con.Open();
            cmd1 = new SqlCommand("exec max_claim_status", con);
            TextBox1.Text = Convert.ToInt32(cmd1.ExecuteScalar()).ToString();
        }
        con.Close();
       
		
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        r = ds.Tables["status"].NewRow();
        r[0] = Convert.ToInt32(TextBox1.Text);
        r[1] = TextBox2.Text.ToString();

        ds.Tables["status"].Rows.Add(r);
        cb = new SqlCommandBuilder(da);
        da.Update(ds, "status");
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("PolicyClaimstatus.aspx");
    }
}

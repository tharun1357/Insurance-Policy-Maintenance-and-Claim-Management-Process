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
    SqlCommand cmd;
    SqlCommandBuilder cmb;
    DataSet ds = new DataSet();
    DataRow r;
    protected void Page_Load(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("exec insurance_companies_select", con);
        da.Fill(ds, "insurance_companies_master");
        if (Page.IsPostBack == false)
        {
            filldata();
        }
    }
        private void filldata()
		{
			
			int count;
			if(con.State==ConnectionState.Open)
			{
			con.Close();
			}
			con.Open();
			cmd=new SqlCommand("select max(company_id)+1 from insurance_companies_master",con);
			count=Convert.ToInt32(cmd.ExecuteScalar());
			if(count==0)
			{
				txtcompanyid.Text="1";
			}
			else
			{
                txtcompanyid.Text = count.ToString();
			}

		}

    protected void  cmdsave_Click(object sender, EventArgs e)
{
        r=ds.Tables["insurance_companies_master"].NewRow();
        r[0] = Convert.ToInt32(txtcompanyid.Text.ToString());
			r[1]=txtcompanyname.Text;
			r[2]=txtcompanyaddress.Text;
			r[3]=txtcompanyemail.Text;
			r[4]=txtcompanyphno.Text;
			r[5]=txtfax.Text;
			r[6]=txtwebsite.Text;
			ds.Tables["insurance_companies_master"].Rows.Add(r);
			cmb=new SqlCommandBuilder(da);
			da.Update(ds,"insurance_companies_master");
			filldata();
			msg("successfully Registered");
            Response.Redirect("AdminHome.aspx");
}
    private void msg(string message)
		{
			this.RegisterStartupScript("ClientScript","<html><body><script>alert('"+message+"')</script></body></html>");
		}
    protected void cmdclear_Click(object sender, EventArgs e)
    {
      Response.Redirect("AdminHome.aspx");
}
    }



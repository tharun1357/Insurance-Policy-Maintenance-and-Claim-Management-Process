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

public partial class custpasswordinfo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            txt_custid.Text = Session["cust_id"].ToString();
            txtpwdchngedate.Text = DateTime.Now.ToShortDateString();

        }
    }
    override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    

		}
		
protected void  cmdsave11_Click(object sender, EventArgs e)
{
    
			cmd=new SqlCommand("select cust_pwd_new from customer_security_master where cust_id="+Session["cust_id"]+"",con);
			con.Open();
			string a=cmd.ExecuteScalar().ToString();
			if(txtoldpwd.Text==a)
			{
		        cmd=new SqlCommand("select cust_pwd_new from customer_security_master where cust_id="+Session["cust_id"]+"",con);
				string str=cmd.ExecuteScalar().ToString();
				cmd=new SqlCommand("update customer_security_master set cust_pwd_old='"+str+"',cust_pwd_new='"+txtnewpwd.Text+"',cust_pwd_change_date='"+txtpwdchngedate.Text+"' where cust_id="+txt_custid.Text+"",con);
				cmd.ExecuteNonQuery();
				con.Close();
				msg("UR Latest pwd is :" + txtnewpwd.Text);
			
			}
			else
			{
			msg("UR old password is not valid");
			}
			
			
		}
		private void msg(string message)
		{
		this.RegisterStartupScript("ClientScript","<html><body><script>alert('"+message+"')</script></body></html>");
		}
}


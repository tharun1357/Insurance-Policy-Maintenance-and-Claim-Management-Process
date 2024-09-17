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

public partial class Securityinfo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
    DataSet ds = new DataSet();
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            txtagentid.Text = Session["agent_id"].ToString();
            txtpwdchngdate.Text = DateTime.Now.ToShortDateString();

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
		private void InitializeComponent()
		{    

		}



        protected void cmdsavechanges_Click(object sender, EventArgs e)
        {
            cmd=new SqlCommand("select agent_pwd_new from agent_security_master where agent_id="+Session["agent_id"]+"",con);
			con.Open();
            //SqlDataReader dr;
            //dr = cmd.ExecuteReader();
			string a = cmd.ExecuteScalar().ToString();
           if(txtoldpawd.Text==a)
			{
                //cmd=new SqlCommand("select agent_pwd_new from agent_security_master where agent_id="+Session["agent_id"]+"",con);
                //string str=cmd.ExecuteScalar().ToString();
				cmd=new SqlCommand("update agent_security_master set agent_pwd_old='"+a+"',agent_pwd_new='"+txtnewpwd.Text+"',agent_pwd_change_date='"+txtpwdchngdate.Text+"' where agent_id="+txtagentid.Text+"",con);
				cmd.ExecuteNonQuery();
				con.Close();
				msg("UR Latest pwd is :" + txtnewpwd.Text);
                Response.Redirect("Agentlogin.aspx");
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

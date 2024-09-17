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

public partial class Agentlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
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
        da = new SqlDataAdapter("select agent_name, agent_pwd_new from agent_security_master a,agent_master b where a.agent_id=b.agent_id", con);
        da.Fill(ds, "agent_secu");
        count = ds.Tables["agent_secu"].Rows.Count;
        Array a2 = Array.CreateInstance(typeof(String), count, 0);
        for (i = 0; i < count; i++)
        {
            a2 = ds.Tables["agent_secu"].Rows[i].ItemArray;
            string name = a2.GetValue(0).ToString();
            string pwd = a2.GetValue(1).ToString();
            cmd = new SqlCommand("select agent_id from agent_master where agent_name='" + name + "'", con);
            con.Open();
            int j = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();

            if (txtusrname.Text == name && txtpassword.Text == pwd)
            {
                Session["agent_id"] = j;
                Response.Redirect("agenthomepage.aspx");
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

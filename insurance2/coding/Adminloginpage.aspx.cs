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
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cmdsubmit_Click(object sender, EventArgs e)
    {
        int i, count;
       
          da = new SqlDataAdapter("select * from login_master", con);
        da.Fill(ds, "login");
        count = ds.Tables["login"].Rows.Count;
        Array a = Array.CreateInstance(typeof(String), count, 0);
        for (i = 0; i < count; i++)
        {
            a = ds.Tables["login"].Rows[i].ItemArray;
            string name = a.GetValue(0).ToString();
            string pwd = a.GetValue(1).ToString();
              if (txtusername.Text == name && txtpassword.Text == pwd)
                {
                    Response.Redirect("Adminhome.aspx");

                }
            else
                       {
                lbldisplay.Text = "Invalid UserId/Password";
            }
               
         
              
        }
    }
    protected void cmdcancel_Click(object sender, EventArgs e)
    {
        txtusername.Text = "";
        txtpassword.Text = "";
        lbldisplay.Text = "";
    }
}

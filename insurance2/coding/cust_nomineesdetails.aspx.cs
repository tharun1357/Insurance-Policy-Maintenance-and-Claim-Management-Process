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

public partial class cust_nomineesdetails : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
   
    protected void Page_Load(object sender, EventArgs e)
    {
        int i;
        i = Convert.ToInt32(Session["cust_policy_no"]);
        SqlDataAdapter da = new SqlDataAdapter("select nominee_name,nominee_address,nominee_dob,nominee_email,nominee_relationaship from nominee_details where custo_policy_no=" + i + "", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        
    }
    
    }

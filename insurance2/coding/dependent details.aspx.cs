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

public partial class dependent_details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("exec cust_depen_select", con);
        da.Fill(ds, "cust_dependent_master");
        if (Page.IsPostBack == false)
        {
            filldata();
        }
    }
    private void filldata()
    {
        DataGrid2.DataSource = ds;
        DataGrid2.DataMember = "cust_dependent_master";
        DataGrid2.DataBind();
    }
}

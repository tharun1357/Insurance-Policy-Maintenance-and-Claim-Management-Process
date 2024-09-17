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

public partial class companyregdetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
    SqlDataAdapter da;
    DataSet ds = new DataSet();
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
        DataGrid1.DataSource = ds;
        DataGrid1.DataBind();


    }
    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        filldata();
    }
}

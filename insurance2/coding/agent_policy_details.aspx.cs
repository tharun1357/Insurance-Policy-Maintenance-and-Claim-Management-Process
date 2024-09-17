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
    //		SqlCommand cm;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        int i;
        i = Convert.ToInt32(Session["company_id"]);
        da = new SqlDataAdapter("select policy_id,policy_name,policy_min_value,policy_max_value,policy_min_age_limit,policy_max_age_limit from policies_master where company_id=" + i + "", con);
        da.Fill(ds, "policy_master");
        filldata();

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

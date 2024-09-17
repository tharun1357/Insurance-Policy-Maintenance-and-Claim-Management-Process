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

public partial class agent_cust_nominee1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select nominee_name,nominee_address,nominee_email,nominee_relationaship,custo_policy_no from nominee_details where custo_policy_no=" + Session["customer_policy_no"].ToString() + "", con);
        ds = new DataSet();
        da.Fill(ds, "nominee");
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

using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class agenthome : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("database=newinsurance;integrated security=true;server=localhost");
    SqlDataAdapter da;
    //		SqlCommand cm;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        int i;
        i = Convert.ToInt32(Session["agent_id"]);
        da = new SqlDataAdapter("select * from agent_master where agent_id=" + i + "", con);
        da.Fill(ds, "agent");
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

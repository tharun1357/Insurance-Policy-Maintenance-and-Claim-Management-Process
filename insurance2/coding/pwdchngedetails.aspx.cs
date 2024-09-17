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

public partial class pwdchngedetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("database=newinsurance;integrated security=true;server=localhost");
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        int j;
        j = Convert.ToInt32(Session["cust_id"]);
        da = new SqlDataAdapter("select * from customer_security_master where cust_id=" + j + "", con);
        da.Fill(ds, "cust_pwd");
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

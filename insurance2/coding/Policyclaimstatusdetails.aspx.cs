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
    SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    SqlCommand cmd;
    SqlCommand cmd1;
    SqlCommandBuilder cmb;
    DataRow r;
    int x;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("exec claim_select", con);
        da.Fill(ds, "claim_master");

        if (Page.IsPostBack == false)
        {
            filldata();


        }
    }
    private void filldata()
    {
        DataGrid2.DataSource = ds;
        DataGrid2.DataBind();
    }

    protected void DataGrid2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["b"] = Convert.ToString(DataGrid2.Items[DataGrid2.SelectedIndex].Cells[0].Text);
        Response.Redirect("policyInfo.aspx");
    }
}

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

public partial class Companydetails : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        filldata();
    }
    private void filldata()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from insurance_companies_master", cn);
        DataSet ds = new DataSet();
        da.Fill(ds,"insurance_companies");
        DataGrid1.DataSource = ds.Tables["insurance_companies"];
        DataGrid1.DataBind();
    }
    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        filldata();
    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int j;
        j = Convert.ToInt32(DataGrid1.Items[DataGrid1.SelectedIndex].Cells[0].Text);
        Session["company_id"] = j.ToString();
        Response.Redirect("Companydetails.aspx");
    }
}

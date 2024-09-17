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

public partial class PolicyClaimstatus : System.Web.UI.Page
{
    SqlDataAdapter da;
    SqlCommand cmd1;
    DataSet ds = new DataSet();
    SqlCommandBuilder cb;
    SqlDataReader dr;
    SqlConnection con = new SqlConnection("database=newinsurance;integrated security=true;server=localhost");
    DataRow r;
    protected void Page_Load(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("exec claim_select", con);
        da.Fill(ds, "status");
        if (Page.IsPostBack == false)
        {
            filldata();

        }

    }

    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        filldata();
    }
    protected void DataGrid1_EditCommand(object source, DataGridCommandEventArgs e)
    {

        DataGrid1.EditItemIndex = e.Item.ItemIndex;
        filldata();
 
   }
    private void filldata()
    {

        DataGrid1.DataSource = ds;
        DataGrid1.DataBind();

    }
    protected void DataGrid1_UpdateCommand(object source, DataGridCommandEventArgs e)
    {
        TextBox a = (TextBox)e.Item.Cells[0].Controls[0];
        TextBox b = (TextBox)e.Item.Cells[1].Controls[0];

        int rownumber;
        rownumber = e.Item.ItemIndex;
        r = ds.Tables["status"].Rows[rownumber];
        r[0] = a.Text;
        r[1] = b.Text;

        cb = new SqlCommandBuilder(da);
        da.Update(ds, "status");
        DataGrid1.EditItemIndex = -1;
        filldata();
    }
    protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e)
    {
        int a;
        a = e.Item.ItemIndex;
        ds.Tables["status"].Rows[a].Delete();
        cb = new SqlCommandBuilder(da);
        da.Update(ds, "status");
        filldata();
    }
    protected void DataGrid1_CancelCommand(object source, DataGridCommandEventArgs e)
    {
        DataGrid1.EditItemIndex = -1;
        filldata();
    }
    protected void cmdnewrecord_Click(object sender, EventArgs e)
    {
        Response.Redirect("claim_status_details.aspx");
    }
}
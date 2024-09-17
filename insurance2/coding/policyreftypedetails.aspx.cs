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

public partial class policyreftypedetails : System.Web.UI.Page
{
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    SqlCommandBuilder cb;
    //		SqlDataReader dr;
    SqlCommand cmd1;
    SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    DataRow r;
	
    protected void Page_Load(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("exec policy_ref_select", cn);
        da.Fill(ds, "policy_ref");
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
    protected void DataGrid1_EditCommand(object source, DataGridCommandEventArgs e)
    {
        DataGrid1.EditItemIndex = e.Item.ItemIndex;
        filldata();
    }
    protected void DataGrid1_UpdateCommand(object source, DataGridCommandEventArgs e)
    {
        TextBox a = (TextBox)e.Item.Cells[0].Controls[0];
        TextBox b = (TextBox)e.Item.Cells[1].Controls[0];
        TextBox c = (TextBox)e.Item.Cells[2].Controls[0];
        TextBox d = (TextBox)e.Item.Cells[3].Controls[0];
        int rownumber;
        rownumber = e.Item.ItemIndex;
        r = ds.Tables["policy_ref"].Rows[rownumber];
        r[0] = a.Text;
        r[1] = b.Text;
        r[2] = c.Text;
        r[3] = d.Text;

        cb = new SqlCommandBuilder(da);
        da.Update(ds, "policy_ref");
        DataGrid1.EditItemIndex = -1;
        filldata();
    }
    protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e)
    {
        int a;
        a = e.Item.ItemIndex;
        ds.Tables["policy_ref"].Rows[a].Delete();
        cb = new SqlCommandBuilder(da);
        da.Update(ds, "policy_ref");
        filldata();
    }
    protected void DataGrid1_CancelCommand(object source, DataGridCommandEventArgs e)
    {
        DataGrid1.EditItemIndex = -1;
        filldata();
    }
    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        filldata();

    }
    protected void cmdnewrecord_Click(object sender, EventArgs e)
    {
        Response.Redirect("policyreftypemaster.aspx");
    }
}

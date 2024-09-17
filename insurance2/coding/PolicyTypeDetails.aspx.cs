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

public partial class PolicyTypeDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("database=newinsurance;integrated security=true;server=localhost");
    SqlDataAdapter da;
    SqlCommand cmd;
    DataSet ds = new DataSet();
    SqlCommandBuilder cb;
    //		SqlDataReader dr;

    DataRow r;
    protected void Page_Load(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select * from policy_type_master", con);
        da.Fill(ds, "policy");
        if (Page.IsPostBack == false)
        {
            filldata();

        }
    }
    public void filldata()
    {
        DataGrid1.DataSource = ds;
        DataGrid1.DataBind();

    }

    protected void cmdnewrecord_Click(object sender, EventArgs e)
    {
        			
        Response.Redirect("policytypemaster.aspx");
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
        int rownumber;
        rownumber = e.Item.ItemIndex;
        r = ds.Tables["policy"].Rows[rownumber];
        r[0] = a.Text;
        r[1] = b.Text;
        r[2] = c.Text;
        cb = new SqlCommandBuilder(da);
        da.Update(ds, "policy");
        DataGrid1.EditItemIndex = -1;
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
   
}
    


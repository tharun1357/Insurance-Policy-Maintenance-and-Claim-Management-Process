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

public partial class Agent_Details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationSettings.AppSettings["con"]);
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    DataRow r;
    SqlCommandBuilder cmb;
    SqlCommand cmd;
    SqlDataReader dr;
	
    protected void Page_Load(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("select * from agent_master", con);
        da.Fill(ds, "agent_master");
       
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
        TextBox i = (TextBox)e.Item.Cells[4].Controls[0];
        TextBox f = (TextBox)e.Item.Cells[5].Controls[0];
        TextBox g = (TextBox)e.Item.Cells[6].Controls[0];
        TextBox h = (TextBox)e.Item.Cells[7].Controls[0];
        int rownumber;
        rownumber = e.Item.ItemIndex;
        r = ds.Tables["agent_master"].Rows[rownumber];
        r[0] = a.Text;
        r[1] = b.Text;
        r[2] = c.Text;
        r[3] = d.Text;
        r[4] = i.Text;
        r[5] = f.Text;
        r[6] = g.Text;
        r[7] = h.Text;
        cmb = new SqlCommandBuilder(da);
        da.Update(ds, "agent_master");
        DataGrid1.EditItemIndex = -1;
        filldata();


    }


    protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e)
    {
        int i;
        i = e.Item.ItemIndex;
        ds.Tables["agent_master"].Rows[i].Delete();
        cmb = new SqlCommandBuilder(da);
        da.Update(ds, "agent_master");
        filldata();
    }
    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        filldata();
    }
    protected void DataGrid1_CancelCommand(object source, DataGridCommandEventArgs e)
    {
        DataGrid1.EditItemIndex = -1;
        filldata();
    }
}


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

public partial class Policyregdetails : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("database=newinsurance;integrated security=true;server=localhost");
    SqlDataAdapter da;
    SqlCommand cmd1;
    SqlCommandBuilder cb;
    DataRow p;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack==false)
			{	
				
//				da.Fill(ds,"policies_master");

                filldata();
            }
        
    }
			private void filldata()
		{
//			cn.Open(); 
			DataSet ds=new DataSet();
			da=new SqlDataAdapter("select * from Policies_master",cn);
			da.Fill(ds,"policies_master");
			DataGrid1.DataSource=ds.Tables["policies_master"];
			DataGrid1.DataBind();
			
		}
            protected void DataGrid1_EditCommand(object source, DataGridCommandEventArgs e)
            {
                DataGrid1.EditItemIndex = e.Item.ItemIndex;
                filldata();
            }
            protected void DataGrid1_UpdateCommand(object source, DataGridCommandEventArgs e)
            {
                da = new SqlDataAdapter("select * from Policies_master", cn);
                da.Fill(ds, "policies_master");
                TextBox pol_id = (TextBox)e.Item.Cells[0].Controls[0];
                TextBox pol_name = (TextBox)e.Item.Cells[1].Controls[0];
                TextBox pol_launch_date = (TextBox)e.Item.Cells[2].Controls[0];
                TextBox pol_typeid = (TextBox)e.Item.Cells[3].Controls[0];
                TextBox pol_minv = (TextBox)e.Item.Cells[4].Controls[0];
                TextBox pol_maxv = (TextBox)e.Item.Cells[5].Controls[0];
                TextBox pol_min_al = (TextBox)e.Item.Cells[6].Controls[0];
                TextBox pol_max_al = (TextBox)e.Item.Cells[7].Controls[0];
                TextBox pol_compid = (TextBox)e.Item.Cells[8].Controls[0];
                TextBox pol_desc = (TextBox)e.Item.Cells[9].Controls[0];
                DataRow r;

                int rownumber;
                rownumber = e.Item.ItemIndex;
                r = ds.Tables["policies_master"].Rows[rownumber];
                r[0] = pol_id.Text;
                r[1] = pol_name.Text;
                r[2] = pol_launch_date.Text;
                r[3] = pol_typeid.Text;
                r[4] = pol_minv.Text;
                r[5] = pol_maxv.Text;
                r[6] = pol_min_al.Text;
                r[7] = pol_max_al.Text;
                r[8] = pol_compid.Text;
                r[9] = pol_desc.Text;
                cb = new SqlCommandBuilder(da);
                da.Update(ds, "policies_master");
                DataGrid1.EditItemIndex = -1;
                filldata();
            }
            protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e)
            {
                da = new SqlDataAdapter("select * from Policies_master", cn);
                da.Fill(ds, "policies_master");
                int a;
                a = e.Item.ItemIndex;
                ds.Tables["policies_master"].Rows[a].Delete();
                cb = new SqlCommandBuilder(da);
                da.Update(ds, "policies_master");
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
                Response.Redirect("policyregistration.aspx");
            }
}


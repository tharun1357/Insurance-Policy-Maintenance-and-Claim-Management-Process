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
public partial class agent_accept_details : System.Web.UI.Page
{
    SqlDataAdapter da;
    SqlCommand cmd1;
    DataSet ds = new DataSet();
    SqlCommandBuilder cb;
    SqlDataReader dr;
    SqlConnection cn = new SqlConnection("database=newinsurance;integrated security=true;server=localhost");
    DataRow r;
    int a;
    protected void Page_Load(object sender, EventArgs e)
    {
        cmd1 = new SqlCommand("select agent_id from insu_companies_agent_master where agent_accepted_date is null", cn);
        cn.Open();
        
            if (Convert.ToInt32(cmd1.ExecuteScalar()) == 0)
            {
                msg("No Agents for Acceptattion");
                cn.Close();
            }
                else
        {
            cn.Close();
            da = new SqlDataAdapter("select * from insu_companies_agent_master where agent_accepted_date is null", cn);
            da.Fill(ds, "agent_policy");
            filldata();

        }

    }
    private void msg(string message)
    {
        this.RegisterStartupScript("ClientScript", "<html><body><script>alert('" + message + "')</script></body></html>");

    }
    private void filldata()
    {

        DataGrid1.DataSource = ds;
        DataGrid1.DataBind();

    }
    protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int i;
        int k;
       Session["i"] = Convert.ToInt32(DataGrid1.Items[DataGrid1.SelectedIndex].Cells[0].Text);
        Session["k"] = Convert.ToInt32(DataGrid1.Items[DataGrid1.SelectedIndex].Cells[1].Text);
       //TextBox1.Text = i.ToString();
        //TextBox2.Text = j.ToString();
       // TextBox3.Text = DateTime.Now.ToString();
        Response.Redirect("agnt_accpt2.aspx");
        
			
    }
    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        filldata();
    }
}

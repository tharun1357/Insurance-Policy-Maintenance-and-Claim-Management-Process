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

public partial class policytypemaster : System.Web.UI.Page
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
        if (con.State == ConnectionState.Open)
        {
            con.Close();

        }
        con.Open();
        int id;
        cmd = new SqlCommand("select count(*) from policy_type_master", con);
        id = Convert.ToInt32(cmd.ExecuteScalar());

        con.Close();
        if (id == 0)
        {
            txt_Id.Text = "1";
        }
        else
        {
            con.Open();
            cmd = new SqlCommand("exec max_policy_type", con);
            txt_Id.Text = Convert.ToInt32(cmd.ExecuteScalar()).ToString();
        }
        con.Close();
      		
          }
    
    protected void cmdsavechanges_Click(object sender, EventArgs e)
    {
        r = ds.Tables["policy"].NewRow();
        Session["policy_type_id"] = txt_Id.Text;
        r[0] = Convert.ToInt32(txt_Id.Text);
        r[1] = txtname.Text.ToString();
        r[2] = txtdesc.Text.ToString();
        ds.Tables["policy"].Rows.Add(r);
        cb = new SqlCommandBuilder(da);
        da.Update(ds, "policy");
        //cmd = new SqlCommand("Insert into policy_type_master values(" + Convert.ToInt32(txt_Id.Text) + ",'" + txt_plcy_name.Text + "','" + txt_type_desc.Text + "')", con);
        //cmd.CommandType = CommandType.Text;
        //con.Open();
        //cmd.ExecuteNonQuery();
        //con.Close();
        Response.Redirect("policyreftypedetails.aspx");
        //			DataGrid1.Visible=true;
        //			Panel1.Visible=false;

    }
    protected void cmdback_Click(object sender, EventArgs e)
    {
        Response.Redirect("PolicyTypeDetails.aspx");
    }
}

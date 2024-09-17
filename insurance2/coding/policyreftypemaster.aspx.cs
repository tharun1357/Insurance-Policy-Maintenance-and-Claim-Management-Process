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

public partial class policyreftypemaster : System.Web.UI.Page
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
        if (cn.State == ConnectionState.Open)
        {
            cn.Close();

        }
        cn.Open();
        int id;
        cmd1 = new SqlCommand("select count(*) from policy_ref_type_master", cn);
        id = Convert.ToInt32(cmd1.ExecuteScalar());

        cn.Close();
        if (id == 0)
        {
            txt_typeID.Text = "1";
        }

        else
        {

            cn.Open();
            cmd1 = new SqlCommand("exec max_policy_ref_id", cn);
            txt_typeID.Text = Convert.ToInt32(cmd1.ExecuteScalar()).ToString();
        }
        cn.Close();
        txt_fieldID.Text = Session["policy_type_id"].ToString();
       
			
    }
    protected void cmdsave_Click(object sender, EventArgs e)
    {
        r = ds.Tables["policy_ref"].NewRow();
        r[0] = Convert.ToInt32(txt_typeID.Text);
        r[1] = txt_fieldID.Text.ToString();
        r[2] = txt_typename.Text.ToString();
        r[3] = txt_typedesc.Text.ToString();
        ds.Tables["policy_ref"].Rows.Add(r);
        cb = new SqlCommandBuilder(da);
        da.Update(ds, "policy_ref");
        Response.Redirect("AdminHome.aspx");

    }
    protected void cmdrecord_Click(object sender, EventArgs e)
    {

    }
}

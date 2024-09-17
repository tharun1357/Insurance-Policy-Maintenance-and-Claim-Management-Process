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

public partial class newAgentRegistration : System.Web.UI.Page
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
			int count;
			if(con.State==ConnectionState.Open)
			{
				con.Close();
			}
			con.Open();
			cmd=new SqlCommand("select count(*) from agent_master",con);
			count=Convert.ToInt32(cmd.ExecuteScalar());
					
			//count=Convert.ToInt32(ds.Tables["agent_master"].Columns[0].AutoIncrementStep);

			if(count==0)
			{
				txtagentid.Text="1";
                cmd = new SqlCommand("exec gender_select", con);
         
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    string a;
                    a = dr[0].ToString();
                    d1.Items.Add(a);

                }
                con.Close();
                dr.Close();
			}
			else
			{
				cmd=new SqlCommand("exec max_agent",con);
				count=Convert.ToInt32(cmd.ExecuteScalar());
				con.Close();
                txtagentid.Text = count.ToString();
				txtagentname.Text="";
				txtaddress.Text="";
				txtphno.Text="";
				txtemail.Text="";
				txtdob.Text="";
				txtexprnce.Text="";
				cmd=new SqlCommand("exec gender_select",con);
				con.Open();
				dr=cmd.ExecuteReader();
				while(dr.Read())
				{
					string a;
					a=dr[0].ToString();
					d1.Items.Add(a);
											
				}
			

				con.Close();
				dr.Close();
			}

		}

    
    protected void cmdsave_Click(object sender, EventArgs e)
    {
        try
        {
            Session["agent_id"] = txtagentid.Text;
            r = ds.Tables["agent_master"].NewRow();
            r[0] = Convert.ToInt32(txtagentid.Text);
            r[1] = txtagentname.Text;
            r[2] = txtaddress.Text;
            r[3] = txtphno.Text;
            r[4] = txtemail.Text;
            r[5] = txtdob.Text;
            r[6] = d1.SelectedItem.Text;
            r[7] = txtexprnce.Text;
            ds.Tables["agent_master"].Rows.Add(r);
            cmb = new SqlCommandBuilder(da);
            da.Update(ds, "agent_master");
            filldata();
            Response.Redirect("assignpwd.aspx");
        }
        catch (Exception ex)
        {
           
        }


			
    }

    protected void cmdclear_Click(object sender, EventArgs e)
    {
        txtagentname.Text = "";
        txtaddress.Text = "";
        txtphno.Text = "";
        txtemail.Text = "";
        txtdob.Text = "";
        txtexprnce.Text = "";
    }
    protected void cmdBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("homepage.aspx");
    }
}

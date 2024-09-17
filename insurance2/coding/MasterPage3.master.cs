using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class MasterPage3 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        linkagentreg.Visible = false;
        Lnkcmppol.Visible = false;
        agentcustdet.Visible = false;
    }
    protected void linkmyinfo_Click(object sender, EventArgs e)
    {
        linkagentreg.Visible = true;
        Lnkcmppol.Visible = true;
        agentcustdet.Visible = true;
    }
    protected void linkagentreg_Click(object sender, EventArgs e)
    {

        linkmyinfo.Enabled = true;
        linkagentreg.Visible = true;
        Lnkcmppol.Visible = true;
        agentcustdet.Visible = true;
        Response.Redirect("agentRegistration.aspx");
     
    }
    
    
    
    protected void Lnkcmppol_Click(object sender, EventArgs e)
    {
        linkagentreg.Visible = true;
        Lnkcmppol.Visible = true;
        agentcustdet.Visible = true;
        Response.Redirect("company policies.aspx");
       
    }
    protected void agentcustdet_Click(object sender, EventArgs e)
    {
        linkmyinfo.Enabled = true;
        linkagentreg.Visible = true;
        Lnkcmppol.Visible = true;
        agentcustdet.Visible = true;
        Response.Redirect("agntcustdetails.aspx");
        
    }
    protected void linkcompanyselection_Click(object sender, EventArgs e)
    {
        Response.Redirect("Companyselection.aspx");
    }
    protected void passwordinfo_Click(object sender, EventArgs e)
    {
        Response.Redirect("Securityinfo.aspx");
    }
}

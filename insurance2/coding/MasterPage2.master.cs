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

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("homepage.aspx");
    }
    protected void lnkcompanyreg_Click(object sender, EventArgs e)
    {
        Response.Redirect("CompanyRegistration.aspx");
    }
    protected void lnkpolicytypedetails_Click(object sender, EventArgs e)
    {
        Response.Redirect("PolicyTypeDetails.aspx");
    }
    protected void lnkpolicyreg_Click(object sender, EventArgs e)
    {
        Response.Redirect("Policyregdetails.aspx");
    }
    protected void lnkaccptdagntdetails_Click(object sender, EventArgs e)
    {
        Response.Redirect("agent_accept_details.aspx");
    }
    protected void lnkagentdetails_Click(object sender, EventArgs e)
    {
        Response.Redirect("Agent_Details.aspx");
    }
protected void  lnkclaimstsdetails_Click(object sender, EventArgs e)
{
    Response.Redirect("PolicyClaimstatus.aspx");
}
}

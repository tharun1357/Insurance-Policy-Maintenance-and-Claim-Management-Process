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

public partial class MasterPage4 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkmyinfo1_Click(object sender, EventArgs e)
    {
        lnkcmpdetails.Visible = true;
        lnkprmdetails.Visible = true;
        lnkCustregdetails.Visible = true;
        lnkPasswordchangedetails.Visible = true;
    }
    protected void lnkcmpdetails_Click(object sender, EventArgs e)
    {
        Response.Redirect("Companydetails.aspx");

    }
    protected void lnkprmdetails_Click(object sender, EventArgs e)
    {
        Response.Redirect("premium details.aspx");
    }
    protected void lnkCustregdetails_Click(object sender, EventArgs e)
    {
        Response.Redirect("custregdeatils.aspx");
    }
    protected void lnkPasswordchangedetails_Click(object sender, EventArgs e)
    {
        Response.Redirect("pwdchngedetails.aspx");
    }
    protected void lnkpolicydetails_Click(object sender, EventArgs e)
    {
        Response.Redirect("custpolicydetails.aspx");
    }
    protected void lnkPolicyclaimdetails_Click(object sender, EventArgs e)
    {
        Response.Redirect("Policyclaimstatusdetails.aspx");
    }
    protected void lnkPasswordInfo_Click(object sender, EventArgs e)
    {
        Response.Redirect("custpasswordinfo.aspx");
    }
    
   
}

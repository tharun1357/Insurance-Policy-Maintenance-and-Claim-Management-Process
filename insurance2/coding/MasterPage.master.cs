﻿using System;
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

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Adminloginpage.aspx");
        
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Agentlogin.aspx");
        
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Customerlogin.aspx");
        
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("newAgentRegistration.aspx");
        
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("cust_registration.aspx");
        
    }
}

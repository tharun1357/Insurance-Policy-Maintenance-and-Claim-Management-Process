<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Securityinfo.aspx.cs" Inherits="Securityinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
       <table style="width: 53%; height: 181px;" valign = "middle" align ="center">
        
        <tr>
         <td colspan="2" align ="right">
                <asp:HyperLink ID="h1" Text="Home" runat="server" NavigateUrl="~/homepage.aspx" /></td>
        </tr>
        <tr>
         <td colspan="2" align ="center">
                &nbsp;</td>
        </tr>
        <tr>
         <td colspan="2" align ="center">
                <asp:Label ID ="l44" Text=" Security Information" runat ="server" 
                    Font-Bold="True" ForeColor="#0033CC" BackColor="#FF99FF" 
                    BorderColor="#CC3300" BorderStyle="Solid" Font-Size="X-Large" /></td>
        </tr>
        <tr>
            <td align ="right" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label1" Text=" Agent ID" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtagentid" runat ="server" /></td>
        </tr>
        <tr>
            <td align ="right">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtoldpawd" ErrorMessage="enter old password">*</asp:RequiredFieldValidator>
                <asp:Label ID ="Label2" Text=" Old Password" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtoldpawd" runat ="server" TextMode="Password" />
              </td>
        </tr>
        <tr>
            <td align ="right">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtnewpwd" ErrorMessage="enter new password">*</asp:RequiredFieldValidator>
               <asp:Label ID ="Label3" Text=" New Password" runat ="server" /></td>
            <td><asp:TextBox ID="txtnewpwd" runat ="server" TextMode="Password" />
             </td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label4" Text=" Pwd Change Date" runat ="server" /></td>
            <td><asp:TextBox ID="txtpwdchngdate" runat ="server" />
                </td>
        </tr>
                <tr>
            <td align ="center" colspan = "2" >
                <asp:Button ID ="cmdsavechanges" Text=" Save Changes" runat ="server" 
                    Width="120px" onclick="cmdsavechanges_Click" /></td>    
                                                       </tr>
                <tr>
            <td colspan ="2">
                    </tr>
                
    </table>
     <asp:ValidationSummary ID="ValidationSummary1" runat="server" LEFT ="88px" TOP="216px" Height="40px" align ="center"/>
        </form>
</body>
</html>

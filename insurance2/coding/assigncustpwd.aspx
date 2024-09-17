<%@ Page Language="C#" AutoEventWireup="true" CodeFile="assigncustpwd.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 53%; height: 181px;" valign = "middle" align ="center">
        <tr><td align ="center" colspan="2"><asp:Label ID="lblb" Text=" Assigning Password" 
                runat="server" BackColor="Silver" BorderColor="#FF99FF" BorderWidth="1px" 
                Font-Bold="True" Font-Size="X-Large" ForeColor="Red" />
        </td>
        </tr>
        <tr>
         <td colspan="2" align ="center">
                &nbsp;</td>
        </tr>
        <tr>
         <td colspan="2" align ="center">
                <asp:Label ID ="l44" Text=" Security Information" runat ="server" 
                    Font-Bold="True" ForeColor="#6699FF" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label1" Text=" Cust ID" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtcustid" runat ="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label2" Text=" Password" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txt_pwd" runat ="server" TextMode="Password" /></td>
        </tr>
        <tr>
            <td align ="right">
               <asp:Label ID ="Label3" Text=" Reenter Password" runat ="server" /></td>
            <td><asp:TextBox ID="txt_reenterpwd" runat ="server" TextMode="Password" />
                </td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label4" Text=" Pwd Change Date" runat ="server" /></td>
            <td><asp:TextBox ID="txtpwdchngdate" runat ="server" />
                </td>
        </tr>
                <tr>
            <td align ="center" colspan ="2">
                <asp:Button ID ="cmdsave" Text=" Save" runat ="server" Width="96px" 
                    onclick="cmdsave_Click" /></td>
                    </tr>
    </table>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dependent form.aspx.cs" Inherits="Dependent_form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    
        <table class="style1">
            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="dependent" Text="Dependent Information" runat="server" 
                        Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" /></td>
            </tr>
            <tr>
                <td align ="right"><asp:Label ID="Label1" Text="Dependent ID" runat="server" />
                    </td>
                <td>
                    <asp:TextBox ID="txt_dependent_id" runat="server" /></td>
            </tr>
            <tr>
                <td align ="right">
                    <asp:Label ID="Label2" Text="Customer Name" runat="server" /></td>
                <td>
                    <asp:TextBox ID="txt_cust_Name" runat="server" /></td>
            </tr>
            <tr>
                <td align ="right">
                    <asp:Label ID="Label3" Text="Dependent Name" runat="server" /></td>
                <td>
                    <asp:TextBox ID="txt_dpndt_Name" runat="server" /></td>
            </tr>
            <tr>
                <td align ="right">
                    <asp:Label ID="Label4" Text="Dependent RelationShip" runat="server" /></td>
                <td>
                    <asp:TextBox ID="txt_dpndt_rship" runat="server" /></td>
            </tr>
            <tr>
                <td align ="right">
                    <asp:Label ID="Label5" Text="Dependent Address" runat="server" /></td>
                <td>
                    <asp:TextBox ID="txt_dpdaddress" runat="server" Font-Bold="True" /></td>
            </tr>
            <tr>
                <td align ="right">
                    <asp:Label ID="Label6" Text="Dependent Phone No" runat="server" /></td>
                <td>
                    <asp:TextBox ID="txt_phno" runat="server" /></td>
            </tr>
            <tr>
                <td align ="right">
                    <asp:Label ID="Label7" Text="Dependent EMailID" runat="server" /></td>
                <td>
                    <asp:TextBox ID="txt_Email" runat="server" /></td>
            </tr>
            <tr>
                <td align ="right">
                    <asp:Label ID="Label8" Text="Dependent DOB" runat="server" /></td>
                <td>
                    <asp:TextBox ID="txt_dob" runat="server" /></td>
            </tr>
            <tr>
                <td align ="right">
                    <asp:Button ID ="cmdsave" Text="Save Changes" runat="server" 
                        onclick="cmdsave_Click" /></td>
                <td>
                    <asp:Button ID ="cmdback" Text="Back" runat="server" Width="135px" 
                        onclick="cmdback_Click" /></td>
            </tr>
        </table>
 
    </form>
</body>
</html>

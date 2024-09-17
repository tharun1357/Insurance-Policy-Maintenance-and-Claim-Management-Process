<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="Policyclaim.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <table style="width: 100%">
        <tr>
            <td colspan = "2" align = "center">
            <asp:Label ID ="lblPolicyClaimDetails" runat="server"  Text ="Policy Claim Details" 
                    Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" />
                            </td>
            
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td align ="right"><asp:Label ID ="lblClaimId" runat="server"  Text ="Claim ID" />
                </td>
            <td>
                <asp:TextBox ID="txtclaimid" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="lblsttsdesc" runat="server"  Text ="Status Description" /></td>
            <td>
                <asp:TextBox ID="txtstsdesc" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="lblcustplcyname" runat="server"  Text ="Customer Policy Name" /></td>
            <td>
                <asp:TextBox ID="txt_custplcy_name" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="lbldateclaim" runat="server"  Text ="Date Of Claim" /></td>
            <td>
                <asp:TextBox ID="txt_date" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="lblamntclaim" runat="server"  Text ="Amount Claimed" /></td>
            <td>
                <asp:TextBox ID="txt_amnt" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="lblstsbit" runat="server"  Text ="Status Bit" /></td>
            <td>
                <asp:TextBox ID="txt_stsbit" runat="server" /></td>
        </tr>
        <tr>
        <td align ="right"><asp:Button ID="cmdsave" runat ="server" Text ="Save" 
                Width="79px" onclick="cmdsave_Click" />
                </td>
        <td><asp:Button ID="cmdback" runat ="server" Text ="Back" Width="79px" 
                onclick="cmdback_Click" />

        </td>
        </tr>
    </table>

</asp:Content>


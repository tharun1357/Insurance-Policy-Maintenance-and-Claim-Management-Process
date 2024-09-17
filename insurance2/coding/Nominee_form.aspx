<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="Nominee_form.aspx.cs" Inherits="Nominee_form" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="lbll2" Text="Nominees Information" runat="server" 
                    Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID="Label1" Text="Nominee ID" runat="server" /></td>
            <td>
                <asp:TextBox ID="txt_nomineeid" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID="Label2" Text="Nominee Name" runat="server" /></td>
            <td>
                <asp:TextBox ID="txt_nomineename" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID="Label3" Text="Nominee Address" runat="server" /></td>
            <td>
                <asp:TextBox ID="txt_address" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right"> 
                <asp:Label ID="Label4" Text="Nominee Date Of Birth" runat="server" /></td>
            <td>
                <asp:TextBox ID="txt_dob" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID="Label5" Text="Nominee Email Id" runat="server" /></td>
            <td>
                <asp:TextBox ID="txt_mailid" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID="Label6" Text="Nominee Relationship" runat="server" /></td>
            <td>
                <asp:TextBox ID="txt_rship" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID="Label7" Text="Customer Policy No" runat="server" /></td>
            <td>
                <asp:TextBox ID="txt_policyno" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Button ID="cmdsave" Text="Save Changes" runat="server" 
                    onclick="cmdsave_Click" /></td>
            <td>
                <asp:Button ID="cmdback" Text="Back" runat="server" onclick="cmdback_Click" 
                    Width="122px" /></td>
        </tr>
    </table>
</asp:Content>


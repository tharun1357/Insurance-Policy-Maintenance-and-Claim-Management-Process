<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="agnt_accpt2.aspx.cs" Inherits="agnt_accpt2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="2" align ="center">
                <asp:Label ID= "lbl23" runat ="server" Text="Accepted Agent Details" 
                    Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID= "Label1" runat ="server" Text="Company ID" /></td>
            <td>
                <asp:TextBox ID="txt_cmpid" runat ="server" /></td>
        </tr>
        <tr>
            <td align ="right">
               <asp:Label ID= "Label2" runat ="server" Text="Agent ID" /></td>
            <td>
                <asp:TextBox ID="txt_agntid" runat ="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID= "Label3" runat ="server" Text="Accepted Date" /></td>
            <td>
                <asp:TextBox ID="txt_date" runat ="server" /></td>
        </tr>
        <tr>
        <td align ="right"><asp:Button ID="cmdsavechngs" Text="Save Changes" runat="server" 
                onclick="cmdsavechngs_Click" />
        </td>
        <td><asp:Button ID="cmdback" Text="Back" runat="server" Width="100px" 
                onclick="cmdback_Click" /></td></tr>
    </table>
</asp:Content>


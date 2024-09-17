<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="custagentreg.aspx.cs" Inherits="custpolicyreg" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan ="2" align ="center"><asp:Label ID ="lblagntinfo" 
                    Text="Agent Information" runat ="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#0066FF" />
                            </td>
            
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label1" Text="Company Name" runat ="server" /></td>
            <td>
                <asp:TextBox ID ="txtcmpname" runat ="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label2" Text="Agent Name" runat ="server" /></td>
            <td>
                <asp:DropDownList ID="dr_agent_name" runat="server" 
                    onselectedindexchanged="dr_agent_name_SelectedIndexChanged1" AutoPostBack="True" 
                     /></td>
        </tr>
        <tr>
        <td colspan ="2" align="center"/><asp:Button ID ="cmdplcyinfo" runat="server" 
                Text="Enter Policy Information" onclick="cmdplcyinfo_Click" />
        </td>
        </tr>
    </table>
</asp:Content>


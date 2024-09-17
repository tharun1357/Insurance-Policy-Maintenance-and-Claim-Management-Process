<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="agentRegistration.aspx.cs" Inherits="agenthome" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table>
<tr>
<td align="center"><asp:Label ID="lajksj" Text="Agent Registration Details" 
        runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" /> </td></tr>
<tr>
<td align ="right">
    <asp:DataGrid ID ="DataGrid1" runat="server" AllowPaging="True" 
        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" onpageindexchanged="DataGrid1_PageIndexChanged" 
        Height="281px" Width="221px" >
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" 
            Mode="NumericPages" />
        <ItemStyle BackColor="White" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    </asp:DataGrid>
</td>
</tr>
</table>
</asp:Content>


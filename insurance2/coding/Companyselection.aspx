<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Companyselection.aspx.cs" Inherits="Companyselection" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table valign =" middle" align = "center">
    
<tr>
<td align="center"><asp:Label ID="lajksj" Text="Company Selection" 
        runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" /> </td></tr>
    <tr>
<td align ="center">
    <asp:DataGrid id="DataGrid1" 
        style="Z-INDEX: 104; LEFT: 28px;TOP: 69px; height: 140px;" runat="server"
				Width="396px" BorderColor="Black" BorderStyle="Groove" ForeColor="Black" AutoGenerateColumns="False"
				BorderWidth="1px" CellPadding="2" GridLines="Horizontal" PageSize="5" 
        AllowPaging="True" onselectedindexchanged="DataGrid1_SelectedIndexChanged" 
        onpageindexchanged="DataGrid1_PageIndexChanged">
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Size="Small" Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle ForeColor="Black"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="company_id" HeaderText="Company Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="Company_name" HeaderText=" Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_phone" HeaderText=" Phone No"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_email" HeaderText=" Email"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" HeaderText="Select " CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>
</td>
</tr>
</table>
</asp:Content>


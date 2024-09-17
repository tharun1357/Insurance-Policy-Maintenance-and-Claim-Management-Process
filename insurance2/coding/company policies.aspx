<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="company policies.aspx.cs" Inherits="company_policies" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table>
<tr>
<td align="center"><asp:Label ID="lajksj" Text="Company Policies Details" 
        runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" /> </td></tr><tr><td>
   <asp:DataGrid id="DataGrid1" style="Z-INDEX: 100; LEFT: 24px; TOP: 24px" runat="server"
				AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" CellPadding="2"
				GridLines="Horizontal" ForeColor="Black" Width="412px" PageSize="5" AllowPaging="True" onselectedindexchanged="DataGrid1_SelectedIndexChanged">
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Size="Small" Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle ForeColor="Black"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="company_id" HeaderText="Company Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="Company_name" HeaderText="Company Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_phone" HeaderText="Phone No"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_email" HeaderText=" Email"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" HeaderText="Select " CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>
   
</asp:Content>


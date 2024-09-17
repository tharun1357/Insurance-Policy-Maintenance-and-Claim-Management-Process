<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="premium details.aspx.cs" Inherits="premium_details" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <table><tr><td align="center"><asp:Label ID="lala" Text="Premium Details" 
        runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" /></td></tr>
<tr>
<td> <asp:DataGrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 72px;  TOP: 96px" runat="server"
				AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Groove" 
        BorderWidth="1px" CellPadding="2"
				GridLines="Horizontal" ForeColor="Black" Width="520px" PageSize="5" 
        AllowPaging="True" onselectedindexchanged="DataGrid1_SelectedIndexChanged" 
        onpageindexchanged="DataGrid1_PageIndexChanged1">
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Size="Small" Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle ForeColor="Black"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="cust_policy_no" HeaderText="Customer Policy No"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_amount" HeaderText="Policy Amount"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_prem_amount" HeaderText=" Premium Amount"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_prem_pay_mode" HeaderText=" Pay Mode"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_prem_months" HeaderText=" Premium  Months"></asp:BoundColumn>
					<asp:BoundColumn DataField="nominee_status" HeaderText="Nomines Status"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle Mode="NumericPages"></PagerStyle>
			</asp:DataGrid></td></tr></table>
</asp:Content>


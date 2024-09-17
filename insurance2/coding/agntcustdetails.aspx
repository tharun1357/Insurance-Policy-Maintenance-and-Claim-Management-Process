<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="agntcustdetails.aspx.cs" Inherits="agntcustdetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table>
    
<tr>
<td align="center"><asp:Label ID="lajksj" Text="Agent Customer Details" 
        runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" /> </td></tr>
<tr>
<td align ="right">
    <asp:datagrid id="DataGrid1" style="Z-INDEX: 100; LEFT: 12px;  TOP: 24px" runat="server"
				Width="696px" ForeColor="Black" GridLines="Horizontal" CellPadding="2" 
        BorderWidth="1px" BorderStyle="Groove"
				BorderColor="Black" AutoGenerateColumns="False" PageSize="5" 
        AllowPaging="True" onselectedindexchanged="DataGrid1_SelectedIndexChanged" 
        onpageindexchanged="DataGrid1_PageIndexChanged1">
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Size="Small" Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle ForeColor="Black"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="cust_policy_no" HeaderText="Customer policy No"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_name" HeaderText="Customer Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_name" HeaderText="Policy Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_date" HeaderText="Policy Date" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_amount" HeaderText="Policy Amount"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_prem_amount" HeaderText=" Premium Amount"></asp:BoundColumn>
					<asp:BoundColumn DataField="Policy_prem_pay_mode" HeaderText=" Pay Mode"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_prem_months" HeaderText="Premium Months"></asp:BoundColumn>
					<asp:BoundColumn DataField="nominee_status" HeaderText="Nominee Status"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle Mode="NumericPages"></PagerStyle>
			</asp:datagrid>
</td>
</tr>
</table>
</asp:Content>


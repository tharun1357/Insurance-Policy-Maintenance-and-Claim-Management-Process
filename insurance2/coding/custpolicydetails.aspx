<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="custpolicydetails.aspx.cs" Inherits="custpolicydetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<table><tr><td align="center"><asp:Label ID="lala" Text="Policy Details" 
        runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" /></td></tr>
<tr>
<td>
<asp:datagrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 28px;  TOP: 56px" runat="server"
				Width="640px" Height="169px" BorderStyle="Groove" BorderColor="Black" 
        AutoGenerateColumns="False" BorderWidth="1px"
				BackColor="White" CellPadding="2" GridLines="Horizontal" PageSize="5" 
        AllowPaging="True" onpageindexchanged="DataGrid1_PageIndexChanged" 
        onselectedindexchanged="DataGrid1_SelectedIndexChanged" >
				<SelectedItemStyle ForeColor="GhostWhite" BackColor="DarkSlateBlue"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<Columns>
					<asp:BoundColumn DataField="Policy_id" HeaderText="Policy  Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="Policy_name" HeaderText="Policy  Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_type_field_name" HeaderText="policy Type Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_min_value" HeaderText="Policy Min Ltm"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_max_value" HeaderText="Policy Max Ltm"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_min_age_limit" HeaderText="Min Age"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_max_age_limit" HeaderText="Max Age"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_name" HeaderText="Company Name"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" HeaderText="New Policy" CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Center" ForeColor="DarkSlateBlue" BackColor="Transparent" Mode="NumericPages"></PagerStyle>
			</asp:datagrid>
    </td></tr></table>
    </asp:Content>


<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="agent_accept_details.aspx.cs" Inherits="agent_accept_details" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<table>
<tr>
<td align="center"><asp:Label ID="lajksj" Text="Accepted Agent Details" 
        runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" /> </td></tr><tr><td>
<asp:DataGrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 168px;  TOP: 48px"
				runat="server" AutoGenerateColumns="False" BorderWidth="1px" BackColor="White" CellPadding="2"
				GridLines="Horizontal" ForeColor="Black" Height="173px" Width="336px" BorderColor="Black"
				BorderStyle="Groove" PageSize="5" AllowPaging="True" 
        onselectedindexchanged="DataGrid1_SelectedIndexChanged" 
        onpageindexchanged="DataGrid1_PageIndexChanged">
				<SelectedItemStyle ForeColor="GhostWhite" BackColor="DarkSlateBlue"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle BackColor="Tan"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="company_id" HeaderText="Company Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_id" HeaderText="Agent Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_accepted_date" HeaderText="Accepted Date" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" HeaderText="Select Agent" CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Center" ForeColor="DarkSlateBlue" BackColor="Transparent" Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>
			</td></tr></table>
</asp:Content>


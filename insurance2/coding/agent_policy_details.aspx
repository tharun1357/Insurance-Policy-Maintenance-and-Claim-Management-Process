<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="agent_policy_details.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <asp:DataGrid id="DataGrid1" style="Z-INDEX: 100; LEFT: 28px;TOP: 24px" runat="server"
				Width="484px" ForeColor="Black" GridLines="Horizontal" CellPadding="2" BorderWidth="1px" BorderStyle="Groove"
				BorderColor="Black" AutoGenerateColumns="False" PageSize="5" AllowPaging="True">
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Size="Small" Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle ForeColor="Black"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="policy_id" HeaderText="Policy Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_name" HeaderText="Policy Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_min_value" HeaderText=" Min Val"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_max_value" HeaderText=" Max Val"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_min_age_limit" HeaderText=" Min Age"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_max_age_limit" HeaderText="Max Age"></asp:BoundColumn>
				</Columns>
				<PagerStyle Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>&nbsp;
</asp:Content>


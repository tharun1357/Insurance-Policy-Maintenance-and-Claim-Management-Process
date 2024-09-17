<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="agent_cust_nominee.aspx.cs" Inherits="agent_cust_nominee1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <asp:DataGrid id="DataGrid1" style="Z-INDEX: 100; LEFT: 28px;  TOP: 36px" runat="server"
				AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Groove" 
        BorderWidth="1px" CellPadding="2"
				GridLines="Horizontal" ForeColor="Black" Width="544px" PageSize="5" 
        AllowPaging="True" onpageindexchanged="DataGrid1_PageIndexChanged" >
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Size="Small" Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle ForeColor="Black"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="nominee_name" HeaderText="Nominee Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="nominee_address" HeaderText="Address"></asp:BoundColumn>
					<asp:BoundColumn DataField="nominee_email" HeaderText="E-mail"></asp:BoundColumn>
					<asp:BoundColumn DataField="nominee_relationaship" HeaderText="Relation"></asp:BoundColumn>
					<asp:BoundColumn DataField="custo_policy_no" HeaderText="Cust_ policy No"></asp:BoundColumn>
				</Columns>
				<PagerStyle Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>
</asp:Content>


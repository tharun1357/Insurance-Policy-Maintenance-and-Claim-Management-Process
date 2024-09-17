<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="Policyclaimstatusdetails.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table><tr><td align="center"><asp:Label ID="lala" Text="Policy Claim Details" 
        runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" /></td></tr>
<tr>
<td>
    <asp:datagrid id="DataGrid2" 
                style="Z-INDEX: 100; LEFT: 78px;  TOP: 185px" runat="server"
				HorizontalAlign="Center" GridLines="Horizontal" CellPadding="3" BackColor="White" BorderWidth="1px"
				BorderColor="Black" AllowPaging="True" PageSize="3" AutoGenerateColumns="False" BorderStyle="Groove"
				Width="384px" onselectedindexchanged="DataGrid2_SelectedIndexChanged">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
				<EditItemStyle BackColor="White"></EditItemStyle>
				<AlternatingItemStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" ForeColor="Black" BackColor="#EFEFEF"></AlternatingItemStyle>
				<ItemStyle ForeColor="#000066"></ItemStyle>
				<HeaderStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" ForeColor="White" BackColor="#4282B5"></HeaderStyle>
				<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="status_code" HeaderText="Claim Status Code"></asp:BoundColumn>
					<asp:BoundColumn DataField="status_description" HeaderText="Description"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
			</asp:datagrid></td></tr></table>
</asp:Content>


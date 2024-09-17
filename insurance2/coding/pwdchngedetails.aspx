<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="pwdchngedetails.aspx.cs" Inherits="pwdchngedetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table><tr><td align="center"><asp:Label ID="lala" Text="Password Change Details" 
        runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" /></td></tr>
<tr>
<td>
    <asp:DataGrid id="DataGrid1" style="Z-INDEX: 100; LEFT: 88px;  TOP: 80px" runat="server"
				AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Groove" 
        BorderWidth="1px" CellPadding="2"
				GridLines="Horizontal" ForeColor="Black" Width="376px" PageSize="5" 
        AllowPaging="True" onpageindexchanged="DataGrid1_PageIndexChanged">
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Size="Small" Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle ForeColor="Black"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="cust_id" HeaderText="Customer Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_pwd_old" HeaderText="Old Pwd"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_pwd_new" HeaderText="New Pwd"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_pwd_change_date" HeaderText=" Pwd Change Date" DataFormatString="{0:d}"></asp:BoundColumn>
				</Columns>
				<PagerStyle Mode="NumericPages"></PagerStyle>
			</asp:DataGrid></td></tr></table>
</asp:Content>


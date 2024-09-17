<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="Companydetails.aspx.cs" Inherits="Companydetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table><tr><td align="center"><asp:Label ID="lala" Text="Company Details" 
        runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" /></td></tr>
<tr>
<td><asp:DataGrid id="DataGrid1" 
        style="Z-INDEX: 100; LEFT: 144px;  TOP: 171px; width: 493px;" 
        runat="server" ForeColor="Black" GridLines="Horizontal" CellPadding="2" 
        BorderWidth="1px" BorderStyle="Groove"
				BorderColor="Black" AutoGenerateColumns="False" PageSize="5" 
        AllowPaging="True" OnPageIndexChanged="DataGrid1_PageIndexChanged" 
        onselectedindexchanged="DataGrid1_SelectedIndexChanged">
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Size="Small" Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle ForeColor="Black"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="company_id" HeaderText="Company Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="Company_name" HeaderText="Company Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_address" HeaderText=" Address"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_email" HeaderText=" Email"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_phone" HeaderText=" Phone No"></asp:BoundColumn>
					
				</Columns>
				<PagerStyle Mode="NumericPages"></PagerStyle>
			</asp:DataGrid></td></tr></table>

</asp:Content>


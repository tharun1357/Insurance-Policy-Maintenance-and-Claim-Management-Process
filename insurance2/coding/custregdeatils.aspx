<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="custregdeatils.aspx.cs" Inherits="custregdeatils" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <table><tr><td align="center"><asp:Label ID="lala" Text="Customer Registration Details" 
        runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" /></td></tr>
<tr>
<td><asp:DataGrid id="DataGrid1" style="Z-INDEX: 100; LEFT: 20px;  TOP: 40px" runat="server"
				AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Groove" 
        BorderWidth="1px" CellPadding="2"
				GridLines="Horizontal" ForeColor="Black" Width="612px" PageSize="5" 
        AllowPaging="True" onpageindexchanged="DataGrid1_PageIndexChanged">
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Size="Small" Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle ForeColor="Black"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="cust_id" HeaderText="Customer Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_name" HeaderText=" Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_dob" HeaderText=" DoB" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_address" HeaderText=" Address"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_email_id" HeaderText=" EmailId"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_phone" HeaderText="Phone No" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_marital_status" HeaderText=" Matrialstatus"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_gender" HeaderText=" Gender"></asp:BoundColumn>
				</Columns>
				<PagerStyle Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>
			</td></tr></table>
   </asp:Content>


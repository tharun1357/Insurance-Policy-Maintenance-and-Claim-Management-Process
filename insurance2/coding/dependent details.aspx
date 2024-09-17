<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="dependent details.aspx.cs" Inherits="dependent_details" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<table>
<tr><td align="right"><asp:HyperLink ID="hhhh" Text="customer Home" NavigateUrl="~/Customerhomepage.aspx" runat="server"/></tr>
<tr><td align="right">&nbsp;</tr><tr><td align="center"><asp:Label ID="lala" Text="Dependent Details" 
        runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" /></td></tr>
<tr>
<td><asp:DataGrid id="DataGrid2" style="Z-INDEX: 101; LEFT: -4px;  TOP: 24px" runat="server"
				Width="804px" GridLines="Horizontal" CellPadding="3" BackColor="White" BorderWidth="1px" BorderColor="Black"
				AllowPaging="True" PageSize="3" AutoGenerateColumns="False" BorderStyle="Groove">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
				<EditItemStyle HorizontalAlign="Center" BackColor="White"></EditItemStyle>
				<AlternatingItemStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" ForeColor="Black" BackColor="#EFEFEF"></AlternatingItemStyle>
				<ItemStyle HorizontalAlign="Center" ForeColor="#000066"></ItemStyle>
				<HeaderStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" HorizontalAlign="Center"
					ForeColor="White" BackColor="#4282B5"></HeaderStyle>
				<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="depen_id" HeaderText="Dependent ID"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_id" HeaderText="Cust ID"></asp:BoundColumn>
					<asp:BoundColumn DataField="depen_name" HeaderText="Dependent Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="depen_relation" HeaderText="Relationship"></asp:BoundColumn>
					<asp:BoundColumn DataField="depen_address" HeaderText="Address"></asp:BoundColumn>
					<asp:BoundColumn DataField="depen_phone" HeaderText="Phone No"></asp:BoundColumn>
					<asp:BoundColumn DataField="depen_email" HeaderText="E-mail ID"></asp:BoundColumn>
					<asp:BoundColumn DataField="depen_dob" HeaderText="DOB" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
			</asp:DataGrid></td></tr></table>
</asp:Content>


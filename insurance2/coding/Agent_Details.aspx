<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Agent_Details.aspx.cs" Inherits="Agent_Details" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<table>
<tr>
<td align ="center"><asp:Label id="Label12" 
        style="Z-INDEX: 104; LEFT: 272px;  TOP: 20px" runat="server"
				Width="108px" ForeColor="Blue" Font-Size="Large" Font-Bold="True">Agent Details</asp:Label></td></tr>
				
				
				
<asp:DataGrid id="DataGrid1" style="Z-INDEX: 102; LEFT: 4px;  TOP: 52px" runat="server"
				Width="724px" BorderStyle="Groove" HorizontalAlign="Center" 
        GridLines="Horizontal" CellPadding="3"
				BackColor="White" BorderWidth="1px" BorderColor="Black" AllowPaging="True" 
        PageSize="3" AutoGenerateColumns="False"
				Height="120px" DataKeyField="agent_id" 
        oncancelcommand="DataGrid1_CancelCommand" 
        ondeletecommand="DataGrid1_DeleteCommand" oneditcommand="DataGrid1_EditCommand" 
        onpageindexchanged="DataGrid1_PageIndexChanged" 
        onupdatecommand="DataGrid1_UpdateCommand">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
				<EditItemStyle BackColor="White"></EditItemStyle>
				<AlternatingItemStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" ForeColor="Black" BackColor="#EFEFEF"></AlternatingItemStyle>
				<ItemStyle ForeColor="#000066"></ItemStyle>
				<HeaderStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" ForeColor="White" BackColor="#4282B5"></HeaderStyle>
				<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="agent_id" HeaderText="Agent Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_name" HeaderText=" Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_address" HeaderText="Address"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_phone_no" HeaderText="Phone"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_email_id" HeaderText="Email"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_dob" HeaderText="DOB" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_gender" HeaderText="Gender"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_experience" HeaderText="Exp"></asp:BoundColumn>
					<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>
			</table>
</asp:Content>


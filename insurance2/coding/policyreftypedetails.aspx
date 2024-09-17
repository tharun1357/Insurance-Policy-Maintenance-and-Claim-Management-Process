<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="policyreftypedetails.aspx.cs" Inherits="policyreftypedetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table>
<tr><td colspan="2" align="center"><asp:Label ID="lbvvh" runat="server" 
        Text="Policy Reference Type Details" Font-Bold="True" Font-Size="Large" 
        ForeColor="#0066FF" />
</td></tr>
<tr>
<td colspan ="2" align="right"><asp:Button ID="cmdnewrecord" Text="New Record" 
        runat="server" onclick="cmdnewrecord_Click" />
</td></tr>
<tr><td colspan="2">
<asp:DataGrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 76px;  TOP: 84px" runat="server"
				AutoGenerateColumns="False" BorderWidth="1px" BackColor="White" 
        CellPadding="2" GridLines="Horizontal"
				ForeColor="Black" Height="84px" Width="492px" BorderColor="Black" 
        BorderStyle="Groove" PageSize="5"
				AllowPaging="True" oncancelcommand="DataGrid1_CancelCommand" 
        ondeletecommand="DataGrid1_DeleteCommand" oneditcommand="DataGrid1_EditCommand" 
        onpageindexchanged="DataGrid1_PageIndexChanged" 
        onupdatecommand="DataGrid1_UpdateCommand">
				<SelectedItemStyle ForeColor="GhostWhite" BackColor="DarkSlateBlue"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle BackColor="Tan"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="policy_ref_type_id" HeaderText="P_ref Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_type_field_id" HeaderText="P_ Field Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_ref_type_name" HeaderText="P_ Ref Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="Policy_ref_type_desc" HeaderText="Description"></asp:BoundColumn>
					<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
					<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Center" ForeColor="DarkSlateBlue" BackColor="ActiveBorder" Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>
			</td></tr></table>
</asp:Content>


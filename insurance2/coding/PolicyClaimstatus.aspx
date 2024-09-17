<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="PolicyClaimstatus.aspx.cs" Inherits="PolicyClaimstatus" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align ="center">
            <asp:Label ID="llllabel" Text="Policy Claim Status Details" runat="server" Font-Bold="True" 
                    ForeColor="#0066FF" />
                </td>
        </tr>
        <tr>
            <td align ="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Button ID="cmdnewrecord" runat="server" Text="New Record" onclick="cmdnewrecord_Click" 
                     /></td>
        </tr>
        <tr>
            <td align="center">
             <asp:datagrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 144px;  TOP: 112px"
				runat="server" GridLines="Horizontal" CellPadding="2" BackColor="White" BorderWidth="1px"
				AutoGenerateColumns="False" ForeColor="Black" BorderStyle="Groove" BorderColor="Black" Width="297px"
				Height="149px" PageSize="5" AllowPaging="True" oncancelcommand="DataGrid1_CancelCommand" 
                    ondeletecommand="DataGrid1_DeleteCommand" oneditcommand="DataGrid1_EditCommand" 
                    onpageindexchanged="DataGrid1_PageIndexChanged" 
                    onupdatecommand="DataGrid1_UpdateCommand">
				<SelectedItemStyle ForeColor="GhostWhite" BackColor="DarkSlateBlue"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle BackColor="Tan"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="status_code" HeaderText="Status Code"></asp:BoundColumn>
					<asp:BoundColumn DataField="status_description" HeaderText="Status Description"></asp:BoundColumn>
					<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
					<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Center" ForeColor="DarkSlateBlue" BackColor="Transparent" Mode="NumericPages"></PagerStyle>
			</asp:datagrid>   
             </td>
        </tr>
    </table>
</asp:Content>


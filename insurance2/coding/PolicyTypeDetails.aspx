<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="PolicyTypeDetails.aspx.cs" Inherits="PolicyTypeDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align ="center">
            <asp:Label ID="llllabel" Text="Policy Type Details" runat="server" Font-Bold="True" 
                    ForeColor="#0066FF" />
                </td>
        </tr>
        <tr>
            <td align ="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Button ID="cmdnewrecord" runat="server" Text="New Record" 
                    onclick="cmdnewrecord_Click" /></td>
        </tr>
        <tr>
            <td align="center">
               <asp:datagrid id="DataGrid1" style="Z-INDEX: 102; LEFT: 132px; TOP: 100px"
				runat="server" BorderStyle="Groove" BorderColor="Black" Width="416px" Height="84px" 
                    ForeColor="Transparent" GridLines="Horizontal" CellPadding="2" 
                    BackColor="White" BorderWidth="1px" AutoGenerateColumns="False"
				PageSize="5" AllowPaging="True" oncancelcommand="DataGrid1_CancelCommand" 
                    oneditcommand="DataGrid1_EditCommand" 
                    onpageindexchanged="DataGrid1_PageIndexChanged" 
                    onupdatecommand="DataGrid1_UpdateCommand" 
                     >
				<SelectedItemStyle ForeColor="GhostWhite" BackColor="DarkSlateBlue"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle BackColor="Tan"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="policy_type_field_id" HeaderText="PolicyType Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_type_field_name" HeaderText=" Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="Policy_type_field_desc" HeaderText="Description"></asp:BoundColumn>
					<asp:EditCommandColumn UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Center" ForeColor="DarkSlateBlue" BackColor="ActiveBorder" Mode="NumericPages"></PagerStyle>
			</asp:datagrid>
              </td>
        </tr>
    </table>
</asp:Content>


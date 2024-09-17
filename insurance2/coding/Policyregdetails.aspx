<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Policyregdetails.aspx.cs" Inherits="Policyregdetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td align ="center">
            <asp:Label ID="llllabel" Text="Policy Registration Details" runat="server" Font-Bold="True" 
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
                <asp:datagrid id="DataGrid1" 
                style="Z-INDEX: 101; LEFT: 4px;  TOP: 183px; height: 113px;" runat="server"
				Width="741px" AutoGenerateColumns="False" BorderColor="Black" BorderWidth="1px" BackColor="White"
				CellPadding="2" GridLines="Horizontal" ForeColor="Black" BorderStyle="Groove"
				PageSize="5" AllowPaging="True" oncancelcommand="DataGrid1_CancelCommand" 
                    ondeletecommand="DataGrid1_DeleteCommand" oneditcommand="DataGrid1_EditCommand" 
                    onpageindexchanged="DataGrid1_PageIndexChanged" 
                    onupdatecommand="DataGrid1_UpdateCommand">
				<SelectedItemStyle ForeColor="GhostWhite" BackColor="DarkSlateBlue"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle BackColor="Tan"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="policy_id" HeaderText="Pol Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="Policy_name" HeaderText="Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="Policy_launched_date" HeaderText=" Launched Date" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="Policy_type_field_id" HeaderText="P_Type Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_min_value" HeaderText=" Min Value"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_max_value" HeaderText=" Max Value"></asp:BoundColumn>
					<asp:BoundColumn DataField="Policy_min_age_limit" HeaderText="MinAge"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_max_age_limit" HeaderText=" MaxAge"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_id" HeaderText="Comp Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_desc" HeaderText="Description"></asp:BoundColumn>
					<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
					<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Center" ForeColor="DarkSlateBlue" BackColor="ActiveBorder" Mode="NumericPages"></PagerStyle>
			</asp:datagrid>
              </td>
        </tr>
    </table>
</asp:Content>


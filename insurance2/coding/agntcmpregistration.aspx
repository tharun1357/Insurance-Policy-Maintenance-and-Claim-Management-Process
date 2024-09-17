<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="agntcmpregistration.aspx.cs" Inherits="agntcmpregistration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <table style="width: 100%">
        <tr>
            <td colspan = "2" align ="center">
                <asp:Label ID ="lablagnt" 
                    Text="Agent Company registration" runat="server" BackColor="#CCCCFF" 
                    BorderColor="#FF33CC" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#CC3300" Width="237px" />
                </td>
            
        </tr>
        <tr>
            <td colspan = "2" align ="center">&nbsp;</td>
            
        </tr>
        <tr>
            <td align = "right">
                <asp:Label ID = "lblCompanyId" runat ="server" Text ="CompanyId"/></td>
            <td>
                <asp:TextBox ID= "txt_cmpID" runat ="server" /></td>
        </tr>
        <tr>
            <td align = "right">
                <asp:Label ID = "lblAgentID" runat ="server" Text ="Agent ID"/></td>
            <td>
                <asp:TextBox ID= "txt_agntID" runat ="server" /></td>
        </tr>
        <tr>
            <td align = "right">
                <asp:Button ID ="cmdsave" runat ="server" Text ="Save Changes" Width="97px" 
                    onclick="cmdsave_Click" /></td>
            <td>
               <asp:Button ID ="cmdBack" runat ="server" Text ="Back" Width="97px" 
                    onclick="cmdBack_Click" /> </td>
        </tr>
    </table>

</asp:Content>


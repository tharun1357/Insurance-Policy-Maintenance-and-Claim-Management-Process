<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="policyreftypemaster.aspx.cs" Inherits="policyreftypemaster" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="lllass" Text="Policy Reference Type Details" runat="server" 
                    Font-Bold="True" Font-Overline="False" Font-Size="Large" Font-Underline="True" 
                    ForeColor="#CC3300" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID ="label111" Text="Policy Reference Type Master" runat="server" 
                    Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" /></td>
        </tr>
        <tr>
            <td align ="right"><asp:Label ID ="label1" Text="Policy Ref Type ID" runat="server" />
                </td>
            <td>
                <asp:TextBox ID ="txt_typeID" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="label2" Text="Policy Type Field ID" runat="server" /></td>
            <td>
                <asp:TextBox ID ="txt_fieldID" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="label3" Text="Policy Ref Type Name" runat="server" /></td>
            <td>
                <asp:TextBox ID ="txt_typename" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="label4" Text="Policy Ref Type Desc" runat="server" /></td>
            <td>
                <asp:TextBox ID ="txt_typedesc" runat="server" /></td>
        </tr>
        <tr>
        <td align="right"><asp:Button ID ="cmdsave" runat="server" Text="Save Changes" 
                onclick="cmdsave_Click" />
        </td>
        <td><asp:Button ID ="cmdrecord" runat="server" Text="Reenter Record" 
                onclick="cmdrecord_Click" /></td>
        </tr>
    </table>
</asp:Content>


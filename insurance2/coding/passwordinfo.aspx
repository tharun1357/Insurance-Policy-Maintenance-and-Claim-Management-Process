<%@ Page Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="passwordinfo.aspx.cs" Inherits="passwordinfo" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="2" align ="center">
                <asp:Label ID ="l44" Text=" Security Information" runat ="server" 
                    Font-Bold="True" ForeColor="#6699FF" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label1" Text=" Agent ID" runat ="server" /></td>
            <td>
                <asp:TextBox ID="t1" runat ="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label2" Text=" Old Password" runat ="server" /></td>
            <td>
                <asp:TextBox ID="TextBox1" runat ="server" /></td>
        </tr>
        <tr>
            <td align ="right">
               <asp:Label ID ="Label3" Text=" New Password" runat ="server" /></td>
            <td><asp:TextBox ID="TextBox2" runat ="server" />
                </td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label4" Text=" Pwd Change Date" runat ="server" /></td>
            <td><asp:TextBox ID="TextBox3" runat ="server" />
                </td>
        </tr>
                <tr>
            <td align ="center" colspan ="2">
                <asp:Button ID ="cmdsave" Text=" Save" runat ="server" Width="86px" /></td>
                    </tr>
    </table>
</asp:Content>


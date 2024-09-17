<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="policytypemaster.aspx.cs" Inherits="policytypemaster" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <table style="width: 100%">
        <tr>
            <td colspan="2" align ="center"><asp:Label ID="lblpolicytype" runat ="server" 
                    Text="Policy Type Master" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#0066FF" />
                </td>
            
        </tr>
        <tr>
            <td align ="right"><asp:Label ID="Label1" runat ="server" Text="Policy Type Field ID" />
                </td>
            <td>
                <asp:TextBox ID ="txt_Id" runat ="server" /></td>
        </tr>
        <tr>
            <td align ="right">
               <asp:Label ID="Label2" runat ="server" Text="Policy Type Name" /></td>
            <td>
                <asp:TextBox ID ="txtname" runat ="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID="Label3" runat ="server" Text="Policy Type Desc" /></td>
            <td>
                <asp:TextBox ID ="txtdesc" runat ="server" /></td>
        </tr>
        <tr>
        <td align ="right"><asp:Button ID ="cmdsavechanges" runat ="server" 
                Text="Save changes" onclick="cmdsavechanges_Click" />
        </td>
        <td><asp:Button ID ="cmdback" runat ="server" Text="Back" onclick="cmdback_Click" /></td></tr>
    </table>

</asp:Content>


<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Adminloginpage.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <table align ="center" bgcolor="White" frame="void" style="width: 384px">
        <tr>
            <td colspan="2" align="center">
                </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
            <asp:Label ID="label1" Text=" ADMIN LOGIN FORM " runat="server" Font-Bold="True" 
                    Font-Size="Large" ForeColor="#3399FF"/>
                </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="label2" Text="User Name" runat="server" /></td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" Width="134px" /></td>
                        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="label3" Text="Password" runat="server" /></td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" 
                    Width="134px" /></td>
        </tr>
        <tr>
            <td align="right">
            <asp:Button ID="cmdsubmit" Text="Submit" runat="server" onclick="cmdsubmit_Click" />
                </td>
            <td>
                <asp:Button ID="cmdcancel" Text="Cancel" runat="server" 
                    onclick="cmdcancel_Click" /></td>
        </tr>
        <tr>
            <td> </td>
            <td>
                <asp:Label ID="lbldisplay" runat="server" /></td>
        </tr>
    </table>

    
</asp:Content>


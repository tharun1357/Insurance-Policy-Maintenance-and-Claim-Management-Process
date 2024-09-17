<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Agentlogin.aspx.cs" Inherits="Agentlogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 384px" bgcolor="White" frame="void">
        <tr>
            <td colspan="2">
                </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
            <asp:Label ID="lbl1" Text=" AGENT LOGIN  FORM  " runat="server" Font-Bold="True" 
                    Font-Size="Large" ForeColor="#6699FF" />
                </td>
        </tr>
        <tr>
            <td align ="right" style="height: 28px">
                <asp:Label ID="lbl2" Text=" User Name" runat="server" /></td>
            <td>
                <asp:TextBox ID="txtusrname" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right"><asp:Label ID="lbl3" Text=" Password" runat="server" />
                </td>
            <td>
               <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" /> </td>
        </tr>
        <tr>
            <td ></td>
            <td>
                </td>
        </tr>
        <tr>
            <td align="right" >
            <asp:Button ID="cmdsubmit" Text="Submit" runat="server" onclick="cmdsubmit_Click" />
            </td>
            <td><asp:Button ID="cmdcancel" Text="cancel" runat="server" 
                    onclick="cmdcancel_Click" />
                </td>
        </tr>
        <tr>
            <td align="right" >
                &nbsp;</td>
            <td><asp:Label ID="lbldisplay" runat="server" /></td></td>
        </tr>
    </table>
</asp:Content>


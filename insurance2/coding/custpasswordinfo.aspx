<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="custpasswordinfo.aspx.cs" Inherits="custpasswordinfo" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table style="width: 53%; height: 181px;" border="1" valign="middle";align="center">
        <tr>
            <td colspan="2" align ="center">
                <asp:Label ID ="l44" Text=" Security Information" runat ="server" 
                    Font-Bold="True" ForeColor="#6699FF" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label11" Text=" Cust ID" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txt_custid" runat ="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="enter password" ControlToValidate="txtoldpwd">*</asp:RequiredFieldValidator>
                <asp:Label ID ="Label21" Text=" Old Password" runat ="server" /></td>
            <td><asp:TextBox ID="txtoldpwd" runat ="server" TextMode="Password" />
                </td>
        </tr>
        <tr>
            <td align ="right">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="enter new password" ControlToValidate="txtnewpwd">*</asp:RequiredFieldValidator>
               <asp:Label ID ="Label31" Text=" New Password" runat ="server" />
                
            </td>
            <td><asp:TextBox ID="txtnewpwd" runat ="server" TextMode="Password" />
                </td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label41" Text=" Pwd Change Date" runat ="server" /></td>
            <td><asp:TextBox ID="txtpwdchngedate" runat ="server" />
                </td>
        </tr>
                <tr>
            <td align ="center" colspan ="2">
                <asp:Button ID ="cmdsave11" Text=" Save" runat ="server" Width="86px" 
                    onclick="cmdsave11_Click" /></td>
                    </tr>
    </table>
</asp:Content>


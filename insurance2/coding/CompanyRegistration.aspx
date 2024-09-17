<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="CompanyRegistration.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <table style="width: 100%" bgcolor="White">
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align ="center">
                <asp:Label ID="lbl5" Text=" Company Registration " runat ="server" 
                    Font-Bold="True" Font-Size="Large" ForeColor="#6699FF" /></td>
        </tr>
        <tr>
            <td align ="right" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="lbl6" Text=" Company ID" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtcompanyid" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label1" Text="Company Name" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtcompanyname" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label2" Text="Address" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtcompanyaddress" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtcompanyemail" ErrorMessage="enter valid mail id" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <asp:Label ID ="Label4" Text="EMail ID" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtcompanyemail" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtcompanyphno" ErrorMessage="enter valid 8 digits phone no" 
                    ValidationExpression="\d{8}">*</asp:RegularExpressionValidator>
                <asp:Label ID ="Label3" Text="Phone No." runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtcompanyphno" runat="server" /></td>
        </tr>
        
        <tr>
            <td align ="right">
                <asp:Label ID ="Label5" Text="FAX No." runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtfax" runat="server" /></td>
        </tr>
                <tr>
            <td align ="right">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="txtwebsite" ErrorMessage="enter valid web address" 
                    ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?">*</asp:RegularExpressionValidator>
                <asp:Label ID ="Label7" Text="Web Site" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtwebsite" runat="server" /></td>
        </tr>
        <tr>
            <td>
                </td>
            <td>
                </td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Button ID="cmdsave" Text="Submit" runat ="server" Width="76px" 
                    onclick="cmdsave_Click"/></td>
            <td>
                <asp:Button ID="cmdclear" Text="Cancel" runat ="server" Width="72px" 
                    onclick="cmdclear_Click" /></td>
        </tr>
    </table>
</asp:Content>


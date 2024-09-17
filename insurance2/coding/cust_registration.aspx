<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cust_registration.aspx.cs" Inherits="cust_registration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%" bgcolor="White">
        <tr>
            <td colspan="2" align="right">
                <asp:HyperLink ID="hhha" Text="home" NavigateUrl="~/homepage.aspx" runat="server" /></td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align ="center">
                <asp:Label ID="lbl5" Text=" Customer Registration Form " runat ="server" 
                    Font-Bold="True" Font-Size="Large" ForeColor="#6699FF" /></td>
        </tr>
        <tr>
            <td colspan="2" align ="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="lbl6" Text="Customer ID" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtcustid" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label1" Text="Customer Name" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtcustname" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label5" Text="DOB" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtcustdob" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcustdob" ErrorMessage="enter dob"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label2" Text="Address" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtcustaddress" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label4" Text="EMail ID" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtcustemail" runat="server" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtcustemail" ErrorMessage="enter valid Mail id" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label3" Text="Phone No." runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtcustphno" runat="server" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtcustphno" 
                    ErrorMessage="enter Valid  10 digitsPhone Number" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label7" Text="Marital Status" runat ="server" /></td>
            <td>
                <asp:RadioButtonList ID="r1" runat ="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Selected="True">single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        
        <tr>
            <td align ="right">
                <asp:Label ID ="Label6" Text="Gender" runat ="server" /></td>
            <td>
                <asp:DropDownList ID="d1" runat="server" >
                </asp:DropDownList>
            </td>
        </tr>
        
        <tr bgcolor="White">
            <td>
                </td>
            <td>
                </td>
        </tr>
        
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Button ID="cmdsave" Text="Save" runat ="server" Width="76px" 
                    onclick="cmdsave_Click"/></td>
            <td>
                <asp:Button ID ="cmdclear" runat="server" Text=" Clear" Width="72px" 
                    onclick="cmdclear_Click" style="height: 26px"/>
                <asp:Button ID="cmdback" Text="Back" runat ="server" Width="72px" 
                    onclick="cmdback_Click" /></td>
        </tr>
    </table>
</asp:Content>


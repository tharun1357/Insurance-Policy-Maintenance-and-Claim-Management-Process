<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="newAgentRegistration.aspx.cs" Inherits="newAgentRegistration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%" bgcolor="White">
        <tr>
            <td colspan="2" align="right">
                <asp:HyperLink ID="hhha" Text="home" NavigateUrl="~/homepage.aspx" runat="server" /></td>
        </tr>
        <tr>
            <td colspan="2" align ="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" align ="center">
                <asp:Label ID="lbl5" Text=" New Agent Details " runat ="server" 
                    Font-Bold="True" Font-Size="Large" ForeColor="#6699FF" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="lbl6" Text="Agent ID" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtagentid" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label1" Text="Agent Name" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtagentname" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label2" Text="Address" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label3" Text="Phone No." runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtphno" runat="server" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtphno" ErrorMessage="enter valid 10 digits ph no" 
                    ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
               
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label4" Text="EMail ID" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="enter valid Email id" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label5" Text="DOB" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtdob" runat="server" /></td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label6" Text="Gender" runat ="server" /></td>
            <td>
                <asp:DropDownList ID="d1" runat="server" >
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="Label7" Text="Experience" runat ="server" /></td>
            <td>
                <asp:TextBox ID="txtexprnce" runat="server" /></td>
        </tr>
        <tr>
            <td>
                </td>
            <td>
                </td>
        </tr>
        <tr>
            <td align ="right">
                <asp:Button ID="cmdsave" Text="Save" runat ="server" Width="76px" 
                    onclick="cmdsave_Click"/></td>
            <td>
                
               <asp:Button ID="cmdclear" Text="Clear" runat ="server" Width="72px" 
                     style="height: 26px" onclick="cmdclear_Click"/>
                     <asp:Button ID ="cmdBack" runat ="server" Text="Back" Width="72px" 
                     style="height:26px" onclick="cmdBack_Click"/></td>
        </tr>
        
    </table>
</asp:Content>


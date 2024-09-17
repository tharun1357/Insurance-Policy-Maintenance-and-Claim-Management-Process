<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="policyInfo.aspx.cs" Inherits="policyInfo" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <table style="width: 100%">
        <tr>
            <td colspan ="2" align ="center"><asp:Label ID ="lblPolicyInformation" 
                    runat ="server"  Text="Policy Information" Font-Bold="True" Font-Size="Large" 
                    ForeColor="#0066FF"/>
                </td>
            
        </tr>
        <tr>
            <td align ="right">
                <asp:Label ID ="lblplcyname" runat ="server" Text="Policy Name" /></td>
            <td>
                <asp:DropDownList ID="dplcyname" runat ="server" /></td>
        </tr>
        <tr>
            <td colspan ="2" align ="center"><asp:Button ID="cmdplcyinfo" runat="server" 
                    Text="Enter Policy Information" onclick="cmdplcyinfo_Click" />
                </td>
            
        </tr>
    </table>

</asp:Content>


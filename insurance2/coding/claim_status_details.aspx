<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="claim_status_details.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<TABLE id="Table1" style="WIDTH: 293px; HEIGHT: 74px" cellSpacing="1" cellPadding="0" width="293"
					border="0">
					<TR align="center">
						<TD style="HEIGHT: 25px" bgColor="steelblue" colSpan="2">
							<asp:Label id="Label5" runat="server" Height="12px" Width="173px" ForeColor="White" Font-Bold="True"
								Font-Size="Small" Font-Names="Verdana">Claim Status Details</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 145px; HEIGHT: 1px">
							<asp:Label id="Label1" runat="server" Height="12px" Width="97px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Status Code</asp:Label></TD>
						<TD style="HEIGHT: 1px">
							<asp:TextBox id="TextBox1" runat="server" Height="20px" Width="150px" BorderStyle="Groove" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 145px; HEIGHT: 1px">
							<asp:Label id="Label2" runat="server" Height="8px" Width="136px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Status Description</asp:Label></TD>
						<TD style="HEIGHT: 1px">
							<asp:TextBox id="TextBox2" runat="server" Height="20px" Width="152px" BorderStyle="Groove"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 145px; HEIGHT: 12px">
							<asp:Button id="Button2" runat="server" Height="24px" Width="145px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana" Text="Save Changes" onclick="Button2_Click"></asp:Button></TD>
						<TD style="HEIGHT: 12px">
							<asp:Button id="Button1" runat="server" Height="24px" Width="152px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana" Text="Back" onclick="Button1_Click"></asp:Button></TD>
					</TR>
				</TABLE>
</asp:Content>


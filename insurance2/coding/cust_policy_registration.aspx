<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="cust_policy_registration.aspx.cs" Inherits="cust_policy_registration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <TABLE valign ="middle" align="center">
					<TR align="center">
						<TD  colSpan="2" align="center">
							<asp:Label id="Label5" runat="server" Text="Policy Registration" 
                                Font-Bold="True" Font-Size="Large" ForeColor="#0066FF" /></TD>
					</TR>
					<TR align="right">
						<TD >
							<asp:Label id="Label1" runat="server"  Text="Customer Policy NO" /></TD>
						<TD>
							<asp:TextBox id="TextBox1" runat="server" /></TD>
					</TR>
					<TR align="right">
						<TD  colSpan="1">
							<asp:Label id="Label2" runat="server" Text="Customer Name"/></TD>
						<TD>
							<asp:TextBox id="TextBox2" runat="server" /></TD>
					</TR>
					<TR align="right">
						<TD >
							<asp:Label id="Label3" runat="server"  Text="Policy ID"/></TD>
						<TD>
							<asp:TextBox id="TextBox3" runat="server"/></TD>
					</TR>
					<TR align="right">
						<TD align="right">
							<asp:Label id="Label4" runat="server" Text="Policy Date"/></TD>
						<TD align="left" >
							<asp:TextBox id="TextBox4" runat="server" /></TD>
					</TR>
					<TR>
						<TD  align="right">
							<asp:Label id="Label6" runat="server" Text="Policy Term Year" /></TD>
						<TD>
							<asp:TextBox id="TextBox5" runat="server" /></TD>
					</TR>
					<TR>
						<TD align="right">
							<asp:Label id="Label7" runat="server" Text ="Policy Amount"/></TD>
						<TD>
							<asp:TextBox id="TextBox6" runat="server" /></TD>
					</TR>
					<TR>
						<TD  align="right">
							<asp:Label id="Label8" runat="server" Text="Policy Premium Amnt"/></TD>
						<TD>
							<asp:TextBox id="TextBox7" runat="server" /></TD>
					</TR>
					<TR>
						<TD  align="right">
							<asp:Label id="Label9" runat="server" Text="Policy Premium Pay Amnt"/></TD>
						<TD>
							<asp:DropDownList ID="dr_policy_payamnt" runat="server" >
                                <asp:ListItem>Yearly</asp:ListItem>
                                <asp:ListItem>Monthly</asp:ListItem>
                                <asp:ListItem>Quarterly</asp:ListItem>
                                <asp:ListItem>Half Yearly</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </TD>
					</TR>
					<TR>
						<TD  align="right">
							<asp:Label id="Label10" runat="server" Text ="Policy Premium Months"/></TD>
						<TD >
							<asp:TextBox id="TextBox9" runat="server" /></TD>
					</TR>
					<TR>
						<TD  align="right">
							<asp:Label id="Label11" runat="server" Text="Nominee Status"/></TD>
						<TD>
							<asp:DropDownList ID ="dr_nominee_status" runat="server" >
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                        </TD>
					</TR>
					<TR>
						<TD  align="right">
							<asp:Label id="Label12" runat="server" Text="Agent ID"/></TD>
						<TD>
							<asp:TextBox id="TextBox11" runat="server" /></TD>
					</TR>
					<TR align="center">
						<TD >
							<asp:Button id="cmdsave" runat="server" Text ="Save Changes" onclick="cmdsave_Click"/></TD>
						<TD align="left">
							<asp:Button id="cmdback" runat="server" Text="Back" Width="127px" 
                                onclick="cmdback_Click" /></TD>
					</TR>
				</TABLE>
</asp:Content>


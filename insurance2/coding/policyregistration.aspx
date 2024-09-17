<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="~/policyregistration.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<TABLE id="Table1" style="WIDTH: 216px; HEIGHT: 134px" cellSpacing="1" cellPadding="0"
					width="216" border="0">
					<TR align="center">
						<TD bgColor="steelblue" colSpan="2">
							<asp:Label id="Label5" runat="server" Height="12px" ForeColor="White" Width="192px" Font-Size="Small"
								Font-Bold="True" Font-Names="Verdana">Policy 
                            Registration</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 162px">
							<asp:Label id="Label1" runat="server" Height="12px" Width="96px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Policy Id</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox1" runat="server" Height="20px" BorderStyle="Groove" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 162px" colSpan="1">
							<asp:Label id="Label2" runat="server" Height="12px" Width="96px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Policy Name</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox2" runat="server" Height="20px" BorderStyle="Groove" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 162px">
							<asp:Label id="Label3" runat="server" Height="12px" Width="132px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Policy Launched</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox3" runat="server" Height="20px" 
                        BorderStyle="Groove" Width="136px" ></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 162px; HEIGHT: 21px" align="right">
							<asp:Label id="Label4" runat="server" Height="12px" Width="124px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Policy Type Field</asp:Label></TD>
						<TD style="HEIGHT: 21px">
							<asp:DropDownList id="dr_policy_type" runat="server" Width="134px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana"></asp:DropDownList></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 162px" align="right">
							<asp:Label id="Label6" runat="server" Height="12px" Width="156px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Policy Min Value</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox5" runat="server" Height="20px" BorderStyle="Groove" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 162px" align="right">
							<asp:Label id="Label7" runat="server" Height="12px" Width="124px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Policy Max Value</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox6" runat="server" Height="20px" BorderStyle="Groove" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 162px" align="right">
							<asp:Label id="Label8" runat="server" Height="12px" Width="145px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Policy Min Age Limit</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox7" runat="server" Height="20px" BorderStyle="Groove" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 162px" align="right">
							<asp:Label id="Label9" runat="server" Height="12px" Width="153px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Policy Max Age Limit</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox8" runat="server" Height="20px" BorderStyle="Groove" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 162px; HEIGHT: 1px" align="right">
							<asp:Label id="Label10" runat="server" Height="12px" Width="152px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Company Id</asp:Label></TD>
						<TD style="HEIGHT: 1px">
							<asp:DropDownList id="dr_company_id" runat="server" Width="136px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana"></asp:DropDownList></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 162px" align="right">
							<asp:Label id="Label11" runat="server" Height="12px" Width="148px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Policy Description</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox10" runat="server" Height="20px" BorderStyle="Groove" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 162px">
							<asp:Button id="Button1" runat="server" Width="149px" Font-Size="X-Small" Font-Bold="True" Text="Save Changes"
								Font-Names="Verdana" onclick="Button1_Click"></asp:Button></TD>
						<TD>
							<asp:Button id="Button2" runat="server" Width="134px" Font-Size="X-Small" Font-Bold="True" Text="Back"
								Font-Names="Verdana" onclick="Button2_Click"></asp:Button></TD>
					</TR>
				</TABLE>
</asp:Content>


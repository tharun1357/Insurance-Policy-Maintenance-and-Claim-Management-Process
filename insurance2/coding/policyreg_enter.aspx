<%@ Page Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="policyreg_enter.aspx.cs" Inherits="policyreg_enter" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<TABLE id="Table1" style="WIDTH: 284px; HEIGHT: 311px" cellSpacing="1" cellPadding="0"
					width="284" border="0">
					<TR align="center">
						<TD bgColor="steelblue" colSpan="2">
							<asp:Label id="Label5" runat="server" Height="12px" Width="192px" ForeColor="White" Font-Names="Verdana"
								Font-Size="Small" Font-Bold="True">Policy Registration</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 154px">
							<asp:Label id="Label1" runat="server" Height="12px" Width="146px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Customer Policy No</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox1" runat="server" BorderStyle="Groove" Height="20px" Width="136px" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 154px" colSpan="1">
							<asp:Label id="Label2" runat="server" Height="12px" Width="125px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Customer Name</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox2" runat="server" BorderStyle="Groove" Height="20px" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 154px; HEIGHT: 17px">
							<asp:Label id="Label3" runat="server" Height="12px" Width="132px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Policy Id</asp:Label></TD>
						<TD style="HEIGHT: 17px">
							<asp:TextBox id="TextBox3" runat="server" BorderStyle="Groove" Height="20px" Width="136px" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 154px; HEIGHT: 7px" align="right">
							<asp:Label id="Label4" runat="server" Height="12px" Width="124px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Policy Date</asp:Label></TD>
						<TD style="HEIGHT: 7px">
							<asp:TextBox id="TextBox4" runat="server" BorderStyle="Groove" Height="20px" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 154px" align="right">
							<asp:Label id="Label6" runat="server" Height="12px" Width="156px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Policy Term Year</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox5" runat="server" BorderStyle="Groove" Height="20px" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 154px" align="right">
							<asp:Label id="Label7" runat="server" Height="12px" Width="124px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Policy Amount</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox6" runat="server" BorderStyle="Groove" Height="20px" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 154px; HEIGHT: 1px" align="right">
							<asp:RangeValidator id="RangeValidator1" runat="server" ControlToValidate="TextBox7" MaximumValue="500000"
								MinimumValue="1000" ErrorMessage="RangeValidator">*</asp:RangeValidator>
							<asp:Label id="Label8" runat="server" Height="12px" Width="152px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Policy Premium Amt</asp:Label></TD>
						<TD style="HEIGHT: 1px">
							<asp:TextBox id="TextBox7" runat="server" BorderStyle="Groove" Height="20px" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 154px; HEIGHT: 3px" align="right">
							<asp:Label id="Label9" runat="server" Height="12px" Width="152px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">PolicyPrem Pay Amt</asp:Label></TD>
						<TD style="HEIGHT: 3px">
							<asp:DropDownList id="dr_pay_mode" runat="server" Width="136px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">
								<asp:ListItem Value="yearly">yearly</asp:ListItem>
								<asp:ListItem Value="Quarterly">Quarterly</asp:ListItem>
								<asp:ListItem Value="Halfyearly">Halfyearly</asp:ListItem>
								<asp:ListItem Value="Monthly">Monthly</asp:ListItem>
							</asp:DropDownList></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 154px" align="right">
							<asp:Label id="Label10" runat="server" Height="12px" Width="152px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Policy Prem Months</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox9" runat="server" BorderStyle="Groove" Height="20px" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 154px; HEIGHT: 4px" align="right">
							<asp:Label id="Label11" runat="server" Height="12px" Width="148px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Nominee Status</asp:Label></TD>
						<TD style="HEIGHT: 4px">
							<asp:DropDownList id="dr_nominee_status" runat="server" Width="136px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">
								<asp:ListItem>No</asp:ListItem>
								<asp:ListItem>yes</asp:ListItem>
							</asp:DropDownList></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 154px" align="right">
							<asp:Label id="Label12" runat="server" Height="12px" Width="148px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Agent Id</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox11" runat="server" BorderStyle="Groove" Height="20px" 
                                Width="136px" ReadOnly="True" ></asp:TextBox></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 154px">
							<asp:Button id="Button1" runat="server" Width="149px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" Text="Save Changes" onclick="Button1_Click"></asp:Button></TD>
						<TD>
							<asp:Button id="Button2" runat="server" Width="134px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" Text="Back" OnClick="Button2_Click"></asp:Button></TD>
					</TR>
				</TABLE>
</asp:Content>


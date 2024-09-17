<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="companyregdetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <asp:datagrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 180px; TOP: 88px"
				runat="server" BorderColor="Black" BorderStyle="Groove" Width="260px" AutoGenerateColumns="False"
				HorizontalAlign="Center" GridLines="Horizontal" CellPadding="3" 
        BorderWidth="1px" AllowPaging="True"
				PageSize="3" BackColor="White" onpageindexchanged="DataGrid1_PageIndexChanged">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
				<EditItemStyle BackColor="White"></EditItemStyle>
				<AlternatingItemStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" ForeColor="Black" BackColor="#EFEFEF"></AlternatingItemStyle>
				<ItemStyle ForeColor="#000066"></ItemStyle>
				<HeaderStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" ForeColor="White" BackColor="#4282B5"></HeaderStyle>
				<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="company_name" HeaderText="Company Name"></asp:BoundColumn>
					<asp:TemplateColumn HeaderText="website">
						<ItemTemplate>
							<asp:HyperLink id="HyperLink1" runat="server" Font-Bold="True" NavigateUrl='<%#DataBinder.Eval(Container.DataItem,"company_email")%>'>
								<%#DataBinder.Eval(Container.DataItem,"comapny_website_link")%>
							</asp:HyperLink>
						</ItemTemplate>
					</asp:TemplateColumn>
									</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
			</asp:datagrid>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manage_leading.aspx.cs" Inherits="manage_leading" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>管理带班表</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>管理带班表</h2>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SFEngineeringConnectionString %>" DeleteCommand="DELETE FROM [Leading] WHERE [Tno] = @Tno AND [ClassNo] = @ClassNo" InsertCommand="INSERT INTO [Leading] ([Tno], [ClassNo]) VALUES (@Tno, @ClassNo)" SelectCommand="SELECT * FROM [Leading]">
        <DeleteParameters>
            <asp:Parameter Name="Tno" Type="String" />
            <asp:Parameter Name="ClassNo" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Tno" Type="String" />
            <asp:Parameter Name="ClassNo" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Tno,ClassNo" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Tno" HeaderText="Tno" ReadOnly="True" SortExpression="Tno" />
            <asp:BoundField DataField="ClassNo" HeaderText="ClassNo" ReadOnly="True" SortExpression="ClassNo" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manage_course.aspx.cs" Inherits="manage_course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>管理课程表</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>管理课程表</h2>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SFEngineeringConnectionString %>" DeleteCommand="DELETE FROM [Course] WHERE [Cno] = @Cno" InsertCommand="INSERT INTO [Course] ([Cno], [CName]) VALUES (@Cno, @CName)" SelectCommand="SELECT * FROM [Course]" UpdateCommand="UPDATE [Course] SET [CName] = @CName WHERE [Cno] = @Cno">
        <DeleteParameters>
            <asp:Parameter Name="Cno" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Cno" Type="String" />
            <asp:Parameter Name="CName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CName" Type="String" />
            <asp:Parameter Name="Cno" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Cno" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Cno" HeaderText="Cno" ReadOnly="True" SortExpression="Cno" />
            <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>


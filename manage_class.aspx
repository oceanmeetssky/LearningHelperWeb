<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manage_class.aspx.cs" Inherits="manage_class" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>管理课程班级表</title>
    <link href="css/manage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>管理课程班级表</h2>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SFEngineeringConnectionString %>" DeleteCommand="DELETE FROM [Class] WHERE [ClassNo] = @ClassNo" InsertCommand="INSERT INTO [Class] ([ClassNo], [Cno], [ClassName]) VALUES (@ClassNo, @Cno, @ClassName)" SelectCommand="SELECT * FROM [Class]" UpdateCommand="UPDATE [Class] SET [Cno] = @Cno, [ClassName] = @ClassName WHERE [ClassNo] = @ClassNo">
        <DeleteParameters>
            <asp:Parameter Name="ClassNo" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ClassNo" Type="String" />
            <asp:Parameter Name="Cno" Type="String" />
            <asp:Parameter Name="ClassName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Cno" Type="String" />
            <asp:Parameter Name="ClassName" Type="String" />
            <asp:Parameter Name="ClassNo" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ClassNo" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="ClassNo" HeaderText="ClassNo" ReadOnly="True" SortExpression="ClassNo" />
            <asp:BoundField DataField="Cno" HeaderText="Cno" SortExpression="Cno" />
            <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manage_teacher.aspx.cs" Inherits="manage_teacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>管理教师表</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>管理教师表</h2>
    <asp:SqlDataSource  ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SFEngineeringConnectionString %>" DeleteCommand="DELETE FROM [Teacher] WHERE [Tno] = @Tno" InsertCommand="INSERT INTO [Teacher] ([Tno], [TName], [Title], [MobilePhone], [Email]) VALUES (@Tno, @TName, @Title, @MobilePhone, @Email)" SelectCommand="SELECT * FROM [Teacher]" UpdateCommand="UPDATE [Teacher] SET [TName] = @TName, [Title] = @Title, [MobilePhone] = @MobilePhone, [Email] = @Email WHERE [Tno] = @Tno">
        <DeleteParameters>
            <asp:Parameter Name="Tno" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Tno" Type="String" />
            <asp:Parameter Name="TName" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="MobilePhone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TName" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="MobilePhone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Tno" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView class="widesttable" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Tno" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="Tno" HeaderText="Tno" ReadOnly="True" SortExpression="Tno" />
            <asp:BoundField DataField="TName" HeaderText="TName" SortExpression="TName" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="MobilePhone" HeaderText="MobilePhone" SortExpression="MobilePhone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    </asp:Content>


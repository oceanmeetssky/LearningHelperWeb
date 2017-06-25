<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manage_student.aspx.cs" Inherits="manage_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>管理学生表</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>管理学生表</h2>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SFEngineeringConnectionString %>" DeleteCommand="DELETE FROM [Student] WHERE [Sno] = @Sno" InsertCommand="INSERT INTO [Student] ([Sno], [SName], [ClassNo], [Ssex], [SBirthday]) VALUES (@Sno, @SName, @ClassNo, @Ssex, @SBirthday)" SelectCommand="SELECT * FROM [Student]" UpdateCommand="UPDATE [Student] SET [SName] = @SName, [ClassNo] = @ClassNo, [Ssex] = @Ssex, [SBirthday] = @SBirthday WHERE [Sno] = @Sno">
        <DeleteParameters>
            <asp:Parameter Name="Sno" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Sno" Type="String" />
            <asp:Parameter Name="SName" Type="String" />
            <asp:Parameter Name="ClassNo" Type="String" />
            <asp:Parameter Name="Ssex" Type="String" />
            <asp:Parameter Name="SBirthday" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SName" Type="String" />
            <asp:Parameter Name="ClassNo" Type="String" />
            <asp:Parameter Name="Ssex" Type="String" />
            <asp:Parameter Name="SBirthday" Type="String" />
            <asp:Parameter Name="Sno" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView class="widertable" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Sno" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Sno" HeaderText="Sno" ReadOnly="True" SortExpression="Sno" />
            <asp:BoundField DataField="SName" HeaderText="SName" SortExpression="SName" />
            <asp:BoundField DataField="ClassNo" HeaderText="ClassNo" SortExpression="ClassNo" />
            <asp:BoundField DataField="Ssex" HeaderText="Ssex" SortExpression="Ssex" />
            <asp:BoundField DataField="SBirthday" HeaderText="SBirthday" SortExpression="SBirthday" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>


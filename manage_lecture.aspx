<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manage_lecture.aspx.cs" Inherits="manage_lecture" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>管理授课表</h2>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SFEngineeringConnectionString %>" SelectCommand="SELECT * FROM [Lecture]" DeleteCommand="DELETE FROM [Lecture] WHERE [Tno] = @Tno AND [Cno] = @Cno" InsertCommand="INSERT INTO [Lecture] ([Tno], [Cno]) VALUES (@Tno, @Cno)">
        <DeleteParameters>
            <asp:Parameter Name="Tno" Type="String" />
            <asp:Parameter Name="Cno" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Tno" Type="String" />
            <asp:Parameter Name="Cno" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Tno,Cno" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Tno" HeaderText="Tno" ReadOnly="True" SortExpression="Tno" />
            <asp:BoundField DataField="Cno" HeaderText="Cno" ReadOnly="True" SortExpression="Cno" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>


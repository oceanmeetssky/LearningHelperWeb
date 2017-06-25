<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="manage_belonging.aspx.cs" Inherits="manage_belonging" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>管理学生归属表</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>管理学生归属表</h2>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SFEngineeringConnectionString %>" DeleteCommand="DELETE FROM [Belonging] WHERE [Sno] = @Sno AND [ClassNo] = @ClassNo" InsertCommand="INSERT INTO [Belonging] ([Sno], [ClassNo]) VALUES (@Sno, @ClassNo)" SelectCommand="SELECT * FROM [Belonging]">
            <DeleteParameters>
                <asp:Parameter Name="Sno" Type="String" />
                <asp:Parameter Name="ClassNo" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Sno" Type="String" />
                <asp:Parameter Name="ClassNo" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:GridView class="gridview" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Sno,ClassNo" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Sno" HeaderText="Sno" ReadOnly="True" SortExpression="Sno" />
                <asp:BoundField DataField="ClassNo" HeaderText="ClassNo" ReadOnly="True" SortExpression="ClassNo" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
</asp:Content>


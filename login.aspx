<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>登录</title>
    <link href="css/login.css" rel="stylesheet" />
    <link rel="icon" href="img/middle-school.png" />
</head>
<body>
    <div class="wrapper">
        <div class="container">
            <img src="img/school.png" />
            <h1>上海师范大学欢迎您</h1>
            <form id="form1" runat="server">
                <asp:TextBox placeholder="username" ID="TextBox1" runat="server"></asp:TextBox>
               <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="请输入用户名" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="用户名为10位工号" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>--%>
                <asp:TextBox placeholder="password" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="请输入密码" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>--%>
                <asp:Button ID="Button1" runat="server" Text="login" OnClick="Button1_Click" />
            </form>
        </div>
        <ul class="bg-bubbles">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="welcome.aspx.cs" Inherits="welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>数据库管理</title>
    <link href="css/welcome.css" rel="stylesheet" type="text/css" />
    <link rel="icon" href="img/middle-school.png" />
</head>
<body>
    <div class="wrapper">
        <div id="manage">
            <div id="left">
                <h3>管理数据库</h3>
                <ul>
                    <li><a href="manage_belonging.aspx">学生归属表</a></li>
                    <li><a href="manage_class.aspx">课程班级表</a></li>
                    <li><a href="manage_course.aspx">课程表</a></li>
                    <li><a href="manage_leading.aspx">带班表</a></li>
                    <li><a href="manage_lecture.aspx">授课表</a></li>
                    <li><a href="manage_student.aspx">学生表</a></li>
                    <li><a href="manage_teacher.aspx">教师表</a></li>
                </ul>
            </div>
            <div id="right">
                <h3>excel快捷导入</h3>
                <ul>
                    <li><a href="init_belonging.aspx">学生归属表</a></li>
                    <li><a href="init_class.aspx">课程班级表</a></li>
                    <li><a href="init_course.aspx">课程表</a></li>
                    <li><a href="init_leading.aspx">带班表</a></li>
                    <li><a href="init_lecture.aspx">授课表</a></li>
                    <li><a href="init_student.aspx">学生表</a></li>
                    <li><a href="init_teacher.aspx">教师表</a></li>
                </ul>

            </div>
        </div>
        
    </div>
</body>
</html>

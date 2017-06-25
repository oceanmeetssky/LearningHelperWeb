<%@ Page Language="C#" AutoEventWireup="true" CodeFile="init_teacher.aspx.cs" Inherits="init_teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>导入教师表</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/nav_init.css" rel="stylesheet" />
    <link rel="icon" href="img/middle-school.png" />
</head>
<body>
    <div id="wrapper">
        <div class="overlay"></div>

        <!-- Sidebar -->
        <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
            <ul class="nav sidebar-nav">
                <li class="sidebar-brand">
                    <a href="welcome.aspx">管理 & 导入</a>
                </li>
                <li>
                    <a href="manage_belonging.aspx"><i class="fa fa-fw "></i>管理学生归属表</a>
                </li>
                <li>
                    <a href="manage_class.aspx"><i class="fa fa-fw "></i>管理课程班级表</a>
                </li>
                <li>
                    <a href="manage_course.aspx"><i class="fa fa-fw "></i>管理课程表</a>
                </li>
                <li>
                    <a href="manage_leading.aspx"><i class="fa fa-fw "></i>管理带班表</a>
                </li>
                <li>
                    <a href="manage_lecture.aspx"><i class="fa fa-fw "></i>管理授课表</a>
                </li>
                <li>
                    <a href="manage_student.aspx"><i class="fa fa-fw "></i>管理学生表</a>
                </li>
                <li>
                    <a href="manage_teacher.aspx"><i class="fa fa-fw "></i>管理教师表</a>
                </li>
                <li>
                    <a href="init_belonging.aspx"><i class="fa fa-fw "></i>导入学生归属表</a>
                </li>
                <li>
                    <a href="init_class.aspx"><i class="fa fa-fw "></i>导入课程班级表</a>
                </li>
                <li>
                    <a href="init_course.aspx"><i class="fa fa-fw "></i>导入课程表</a>
                </li>
                <li>
                    <a href="init_leading.aspx"><i class="fa fa-fw "></i>导入带班表</a>
                </li>
                <li>
                    <a href="init_lecture.aspx"><i class="fa fa-fw "></i>导入授课表</a>
                </li>
                <li>
                    <a href="init_student.aspx"><i class="fa fa-fw "></i>导入学生表</a>
                </li>
                <li>
                    <a href="init_teacher.aspx"><i class="fa fa-fw "></i>导入教师表</a>
                </li>
            </ul>
        </nav>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <button type="button" class="hamburger is-closed animated fadeInLeft" data-toggle="offcanvas">
                <span class="hamb-top"></span>
                <span class="hamb-middle"></span>
                <span class="hamb-bottom"></span>
            </button>
            <div class="container">

                <div class="col-lg-8 col-lg-offset-2" id="my_content_style">
                    <h2>导入教师表</h2>
                    <form id="form1" runat="server">
                        <div class="center">
                            <p>请上传一个excel文件，以导入Teacher表信息</p>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            <asp:Button ID="Button1" runat="server" Text="导入" OnClick="Button1_Click" />
                            <%--<p></p>
                            <p>新导入内容如下</p>--%>
                        </div>
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                    </form>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var trigger = $('.hamburger'),
                overlay = $('.overlay'),
               isClosed = false;

            trigger.click(function () {
                hamburger_cross();
            });

            function hamburger_cross() {

                if (isClosed == true) {
                    overlay.hide();
                    trigger.removeClass('is-open');
                    trigger.addClass('is-closed');
                    isClosed = false;
                } else {
                    overlay.show();
                    trigger.removeClass('is-closed');
                    trigger.addClass('is-open');
                    isClosed = true;
                }
            }

            $('[data-toggle="offcanvas"]').click(function () {
                $('#wrapper').toggleClass('toggled');
            });
        });
    </script>
</body>
</html>


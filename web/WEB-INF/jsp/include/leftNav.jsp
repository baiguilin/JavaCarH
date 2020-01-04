<%--
  Created by IntelliJ IDEA.
  User: guichun
  Date: 2019/12/16
  Time: 9:29 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--左侧导航开始-->
<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="nav-close"><i class="fa fa-times-circle"></i>
    </div>
    <div class="sidebar-collapse">
        <ul class="nav" id="side-menu">
            <li class="nav-header">
                <div class="dropdown profile-element">
                    <span><img alt="image" class="img-circle" src="${jc}/H+/img/profile_small.jpg"/></span>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                               <span class="block m-t-xs"><strong class="font-bold">GuiChun</strong></span>
                                <span class="text-muted text-xs block">超级管理员<b class="caret"></b></span>
                                </span>
                    </a>
                    <ul class="dropdown-menu animated fadeInRight m-t-xs">
                        <li><a class="J_menuItem" href="form_avatar.html">修改头像</a>
                        </li>
                        <li><a class="J_menuItem" href="profile.html">个人资料</a>
                        </li>
                        <li><a class="J_menuItem" href="contacts.html">联系我们</a>
                        </li>
                        <li><a class="J_menuItem" href="mailbox.html">信箱</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html">安全退出</a>
                        </li>
                    </ul>
                </div>
                <div class="logo-element">H+
                </div>
            </li>
            <li>
                <a href="#">
                    <i class="fa fa fa-bar-chart-o"></i>
                    <span class="nav-label">汽车维修</span>
                    <span class="fa arrow"></span>
                </a>
                <ul class="nav nav-second-level">
                    <li>
                        <a class="J_menuItem" href="car.html">汽车</a>
                    </li>
                    <li>
                        <a class="J_menuItem" href="indexv.html">Flot</a>
                    </li>
                </ul>
            </li>


            <li>
                <a href="#"><i class="fa fa-desktop"></i> <span class="nav-label">库存数据</span><span
                        class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li><a class="J_menuItem" href="contacts.html">联系人</a>
                    </li>
                    <li><a class="J_menuItem" href="profile.html">个人资料</a>
                    </li>
                    <li>
                        <a href="#">项目管理 <span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li><a class="J_menuItem" href="projects.html">项目</a>
                            </li>
                            <li><a class="J_menuItem" href="project_detail.html">项目详情</a>
                            </li>
                        </ul>
                    </li>
                    <li><a class="J_menuItem" href="teams_board.html">团队管理</a>
                    </li>
                    <li><a class="J_menuItem" href="social_feed.html">信息流</a>
                    </li>
                    <li><a class="J_menuItem" href="clients.html">客户管理</a>
                    </li>
                    <li><a class="J_menuItem" href="file_manager.html">文件管理器</a>
                    </li>
                    <li><a class="J_menuItem" href="calendar.html">日历</a>
                    </li>
                    <li>
                        <a href="#">博客 <span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li><a class="J_menuItem" href="blog.html">文章列表</a>
                            </li>
                            <li><a class="J_menuItem" href="article.html">文章详情</a>
                            </li>
                        </ul>
                    </li>
                    <li><a class="J_menuItem" href="faq.html">FAQ</a>
                    </li>
                    <li>
                        <a href="#">时间轴 <span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li><a class="J_menuItem" href="timeline.html">时间轴</a>
                            </li>
                            <li><a class="J_menuItem" href="timeline_v2.html">时间轴v2</a>
                            </li>
                        </ul>
                    </li>
                    <li><a class="J_menuItem" href="pin_board.html">标签墙</a>
                    </li>
                    <li>
                        <a href="#">单据 <span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li><a class="J_menuItem" href="invoice.html">单据</a>
                            </li>
                            <li><a class="J_menuItem" href="invoice_print.html">单据打印</a>
                            </li>
                        </ul>
                    </li>
                    <li><a class="J_menuItem" href="search_results.html">搜索结果</a>
                    </li>
                    <li><a class="J_menuItem" href="forum_main.html">论坛</a>
                    </li>
                    <li>
                        <a href="#">即时通讯 <span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li><a class="J_menuItem" href="chat_view.html">聊天窗口</a>
                            </li>
                            <li><a class="J_menuItem" href="webim.html">layIM</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">登录注册相关 <span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li><a href="login.html" target="_blank">登录页面</a>
                            </li>
                            <li><a href="login_v2.html" target="_blank">登录页面v2</a>
                            </li>
                            <li><a href="register.html" target="_blank">注册页面</a>
                            </li>
                            <li><a href="lockscreen.html" target="_blank">登录超时</a>
                            </li>
                        </ul>
                    </li>
                    <li><a class="J_menuItem" href="404.html">404页面</a>
                    </li>
                    <li><a class="J_menuItem" href="500.html">500页面</a>
                    </li>
                    <li><a class="J_menuItem" href="empty_page.html">空白页</a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="#"><i class="fa fa-cutlery"></i> <span class="nav-label">基础数据</span><span
                        class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li><a class="J_menuItem" href="form_builder.html">表单构建器</a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</nav>

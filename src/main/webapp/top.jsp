<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<nav class="gtco-nav" role="navigation">
    <div class="gtco-container">

        <div class="row">
            <div class="col-sm-4 col-xs-12">
                <div id="gtco-logo"><a href="index.jsp">首页 <em>.</em></a></div>
            </div>
            <div class="col-xs-8 text-right menu-1">
                <ul>
                    <li><a href="booklist.jsp">所有视频</a></li>

                    <li class="has-dropdown">
                        <a href="#">推荐</a>
                        <ul class="dropdown">
                            <li><a href="recommend.jsp?type=军事">美女</a></li>
                            <li><a href="recommend.jsp?type=科幻">实用</a></li>
                            <li><a href="recommend.jsp?type=科幻">美食</a></li>

                        </ul>
                    </li>

                    <li><a href="about.jsp">关于</a></li>
                    <c:if test="${sessionScope.user==null}">
                        <li class="btn-cta"><a href="index.jsp" data-toggle="modal"
                                               data-target="#login-modal"><span>登录</span></a></li>
                    </c:if>
                    <c:if test="${sessionScope.user!=null}">
                        <li class="btn-cta"><a href="${pageContext.request.contextPath}/userinfo.jsp"><span>个人信息</span></a>
                        </li>
                        <li class="btn-cta"><a href="${pageContext.request.contextPath}/UserinfoController/removeLogin"><span>退出登录</span></a>
                        </li>
                    </c:if>
                </ul>
            </div>
        </div>

    </div>
</nav>

<div class="modal fade" id="login-modal" tabindex="-1" data-remote="${pageContext.request.contextPath}/login-form.jsp">
    <div class="modal-dialog ">
        <div class="modal-content">

        </div>
    </div>

</div>
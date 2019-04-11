<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: G
  Date: 2018/1/24
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"  %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<div class="modal-header">
    <button class="close" data-dismiss="modal">&times;</button>
    <h4><a id="goReg" href="javascript:">登录</a></h4>
</div>
<div class="modal-body">
    <form role="form" action="" method="post" id="log">
        <div class="form-group">
            <label for="username">用户名</label>
            <input class="form-control" id="username" name="username">
        </div>
        <div class="form-group">
            <label for="password">密码</label>
            <input type="password" id="password" class="form-control" id="password" name="password">
        </div>
        <div class="modal-footer">
            <input type="button" id="sbmt" class="btn btn-primary" value="登录">
        </div>
    </form>
</div>


<script type="text/javascript">
    $(function () {
        login();
    })

    function login() {

        $("#sbmt").click(function () {
            $.ajax({

                url: "${pageContext.request.contextPath}/UserinfoController/login",
                type: "post",
                data: {stydynumber: $("#username").val(), password: $("#password").val()},
                dataType: "json",
                success: function (result) {

                    if (result.successful) {

                        alert(result.msg);
                        location.reload();

                    } else {
                        alert(result.msg);
                    }
                }


            });


        })
    }

</script>
</body>
</html>
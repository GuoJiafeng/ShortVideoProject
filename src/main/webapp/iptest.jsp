<%--
  Created by IntelliJ IDEA.
  User: G
  Date: 2018/8/14
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>



</head>
<body>



<div id="nowip"></div>
</body>
<script src="js/jquery.min.js"></script>
<script src="http://pv.sohu.com/cityjson?ie=utf-8"></script>
<script type="text/javascript">
    $(function () {

      $("#nowip").html(returnCitySN.cip)
    })


</script>
</html>

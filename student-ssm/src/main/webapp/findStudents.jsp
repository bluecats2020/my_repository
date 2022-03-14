<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
    <script type="text/javascript" src="static/js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function (){
            $.ajax({
                url:"student/findStudents",
                success:function (resp){
                    $.each(resp,function (i,n){
                        $("#info").append("<tr>")
                        .append("<td>" + n.id + "</td>")
                        .append("<td>" + n.name + "</td>")
                        .append("<td>" + n.age + "</td>")
                        .append("</tr>")
                    })
            }})
        })
    </script>
</head>
<body>
    <table border="1" align="center" cellpadding="2" cellspacing="2">
        <thead align="center">
        <tr>
            <td>学号</td>
            <td>姓名</td>
            <td>年龄</td>
        </tr>
        </thead>
        <tbody id="info" align="center">

        </tbody>
    </table>
</body>
</html>
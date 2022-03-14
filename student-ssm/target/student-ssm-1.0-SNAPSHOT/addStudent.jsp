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
</head>
<body>
    <div align="center">
        学生注册页面
        <form action="student/addStudent" method="post">
            <table border="1">
                <tr>
                    <td>姓名</td>
                    <td>
                        <input type="text" name="name"/>
                    </td>
                </tr>
                <tr>
                    <td>年龄</td>
                    <td>
                        <input type="text" name="age"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="提交"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
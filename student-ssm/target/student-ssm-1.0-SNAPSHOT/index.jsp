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
        学生管理系统首页<br>
        <img src="static/images/v5.jpg"/>
        <table>
            <tr>
                <td><a href="addStudent.jsp">学生注册</a></td>
            </tr>
            <tr>
                <td><a href="findStudents.jsp">学生查询</a> </td>
            </tr>
            <%--<tr>
                <td><a href="student/testStudent">test</a></td>
            </tr>--%>
        </table>
    </div>
</body>
</html>
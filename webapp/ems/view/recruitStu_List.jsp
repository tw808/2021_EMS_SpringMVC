<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@taglib prefix="s" uri="https://cn.bing.com" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <title>recruitStu</title>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" href="ems/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="ems/jquery/jquery-1.8.3.min.js"></script>
    <script src="ems/bootstrap/js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $('.close').click(function () {
                $(".alert1").remove();
            });
        });

    </script>
</head>

<body>
<div style="padding: 0px; margin:0px;">
    <ul class="breadcrumb" style="padding: 0px; margin:0px;padding-left: 20px;">
        <li><span class="menu-text">Student Management</span></li>
        <li>Student Recruit Management</li>
    </ul>
</div>
<div class="row alert alert-info" style="margin:0px;padding:5px;">
    <form action="/recruitStu/list.do" method="post" class="form-horizontal">
        <div class="col-sm-1">Name:</div>
        <div class="col-sm-3">
            <input type="text" name="stuName" class="form-control input-sm"/>
        </div>
        <div class="col-sm-1">Status:</div>
        <div class="col-sm-3">
            <s:select type="stu_status" name="stuStatus" selectedId="${studentInfo.stuStatus}"></s:select>
        </div>
        <input type="submit" class="btn btn-danger " value="Search"/>
        <input type="button" class="btn btn-success" value="Add" onclick=
                "javascript:window.location='ems/view/recruitStu_Add.jsp'"/>
    </form>
</div>
<div class="alert1 " style="margin: 0px;padding: 5px;
display: ${empty info?'none':'block'}">
    <button type="button" class="close" aria-hidden="true">
        &times;
    </button>
    ${info}
</div>
<div class="row" style="padding:0px;padding-left: 15px;padding-right: 15px;" align="right">
    <display:table class="table table-condensed table-striped" name="list"
                   pagesize="10" requestURI="/recruitStu/list.do">
        <display:column property="stuId" title="Id"/>
        <display:column href="/recruitStu/show.do" property="stuName" title="Name"
                        paramId="stuId" paramProperty="stuId"/>
        <display:column property="stuSex" title="Gender"/>
        <display:column property="stuAge" title="Age"/>
        <display:column property="stuPhone" title="Cell"/>
        <display:column property="stuEmail" title="Email"/>
        <display:column property="stuSchool" title="School"/>
        <display:column href="/recruitStu/load.do?stuId=${studentInfo.stuId}"
                        paramId="stuId" paramProperty="stuId" value="edit" title="edit"/>
        <display:column href="/recruitStu/register.do?stuId=${studentInfo.stuId}"
                        paramId="stuId" paramProperty="stuId" value="register" title="register"/>
        <display:column href="/recruitStu/delete.do?stuId=${studentInfo.stuId}"
                        paramId="stuId" paramProperty="stuId" value="delete" title="delete"/>
    </display:table>
</div>
</body>
</html>

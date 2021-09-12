<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <title>template</title>
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
<title>Title</title>
</head>
<body>
<div style="padding: 0px; margin:0px;">
    <ul class="breadcrumb" style="padding: 0px; margin:0px;padding-left: 20px;">
        <li><span class="menu-text">Student Management</span></li>
        <li>Evaluation Management</li>
    </ul>
</div>
<div class="row alert alert-info" style="margin:0px;padding:5px;">
    <form action="/eval/list.do" method="post" class="form-horizontal">

    <div class="col-sm-1">Student:</div>
    <div class="col-sm-3">
        <input type="text" name="stuName" class="form-control input-sm"/>
    </div>
    <input type="submit" class="btn btn-danger " value="Search"/>
    <input type="button" class="btn btn-success" value="Add" onclick=
            "javascript:window.location='/eval/loadAdd.do'"/>
    </form>
</div>


<div class="alert1 " style="margin: 0px;padding: 5px;
display: ${empty info?'none':'block'}">
    <button type="button" class="close" aria-hidden="true">
        &times;
    </button>
    ${info}
</div>
<div class="row" style="padding:0px; padding-left: 15px; padding-right: 0px ;">
    <div class="row" style="padding:0px;padding-left: 15px;padding-right: 15px;" align="right">
        <display:table class="table table-condensed table-striped" name="list"
                       pagesize="10" requestURI="/classroom/list.do">
            <display:column property="evalId" title="Id"/>
            <display:column property="stuName" title="Student"/>
            <display:column property="evalTitle" title="Title"/>
            <display:column property="evalContent" title="Evaluation"/>
            <display:column property="evalCourse" title="Class"/>
            <display:column property="evalTeacher" title="Teacher"/>
            <display:column property="evalTime" format="{0,date,yyyy-MM-dd}" title="Date"/>
            <display:column href="/eval/load.do?evalId=${evaluation.evalId}"
                            paramId="evalId" paramProperty="evalId" value="edit" title="edit"/>
            <display:column href="/eval/delete.do?evalId=${evaluation.evalId}"
                            paramId="evalId" paramProperty="evalId" value="delete" title="delete"/>
        </display:table>
    </div>

</div>
</body>
</html>
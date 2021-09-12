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
        <li><span class="menu-text">Class Management</span></li>
        <li>Class Info Management</li>
    </ul>
</div>
<div class="row alert alert-info" style="margin:0px;padding:5px;">
    <form action="/classInfo/list.do" method="post" class="form-horizontal">
    <div class="col-sm-1">Class:</div>
    <div class="col-sm-3">
        <input type="text" name="className" class="form-control input-sm"/>
    </div>
    <input type="submit" class="btn btn-danger " value="Search"/>
    <input type="button" class="btn btn-success" value="Add" onclick=
            "javascript:window.location='/classInfo/loadAdd.do'"/>
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
                       pagesize="10" requestURI="/classInfo/list.do">
            <display:column property="classId" title="Id"/>
            <display:column property="className" title="Name"/>
            <display:column property="classNum" title="Class Size"/>
            <display:column property="classStart" format="{0,date,yyyy-MM-dd}" title="Start"/>
            <display:column property="classEnd" format="{0,date,yyyy-MM-dd}" title="End"/>
            <display:column href="/classInfo/load.do?classId=${classInfo.classId}"
                            paramId="classId" paramProperty="classId" value="edit" title="edit"/>
            <display:column href="/classInfo/delete.do?classId=${classInfo.classId}"
                            paramId="classId" paramProperty="classId" value="delete" title="delete"/>
        </display:table>
    </div>

</div>
</body>
</html>
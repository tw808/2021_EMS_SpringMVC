<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <title>staffinfo</title>
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

        function query(condition) {
            $("#keyword").attr("name", condition.value);
        }
    </script>
</head>
<body>
<div style="padding: 0px; margin:0px;">
    <ul class="breadcrumb" style="padding: 0px; margin:0px;padding-left: 20px;">
        <li><span class="menu-text">System Management</span></li>
        <li>Staff Role Management</li>
    </ul>
</div>
<div class="row alert alert-info" style="margin:0px;padding:5px;">
    <form action="/roleinfo/rlist.do" method="post" class="form-horizontal">
        <div class="col-sm-1">Search</div>
        <div class="col-sm-3">
            <select onchange="query(this)" name="condition" class="form-control input-sm">
                <option value="">please choose</option>
                <option value="staffId">Staff Id</option>
                <option value="staffName">Name</option>
            </select>
        </div>
        <div class="col-sm-3">
            <input type="text" id="keyword" class="form-control input-sm"/>
        </div>
        <input type="submit" class="btn btn-danger " value="Search"/>
        <input type="button" class="btn btn-success" value="Add" onclick=
                "javascript:window.location='ems/view/staffinfo_add.jsp'"/>
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
    <display:table class="table table-condensed table-striped" name="srlist"
                   pagesize="10" requestURI="/roleinfo/rlist.do">
        <display:column property="staffId" title="Staff Id"/>
        <display:column property="staffName" title="Name"/>
        <display:column property="staffStatus" title="Staff Status"/>
        <display:column property="roleName" title="Role Name"/>
        <display:column href="/roleinfo/loadchange.do"
                        paramId="staffId" paramProperty="staffId" value="edit" title="role edit"/>
    </display:table>
</div>
</body>
</html>
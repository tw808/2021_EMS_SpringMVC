<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <title>role</title>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" href="ems/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="ems/jquery/jquery-1.8.3.min.js"></script>
    <script src="ems/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div style="padding: 0px; margin:0px;">
    <ul class="breadcrumb" style="padding: 0px; margin:0px;padding-left: 20px;">
        <li><span class="menu-text">System Management</span></li>
        <li>Staff Role Management</li>
        <li>Edit Staff Role</li>
    </ul>
</div>
<form action="/roleinfo/rupdate.do" class="form-horizontal">
    <input type="hidden" name="staffId" value="${staffInfo.staffId}">
    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Basic Information</h5>

    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Id</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${staffInfo.staffId}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Name</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${staffInfo.staffName}</p>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label ">Status</label>
                <div class="col-sm-5">
                    <select name="staffStatus" class="form-control input-sm">
                        <option  value="1" ${staffInfo.staffStatus=='1'?'selected':''}>regular</option>
                        <option  value="2" ${staffInfo.staffStatus=='2'?'selected':''}>teacher</option>
                    </select></div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label ">Role Id</label>
                <div class="col-sm-5">
                    <select name="roleId" class="form-control input-sm">
                        <option value="">choose</option>
                        <c:forEach items="${rlist}" var="role">
                            <option value="${role.roleId}" ${staffInfo.roleId==role.roleId?'selected':''}>
                                ${role.roleName}</option>
                        </c:forEach>
                    </select></div>
            </div>
        </div>
    </div>

    <!--submit-->
    <div class="row">
        <div class="col-sm-5 col-sm-offset-4">
            <input type="submit" class="btn btn-success" value="update"/>
            <input type="reset" class="btn btn-danger" value="reset"/>
            <a href="/roleinfo/rlist.do" class="btn btn-warning">back</a>
        </div>
    </div>
</form>
</body>
</html>
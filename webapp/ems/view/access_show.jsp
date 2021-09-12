<%@ page import="com.ems1.po.AccessInfo" %>
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
    <title>access</title>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" href="ems/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="ems/dtree/dtree.css" rel="stylesheet">
    <script src="ems/jquery/jquery-1.8.3.min.js"></script>
    <script src="ems/bootstrap/js/bootstrap.min.js"></script>
    <script src="ems/dtree/dtree.js"></script>
    <head>
        <meta charset="UTF-8">
        <title>access</title>
    </head>

<body>

<div style="padding: 0px; margin:0px;">
    <ul class="breadcrumb" style="padding: 0px; margin:0px;padding-left: 20px;">
        <li>Display Access Information</li>
    </ul>
</div>
<form action="/access/loadAdd.do?accessId=${acc.accessId}" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Basic Information</h5>

    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Access Id</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${acc.accessId}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Access Name</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${acc.accessName}</p>
                </div>
            </div>
        </div>
    </div>

    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label ">Level Up</label>
                <div class="col-sm-5">
                    <p class="form-control-static">${acc.accessPname}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Access URL</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${acc.accessUrl}</p>
                </div>
            </div>
        </div>
    </div>

    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Additional Information</h5>
    <div class="row">
        <div class="col-sm-10">
            <div class="form-group">
                <label class="col-sm-3 control-label">Access Description</label>
                <div class="col-sm-8">
                    <p class="form-control-static">${acc.accessDesc}</p>
                </div>
            </div>
        </div>
    </div>
    <!--submit-->
    <div class="row">
        <div class="col-sm-8 col-sm-offset-4">
            <a href="/access/loadAdd.do" class="btn btn-success">add access</a>
            <%
                AccessInfo a = (AccessInfo) request.getAttribute("acc");
                if (a != null && a.getAccessId() != 0) {
            %>
            <a href="/access/loadUpdate.do?accessId=${acc.accessId}" class="btn btn-info">edit access</a>
            <%}%>
            <a href="/access/delete.do?accessId=${acc.accessId}" class="btn btn-danger">delete access</a>
        </div>
    </div>
</form>
</body>
</html>
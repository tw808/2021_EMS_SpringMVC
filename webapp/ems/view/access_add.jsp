<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <li>Add Access Information</li>
    </ul>
</div>
<form action="/access/add.do" method="post" class="form-horizontal">
    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Basic Information</h5>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Access Id</label>
                <div class="col-sm-6">
                    <input type="text" name="accessId"  class="form-control input-sm"
                           placeholder="enter access id"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Access Name</label>
                <div class="col-sm-6">
                    <input type="text" name="accessName" class="form-control input-sm"
                           placeholder="enter access name"/>
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
                    <select  name="accessPid" class="form-control input-sm">
                        <c:forEach items="${alist}" var="list">
                            <option value="${list.accessId}">
                                    ${list.accessName}
                            </option>
                        </c:forEach>
                    </select></div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Access URL</label>
                <div class="col-sm-6">
                    <input type="text" name="accessUrl" class="form-control input-sm"
                           placeholder="enter access"/>
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
                    <textarea name="accessDesc" class="form-control input-sm"
                              placeholder="enter description"></textarea>
                </div>
            </div>
        </div>
    </div>
    <!--submit-->
    <div class="row">
        <div class="col-sm-5 col-sm-offset-4">
            <input type="submit" class="btn btn-success" value="submit"/>
            <input type="reset" class="btn btn-danger" value="reset"/>
        </div>
    </div>
</form>
</body>
</html>
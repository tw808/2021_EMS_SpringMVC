<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
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
</head>

<body>
<div style="padding: 0px; margin:0px;">
    <ul class="breadcrumb" style="padding: 0px; margin:0px;padding-left: 20px;">
        <li><span class="menu-text">Marketing Management</span></li>
        <li>Email & IM Management</li>
    </ul>
</div>
<form action="" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Basic Information</h5>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Sender</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${einfo.staffName}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Send Time</label>
                <div class="col-sm-6">
                    <p class="form-control-static">
                        <fmt:formatDate value="${einfo.emSendTime}" type="both" pattern="yyyy-MM-dd"/>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Receiver</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${einfo.emReceiver}</p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Receiver Email</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${einfo.emReceiverEm}</p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Title</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${einfo.emTitle}</p>
                </div>
            </div>
        </div>
    </div>
    <!--end-->
    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Additional Information</h5>
    <div class="row">
        <div class="col-sm-10">
            <div class="form-group">
                <label class="col-sm-3 control-label">Content</label>
                <div class="col-sm-8">
                    <p class="form-control-static">${einfo.emMsg}</p>
                </div>
            </div>
        </div>
    </div>
    <!--submit-->
    <div class="row">
        <div class="col-sm-5 col-sm-offset-4">
            <a href="/em/list.do" class="btn btn-warning">back</a>

        </div>
    </div>
</form>
</body>
</html>

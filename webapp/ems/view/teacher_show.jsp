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
    <title>staffinfo</title>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" href="ems/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="ems/jquery/jquery-1.8.3.min.js"></script>
    <script src="ems/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div style="padding: 0px; margin:0px;">
    <ul class="breadcrumb" style="padding: 0px; margin:0px;padding-left: 20px;">
        <li><span class="menu-text">Class Management</span></li>
        <li>Teacher Management</li>
        <li>Display Teacher</li>
    </ul>
</div>
<form action="" class="form-horizontal">

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
                <label class="col-sm-5 control-label">Age</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${staffInfo.staffAge}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Gender</label>
                <div class="col-sm-5">
                    <p class="form-control-static">${staffInfo.staffSex}</p>

                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Country</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${staffInfo.staffCountry}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Id Number</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${staffInfo.staffIdNum}</p>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Birth Date</label>
                <div class="col-sm-6">
                    <p class="form-control-static">
                        <fmt:formatDate value="${staffInfo.staffBday}" type="both" pattern="yyyy-MM-dd"/></p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Work Phone</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${staffInfo.staffPhone}</p>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Email</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${staffInfo.staffEmail}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Cell Phone</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${staffInfo.staffCell}</p>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Address</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${staffInfo.staffAddress}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Instant Message</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${staffInfo.staffIm}</p>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Start Date</label>
                <div class="col-sm-6">
                    <p class="form-control-static">
                        <fmt:formatDate value="${staffInfo.staffStart}" type="both" pattern="yyyy-MM-dd"/>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label ">Education</label>
                <div class="col-sm-5">
                    <p class="form-control-static">${staffInfo.staffEdu}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label ">Status</label>
                <div class="col-sm-5">
                    <p class="form-control-static">${staffInfo.staffStatus}</p>
                </div>
            </div>
        </div>
    </div>
    <!--end-->
    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Additional Information</h5>
    <div class="row">
        <div class="col-sm-10">
            <div class="form-group">
                <label class="col-sm-3 control-label">Information</label>
                <div class="col-sm-8">
                    <p class="form-control-static">${staffInfo.staffAbout}</p>
                </div>
            </div>
        </div>
    </div>
    <!--end-->

    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Account Information</h5>
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Account Id</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${staffInfo.userNum}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Password</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${staffInfo.userPwd}</p>
                </div>
            </div>
        </div>
    </div>
    <!--submit-->
    <div class="row">
        <div class="col-sm-5 col-sm-offset-4">
            <a href="/teacher/load.do?staffId=${staffInfo.staffId}" class="btn btn-success">update</a>
            <a href="/teacher/list.do" class="btn btn-warning">back</a>
        </div>
    </div>
</form>
</body>
</html>
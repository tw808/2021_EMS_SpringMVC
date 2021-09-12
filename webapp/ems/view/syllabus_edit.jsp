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
</head>
<title>Title</title>
</head>
<body>
<div style="padding: 0px; margin:0px;">
    <ul class="breadcrumb" style="padding: 0px; margin:0px;padding-left: 20px;">
        <li><span class="menu-text">Class Management</span></li>
        <li>Syllabus Management</li>
    </ul>
</div>
<form action="/syllabus/update.do"  method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Basic Information</h5>

    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Id</label>
                <div class="col-sm-6">
                    <input type="text" name="syllId" value="${syllabus.syllId}"
                           class="form-control input-sm" placeholder="enter id"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Class Name</label>
                <div class="col-sm-6">
                    <input type="text" name="syllName"value="${syllabus.syllName}"
                           class="form-control input-sm" placeholder="enter name"/>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-7">
            <div class="form-group">
                <label class="col-sm-5 control-label">Monday</label>
                <div class="col-sm-7">
                    <input type="text" name="syllMon" value="${syllabus.syllMon}"
                           class="form-control input-sm" placeholder="enter "/>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-7">
            <div class="form-group">
                <label class="col-sm-5 control-label">Tuesday</label>
                <div class="col-sm-7">
                    <input type="text" name="syllTue" value="${syllabus.syllTue}"
                           class="form-control input-sm" placeholder="enter "/>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-7">
            <div class="form-group">
                <label class="col-sm-5 control-label">Wednesday</label>
                <div class="col-sm-7">
                    <input type="text" name="syllWed" value="${syllabus.syllWed}"
                           class="form-control input-sm" placeholder="enter "/>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-7">
            <div class="form-group">
                <label class="col-sm-5 control-label">Thursday</label>
                <div class="col-sm-7">
                    <input type="text" name="syllThur" value="${syllabus.syllThur}"
                           class="form-control input-sm" placeholder="enter "/>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-7">
            <div class="form-group">
                <label class="col-sm-5 control-label">Friday</label>
                <div class="col-sm-7">
                    <input type="text" name="syllFri" value="${syllabus.syllFri}"
                           class="form-control input-sm" placeholder="enter "/>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-7">
            <div class="form-group">
                <label class="col-sm-5 control-label">Saturday</label>
                <div class="col-sm-7">
                    <input type="text" name="syllSat" value="${syllabus.syllSat}"
                           class="form-control input-sm" placeholder="enter "/>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-7">
            <div class="form-group">
                <label class="col-sm-5 control-label">Sunday</label>
                <div class="col-sm-7">
                    <input type="text" name="syllSun" value="${syllabus.syllSun}"
                           class="form-control input-sm" placeholder="enter "/>
                </div>
            </div>
        </div>
    </div>

    <!--submit-->
    <div class="row">
        <div class="col-sm-5 col-sm-offset-4">
            <input type="submit" class="btn btn-success" value="submit"/>
            <input type="reset" class="btn btn-danger" value="reset"/>
            <a href="/syllabus/list.do" class="btn btn-warning">back</a>

        </div>
    </div>
</form>
</body>
</html>
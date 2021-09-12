<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="s" uri="https://cn.bing.com" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script type="text/javascript" src="ems/My97DatePicker/WdatePicker.js"></script>
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
<form action="/classInfo/add.do" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Basic Information</h5>

    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Id</label>
                <div class="col-sm-6">
                    <input type="text" name="classId" class="form-control input-sm" placeholder="enter id"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Name</label>
                <div class="col-sm-6">
                    <input type="text" name="className" class="form-control input-sm" placeholder="enter name"/>
                </div>
            </div>
        </div>
    </div>

    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Start Time</label>
                <div class="col-sm-6">
                    <input type="text" name="classStart" onClick="WdatePicker()" value="2000-01-01"
                           readonly="readonly" class="Wdate form-control input-sm"
                           placeholder="enter date"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">End Time</label>
                <div class="col-sm-6">
                    <input type="text" name="classEnd" onClick="WdatePicker()" value="2000-01-01"
                           readonly="readonly" class="Wdate form-control input-sm"
                           placeholder="enter date"/>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Size</label>
                <div class="col-sm-6">
                    <input type="text" name="classNum" class="form-control input-sm" placeholder="enter"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Teacher</label>
                <div class="col-sm-6">
                    <select name="staffId" class="form-control input-sm">
                        <c:forEach items="${sList}" var="staff">
                            <option value="${staff.staffId}">${staff.staffName}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label ">Discipline</label>
                <div class="col-sm-5">
                    <select name="discId" class="form-control input-sm">
                        <c:forEach items="${dList}" var="discipline">
                            <option value="${discipline.discId}">${discipline.discName}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label ">Syllabus</label>
                <div class="col-sm-5">
                    <select name="syllId" class="form-control input-sm">
                        <c:forEach items="${syList}" var="syllabus">
                            <option value="${syllabus.syllId}">${syllabus.syllName}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label ">Classroom</label>
                <div class="col-sm-5">
                    <select name="classroomId" class="form-control input-sm">
                        <c:forEach items="${cList}" var="classroom">
                            <option value="${classroom.classroomId}">${classroom.classroomName}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
        </div>
    </div>
    <!--end-->
    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Additional
        Information</h5>
    <div class="row">
        <div class="col-sm-10">
            <div class="form-group">
                <label class="col-sm-3 control-label">Information</label>
                <div class="col-sm-8">
                    <textarea class="form-control input-sm" name="classDesc" placeholder="enter information"></textarea>
                </div>
            </div>
        </div>
    </div>

    <!--submit-->
    <div class="row">
        <div class="col-sm-5 col-sm-offset-4">
            <input type="submit" class="btn btn-success" value="submit"/>
            <input type="reset" class="btn btn-danger" value="reset"/>
            <a href="/classInfo/list.do" class="btn btn-warning">back</a>

        </div>
    </div>
</form>
</body>
</html>
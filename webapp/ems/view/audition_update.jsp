<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@taglib prefix="s" uri="https://cn.bing.com" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <title>audition</title>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" href="ems/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="ems/jquery/jquery-1.8.3.min.js"></script>
    <script src="ems/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="ems/My97DatePicker/WdatePicker.js"></script>
</head>

<body>
<div style="padding: 0px; margin:0px;">
    <ul class="breadcrumb" style="padding: 0px; margin:0px;padding-left: 20px;">
        <li><span class="menu-text">Student Management</span></li>
        <li>Student Recruit Management</li>
        <li>Audition Management</li>
    </ul>
</div>
<form action="/audition/update.do" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Basic Information</h5>

    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Id</label>
                <div class="col-sm-6">
                    <input type="text" readonly="readonly" name="audId" value="${audInfo.audId}"
                           class="form-control input-sm" placeholder="enter id"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Audit Class</label>
                <div class="col-sm-6">
                    <input type="text" name="audCourse" value="${audInfo.audCourse}"
                           class="form-control input-sm" placeholder="enter class"/>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">

        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label ">Student</label>
                <div class="col-sm-5">
                    <select name="stuId" class="form-control input-sm" value="${audInfo.stuName}">
                        <c:forEach items="${list}" var="stu">
                            <option value="${stu.stuId}">${stu.stuName}</option>
                        </c:forEach>
                    </select></div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Audit Time</label>
                <div class="col-sm-6">
                    <input type="text" name="audTime" onClick="WdatePicker()"
                           value="<fmt:formatDate value="${audInfo.audTime}" type="both" pattern="yyyy-MM-dd"/>"
                           readonly="readonly" class="Wdate form-control input-sm" placeholder="enter date"/>


                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">

        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label ">Location</label>
                <div class="col-sm-6">
                    <input type="text" name="audAddr" value="${audInfo.audAddr}" class="form-control input-sm" placeholder="enter location"/>
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
                    <textarea class="form-control input-sm"  name="audDesc" placeholder="enter information">
                        ${audInfo.audDesc}
                    </textarea>
                </div>
            </div>
        </div>
    </div>

    <!--submit-->
    <div class="row">
        <div class="col-sm-5 col-sm-offset-4">
            <input type="submit" class="btn btn-success" value="submit"/>
            <input type="reset" class="btn btn-danger" value="reset"/>
            <a href="/audition/list.do" class="btn btn-warning">back</a>

        </div>
    </div>
</form>
</body>
</html>
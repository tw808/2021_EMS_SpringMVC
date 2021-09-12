<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@taglib prefix="s" uri="https://cn.bing.com" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <title>trackRec</title>
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
        <li>Tracking Management</li>
    </ul>
</div>
<form action="/track/add.do" method="post" class="form-horizontal">
    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Basic Information</h5>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Id</label>
                <div class="col-sm-6">
                    <input type="text" name="trackRecId" readonly="readonly"
                           class="form-control input-sm" placeholder="enter id"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Title</label>
                <div class="col-sm-6">
                    <input type="text" name="trackRecTitle"
                           class="form-control input-sm" placeholder="enter title"/>
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
                    <select name="stuId" class="form-control input-sm">
                        <c:forEach items="${list}" var="stu">
                            <option value="${stu.stuId}">${stu.stuName}</option>
                        </c:forEach>
                    </select></div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Contact Time</label>
                <div class="col-sm-6">
                    <input type="text" name="trackRecTime" onClick="WdatePicker()" value="2000-01-01"
                           readonly="readonly" class="Wdate form-control input-sm" placeholder="enter date"/>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label ">Next Contact</label>
                <div class="col-sm-5">
                    <input type="text" name="nextRecTime" onClick="WdatePicker()" value="2000-01-01"
                           readonly="readonly" class="Wdate form-control input-sm" placeholder="enter date"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Student</label>
                <div class="col-sm-6">
                    <s:select type="stu_status" id="dataInfo" name="trackRecEnroll"></s:select>

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
                    <textarea class="form-control input-sm"
                              name="trackRecContent" placeholder="enter information"></textarea>
                </div>
            </div>
        </div>
    </div>
    <!--submit-->
    <div class="row">
        <div class="col-sm-5 col-sm-offset-4">
            <input type="submit" class="btn btn-success" value="submit"/>
            <input type="reset" class="btn btn-danger" value="reset"/>
            <a href="/track/list.do" class="btn btn-warning">back</a>
        </div>
    </div>
</form>
</body>
</html>
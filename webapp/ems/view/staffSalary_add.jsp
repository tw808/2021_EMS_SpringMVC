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
        <li><span class="menu-text">Finance Management</span></li>
        <li>Staff Salary Management</li>
    </ul>
</div>

<form action="/salary/add.do" method="post" class="form-horizontal">
    <!--<-->
    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Payment Information</h5>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Id</label>
                <div class="col-sm-6">
                    <input type="text" name="staffSalId" readonly="readonly" class="form-control input-sm" placeholder="enter "/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Paid</label>
                <div class="col-sm-6">
                    <input type="text" name="paid" class="form-control input-sm" placeholder="enter "/>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Manager</label>
                <div class="col-sm-6">

                <select name="staStaffId" class="form-control input-sm">
                    <c:forEach items="${sList}" var="staff1">
                        <option value="${staff1.staffId}">${staff1.staffName}</option>
                    </c:forEach>
                </select>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Staff</label>
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
                <label class="col-sm-5 control-label">Gross</label>
                <div class="col-sm-6">
                    <input type="text" name="totalSal" class="form-control input-sm" placeholder="enter "/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Deduction</label>
                <div class="col-sm-6">
                    <input type="text" name="deductSal" class="form-control input-sm" placeholder="enter "/>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Net</label>
                <div class="col-sm-6">
                    <input type="text" name="realSal" class="form-control input-sm" placeholder="enter "/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Net</label>
                <div class="col-sm-6">
                    <input type="text" name="staffSalTime" onClick="WdatePicker()" value="2000-01-01"
                           readonly="readonly" class="Wdate form-control input-sm"
                           placeholder="enter date"/>
                </div>
            </div>
        </div>
    </div>
    <!--end-->

    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Additional
        Comment</h5>
    <div class="row">
        <div class="col-sm-10">
            <div class="form-group">
                <label class="col-sm-3 control-label">Comment</label>
                <div class="col-sm-8">
                    <textarea class="form-control input-sm" name="staffSalRemark"
                              placeholder="enter Content"></textarea>
                </div>
            </div>
        </div>
    </div>
    <!--submit-->
    <div class="row">
        <div class="col-sm-5 col-sm-offset-4">
            <input type="submit" class="btn btn-success" value="submit"/>
            <input type="reset" class="btn btn-danger" value="reset"/>
            <a href="/salary/list.do" class="btn btn-warning">back</a>

        </div>
    </div>
</form>
</body>
</html>
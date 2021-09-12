<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="https://cn.bing.com" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <title>recruitStu</title>
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
    </ul>
</div>
<form action="/recruitStu/add.do" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Basic Information</h5>

    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Id</label>
                <div class="col-sm-6">
                    <input type="text" name="stuId" class="form-control input-sm" placeholder="enter id"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Name</label>
                <div class="col-sm-6">
                    <input type="text" name="stuName" class="form-control input-sm" placeholder="enter name"/>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">

        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label ">Gender</label>
                <div class="col-sm-5">
                    <select name="stuSex" class="form-control input-sm">
                        <option>secret</option>
                        <option>female</option>
                        <option>male</option>
                    </select></div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Age</label>
                <div class="col-sm-6">
                    <input type="text" name="stuAge" class="form-control input-sm" placeholder="enter age"/>
                </div>
            </div>
        </div>
    </div>

    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Phone</label>
                <div class="col-sm-6">
                    <input type="text" name="stuPhone" class="form-control input-sm" placeholder="enter phone number"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Email</label>
                <div class="col-sm-6">
                    <input type="text" name="stuEmail" class="form-control input-sm" placeholder="enter email"/>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Id Card #</label>
                <div class="col-sm-6">
                    <input type="text" name="stuIdNum" class="form-control input-sm" placeholder="enter id card #"/>
                </div>
            </div>
        </div>

        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Address</label>
                <div class="col-sm-6">
                    <input type="text" name="stuAddress" class="form-control input-sm" placeholder="enter address"/>
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
                    <input type="text" name="stuBday" onClick="WdatePicker()" value="2000-01-01"
                           readonly="readonly" class="Wdate form-control input-sm" placeholder="enter birthday date"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">School</label>
                <div class="col-sm-6">
                    <input type="text" name="stuSchool" class="form-control input-sm" placeholder="enter school"/>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Instant Message</label>
                <div class="col-sm-6">
                    <input type="text" name="stuIm" class="form-control input-sm"
                           placeholder="enter instant message name"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Parent Name</label>
                <div class="col-sm-6">
                    <input type="text" name="stuParent" class="form-control input-sm" placeholder="enter parent name"/>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Province</label>
                <div class="col-sm-6">
                    <input type="text" name="stuProvince" class="form-control input-sm" placeholder="enter province"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Parent Cell</label>
                <div class="col-sm-6">
                    <input type="text" name="stuParentPhone" class="form-control input-sm" placeholder="enter cell "/>
                </div>
            </div>
        </div>
    </div>

    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">City</label>
                <div class="col-sm-6">
                    <input type="text" name="stuCity" class="form-control input-sm" placeholder="enter city"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label ">Status</label>
                <div class="col-sm-5">
                    <s:select type="stu_status" id="dataInfo" name="stuStatus"></s:select>
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
                    <textarea name="stuDesc" class="form-control input-sm" placeholder="enter information"></textarea>
                </div>
            </div>
        </div>
    </div>

    <!--submit-->
    <div class="row">
        <div class="col-sm-5 col-sm-offset-4">
            <input type="submit" class="btn btn-success" value="submit"/>
            <input type="reset" class="btn btn-danger" value="reset"/>
            <a href="/recruitStu/list.do" class="btn btn-warning">back</a>

        </div>
    </div>
</form>
</body>
</html>

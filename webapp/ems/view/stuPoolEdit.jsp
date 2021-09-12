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
    <title>stuPool</title>
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
        <li>Student Pool Management</li>
    </ul>
</div>
<form action="/stuPool/update.do" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Basic Information</h5>

    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Id</label>
                <div class="col-sm-6">
                    <input type="text" name="stuId" value="${studentInfo.stuId}" class="form-control input-sm" placeholder="enter id"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Name</label>
                <div class="col-sm-6">
                    <input type="text" name="stuName" value="${studentInfo.stuName}" class="form-control input-sm" placeholder="enter name"/>
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
                        <option>choose</option>
                        <option ${studentInfo.stuSex=='female'?'selected':''}>female</option>
                        <option ${studentInfo.stuSex=='male'?'selected':''}>male</option>
                    </select></div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Age</label>
                <div class="col-sm-6">
                    <input type="text" name="stuAge"   value="${studentInfo.stuAge}"  class="form-control input-sm" placeholder="enter age"/>
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
                    <input type="text" name="stuPhone"  value="${studentInfo.stuPhone}"  class="form-control input-sm" placeholder="enter phone number"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Email</label>
                <div class="col-sm-6">
                    <input type="text" name="stuEmail"   value="${studentInfo.stuEmail}"  class="form-control input-sm" placeholder="enter email"/>
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
                    <input type="text" name="stuIdNum"  value="${studentInfo.stuIdNum}"  class="form-control input-sm" placeholder="enter id card #"/>
                </div>
            </div>
        </div>

        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Address</label>
                <div class="col-sm-6">
                    <input type="text" name="stuAddress"   value="${studentInfo.stuAddress}"  class="form-control input-sm" placeholder="enter address"/>
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

                    <input  type="text" name="stuBday" value="<fmt:formatDate value="${studentInfo.stuBday}" type="both" pattern="yyyy-MM-dd"/>"
                            onClick="WdatePicker()"  readonly="readonly"  class="Wdate form-control input-sm"
                            placeholder="enter birth date"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">School</label>
                <div class="col-sm-6">
                    <input type="text"  value="${studentInfo.stuSchool}"  name="stuSchool" class="form-control input-sm" placeholder="enter school"/>
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
                    <input type="text" name="stuIm"  value="${studentInfo.stuIm}"  class="form-control input-sm"
                           placeholder="enter instant message name"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Parent Name</label>
                <div class="col-sm-6">
                    <input type="text" name="stuParent" value="${studentInfo.stuParent}"   class="form-control input-sm" placeholder="enter parent name"/>
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
                    <input type="text" name="stuProvince" value="${studentInfo.stuProvince}"   class="form-control input-sm" placeholder="enter province"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Parent Cell</label>
                <div class="col-sm-6">
                    <input type="text" name="stuParentPhone" value="${studentInfo.stuParentPhone}"   class="form-control input-sm" placeholder="enter cell "/>
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
                    <input type="text" name="stuCity"  value="${studentInfo.stuCity}"  class="form-control input-sm" placeholder="enter city"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label ">Status</label>
                <div class="col-sm-5">
                    <s:select type="stu_status" name="stuStatus" selectedId="${studentInfo.stuStatus}"></s:select>
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
                    <textarea name="stuDesc" class="form-control input-sm"
                              placeholder="enter information">${studentInfo.stuDesc} </textarea>
                </div>
            </div>
        </div>
    </div>

    <!--submit-->
    <div class="row">
        <div class="col-sm-5 col-sm-offset-4">
            <input type="submit" class="btn btn-success" value="submit"/>
            <input type="reset" class="btn btn-danger" value="reset"/>
            <a href="/stuPool/list.do" class="btn btn-warning">back</a>

        </div>
    </div>
</form>
</body>
</html>

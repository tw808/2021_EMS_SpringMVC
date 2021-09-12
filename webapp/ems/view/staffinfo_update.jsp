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
    <script type="text/javascript" src="ems/My97DatePicker/WdatePicker.js"></script>
</head>

<body>
<div style="padding: 0px; margin:0px;">
    <ul class="breadcrumb" style="padding: 0px; margin:0px;padding-left: 20px;">
        <li><span class="menu-text">System Management</span></li>
        <li>Staff Management</li>
        <li>Update Staff</li>
    </ul>
</div>
<form action="/system/update.do" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Basic Information</h5>

    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Id</label>
                <div class="col-sm-6">
                    <input type="text" name="staffId" value="${staffInfo.staffId}"
                           class="form-control input-sm" placeholder="enter id"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Name</label>
                <div class="col-sm-6">
                    <input type="text" name="staffName" value="${staffInfo.staffName}"
                           class="form-control input-sm" placeholder="enter name"/>
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
                    <input type="text" name="staffAge" value="${staffInfo.staffAge}"
                           class="form-control input-sm" placeholder="enter age"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label ">Gender</label>
                <div class="col-sm-5">
                    <select name="staffSex" class="form-control input-sm">
                        <option>choose</option>
                        <option ${staffInfo.staffSex=='female'?'selected':''}>female</option>
                        <option ${staffInfo.staffSex=='male'?'selected':''}>male</option>
                    </select></div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Country</label>
                <div class="col-sm-6">
                    <input type="text" name="staffCountry" value="${staffInfo.staffCountry}"
                           class="form-control input-sm" placeholder="enter country"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Id Number</label>
                <div class="col-sm-6">
                    <input type="text" name="staffIdNum" value="${staffInfo.staffIdNum}"
                           class="form-control input-sm" placeholder="enter id number"/>
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
                    <input  type="text" name="staffBday" value="<fmt:formatDate value="${staffInfo.staffBday}" type="both" pattern="yyyy-MM-dd"/>"
                            onClick="WdatePicker()"  readonly="readonly"  class="Wdate form-control input-sm"
                            placeholder="enter birth date"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Work Phone</label>
                <div class="col-sm-6">
                    <input type="text" name="staffPhone" value="${staffInfo.staffPhone}"
                           class="form-control input-sm" placeholder="enter work phone number"/>
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
                    <input type="text" name="staffEmail" value="${staffInfo.staffEmail}"
                           class="form-control input-sm" placeholder="enter email"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Cell Phone</label>
                <div class="col-sm-6">
                    <input type="text" name="staffCell" value="${staffInfo.staffCell}"
                           class="form-control input-sm" placeholder="enter cell phone number"/>
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
                    <input type="text"name="staffAddress" value="${staffInfo.staffAddress}"
                           class="form-control input-sm" placeholder="enter address"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Instant Message</label>
                <div class="col-sm-6">
                    <input type="text"name="staffIm" value="${staffInfo.staffIm}"
                           class="form-control input-sm" placeholder="enter im id"/>
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
                    <input type="text" name="staffBday"  value="<fmt:formatDate value="${staffInfo.staffStart}" type="both" pattern="yyyy-MM-dd"/>"
                    onClick="WdatePicker()"  readonly="readonly"  class="Wdate form-control input-sm"
                           placeholder="enter start date"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label ">Education</label>
                <div class="col-sm-5">
                    <select name="staffEdu" class="form-control input-sm">
                        <option>secret</option>
                        <option ${staffInfo.staffEdu=='PhD'?'selected':''}>PhD</option>
                        <option ${staffInfo.staffEdu=='Master'?'selected':''}>Master</option>
                        <option ${staffInfo.staffEdu=='Bachelor'?'selected':''}>Bachelor</option>
                    </select></div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label ">Status</label>
                <div class="col-sm-5">
                    <select name="staffStatus" class="form-control input-sm">
                        <option  value="1" ${staffInfo.staffStatus=='1'?'selected':''}>regular</option>
                        <option  value="2" ${staffInfo.staffStatus=='2'?'selected':''}>teacher</option>
                    </select></div>
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
                    <textarea name="staffAbout" class="form-control input-sm"
                              placeholder="enter information">${staffInfo.staffAbout}
                    </textarea>
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
                    <input type="text" name="userNum" value="${staffInfo.userNum}"
                           class="form-control input-sm" placeholder="enter account id"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Password</label>
                <div class="col-sm-6">
                    <input type="text" name="userPwd" value="${staffInfo.userPwd}"
                           class="form-control input-sm" placeholder="enter account password"/>
                </div>
            </div>
        </div>
    </div>
    <!--submit-->
    <div class="row">
        <div class="col-sm-5 col-sm-offset-4">
            <input type="submit" class="btn btn-success" value="update"/>
            <input type="reset" class="btn btn-danger" value="reset"/>
            <a href="/system/list.do" class="btn btn-warning">back</a>

        </div>
    </div>
</form>
</body>
</html>
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
        <li><span class="menu-text">Finance Management</span></li>
        <li>Student Payment Management</li>
    </ul>
</div>

<form action="/stuPay/add.do" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Basic Information</h5>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Id</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${studentInfo.stuId}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Name</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${studentInfo.stuName}</p>
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
                    <p class="form-control-static">${studentInfo.stuSex}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Age</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${studentInfo.stuAge}</p>
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
                    <p class="form-control-static">${studentInfo.stuPhone}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Email</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${studentInfo.stuEmail}</p>
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
                    <p class="form-control-static">${studentInfo.stuIdNum}</p>
                </div>
            </div>
        </div>

        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Address</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${studentInfo.stuAddress}</p>
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
                        <fmt:formatDate value="${studentInfo.stuBday}" type="both" pattern="yyyy-MM-dd"/>
                    </p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">School</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${studentInfo.stuSchool}</p>
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
                    <p class="form-control-static">${studentInfo.stuIm}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Parent Name</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${studentInfo.stuParent}</p>
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
                    <p class="form-control-static">${studentInfo.stuProvince}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Parent Cell</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${studentInfo.stuParentPhone}</p>
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
                    <p class="form-control-static">${studentInfo.stuCity}</p>
                </div>
            </div>
        </div>
    </div>

    <!--<-->

    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Payment Information</h5>
    <!--row-->
    <input type="hidden" name="payI" readonly="readonly">
    <input type="hidden" name="stuId" value="${studentInfo.stuId}">
    <input type="hidden" name="staffId" value="${staff.staffId}">
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Status</label>
                <div class="col-sm-6">
                    <input type="text" name="paySitu" class="form-control input-sm" placeholder="enter "/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Method</label>
                <div class="col-sm-6">
                    <input type="text" name="payMethod" class="form-control input-sm" placeholder="enter "/>

                </div>
            </div>
        </div>
    </div>

    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Date</label>
                <div class="col-sm-6">
                    <input type="text" name="payTime" onClick="WdatePicker()" value="2000-01-01"
                           readonly="readonly" class="Wdate form-control input-sm"
                           placeholder="enter date"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Full Amount</label>
                <div class="col-sm-6">
                    <input type="text" name="originalAmount" class="form-control input-sm" placeholder="enter "/>

                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Discount Amount</label>
                <div class="col-sm-6">
                    <input type="text" name="discountAmount" class="form-control input-sm" placeholder="enter "/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Paid Amount</label>
                <div class="col-sm-6">
                    <input type="text" name="paidAmount" class="form-control input-sm" placeholder="enter "/>
                </div>
            </div>
        </div>
    </div>
    <!--end-->
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Debt Amount</label>
                <div class="col-sm-6">
                    <input type="text" name="debtAmount" class="form-control input-sm" placeholder="enter "/>
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
                    <textarea  name="payRemark" class="form-control input-sm" placeholder="enter Content"></textarea>
                </div>
            </div>
        </div>
    </div>
    <!--submit-->
    <div class="row">
        <div class="col-sm-5 col-sm-offset-4">
            <input type="submit" class="btn btn-success" value="submit"/>
            <input type="reset" class="btn btn-danger" value="reset"/>
            <a href="/stuInfo/list.do" class="btn btn-warning">back</a>

        </div>
    </div>
</form>



</body>
</html>
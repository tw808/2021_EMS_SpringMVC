<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <title>main</title>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" href="ems/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="ems/jquery/jquery-1.8.3.min.js"></script>
    <script src="ems/bootstrap/js/bootstrap.min.js"></script>
    <script src="ems/highcharts/highcharts.js"></script>

</head>
<body>
<div style="padding:0px;margin:0px;">
    <ul class="breadcrumb" style="padding: 0px; margin:0px;padding-left: 20px;">
        <li><span class="menu-text">Start</span></li>
        <li>Work Station</li>
    </ul>
</div>
<div id="container" style="width: 550px; height: 400px; margin: 0 auto"></div>
<input type="hidden" name="reportInfo" id="reportInfo" value="${reportInfo}"/>
<%--<div>${reportInfo.studentStatusList}</div>--%>
<%--<c:forEach items="${reportInfo.studentStatusList}" var="c">--%>
<%--    <div>${c.total}</div>--%>
<%--    <div>${c.data_info}</div>--%>
<%--</c:forEach>--%>

<script language="JavaScript">
    $(document).ready(function () {
            let wholeList = document.getElementById("reportInfo").value;
            wholeList = wholeList.replace("ReportInfo", "");
            wholeList = wholeList.replace("studentStatusList=", "");
            wholeList = wholeList.replace("{[", "");
            wholeList = wholeList.replace("]}", "");
            let re = /,\s/; // split on  comma space
            let ar = wholeList.split(re);
            let total = 0;
            let x = 0;
            for (let i = 0; i < ar.length; i++) {
                let dataInfo = ar[i];
                dataInfo = dataInfo.replace("data_info=", "");
                dataInfo = dataInfo.replace("total=", "");
                dataInfo = dataInfo.replace("{", "");
                dataInfo = dataInfo.replace("}", "");
                if (i % 2 === 0) {
                    ar[i] = dataInfo;
                    x++;
                } else {
                    let temp = parseFloat(dataInfo)
                    ar[i] = temp;
                    total += temp;
                }
            }
            console.log(ar
            );

            let arr = new Array(x); // create an empty array of length x
            let c=0;
            for (let i = 0; i < x; i++) {
                arr[i] = new Array(2); // make each element an array
                arr[i][0]=ar[c];
                c++;
                let temp=parseFloat(ar[c]/total*100).toFixed(2)
                arr[i][1]=parseFloat(temp);
                c++;
            }

            console.log(arr);


            let chart = {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false
            };
            let title = {
                text: 'Student Status'
            };
            let tooltip = {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            };
            let plotOptions = {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: true,
                        format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                        style: {
                            color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                        }
                    }
                }
            };
            let series = [{
                type: 'pie',
                name: 'stuStatusReport',
                data: arr,
            }];
//        //
//        series: [{
//            name: '直播流量',
//            data: yLiveFlow，
//        //
            let json = {};
            json.chart = chart;
            json.title = title;
            json.tooltip = tooltip;
            json.series = series;
            json.plotOptions = plotOptions;
            $('#container').highcharts(json);
        }
    );
</script>


<form action="" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Basic Information</h5>

    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Id</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${staff.staffId}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Name</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${staff.staffName}</p>
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
                    <p class="form-control-static">${staff.staffCountry}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Id Number</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${staff.staffIdNum}</p>
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
                    <p class="form-control-static">${staff.staffEmail}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Cell Phone</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${staff.staffCell}</p>
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
                    <p class="form-control-static">${staff.staffAddress}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Instant Message</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${staff.staffIm}</p>
                </div>
            </div>
        </div>
    </div>
    <!--row-->
    <div class="row">

        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label ">Status</label>
                <div class="col-sm-5">
                    <p class="form-control-static">${staff.staffStatus}</p>
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
                    <p class="form-control-static">${staff.userNum}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Password</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${staff.userPwd}</p>
                </div>
            </div>
        </div>
    </div>

</form>
</body>
</html>


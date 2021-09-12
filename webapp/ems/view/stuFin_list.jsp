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
    <script>
        $(function () {
            $('.close').click(function () {
                $(".alert1").remove();
            });
        });

    </script>
</head>
<title>Title</title>
</head>
<body>
<div style="padding: 0px; margin:0px;">
    <ul class="breadcrumb" style="padding: 0px; margin:0px;padding-left: 20px;">
        <li><span class="menu-text">Finance Management</span></li>
        <li>Student Payment Management</li>
    </ul>
</div>
<div class="row alert alert-info" style="margin:0px;padding:5px;">
    <form action="/stuInfo/list.do" method="post" class="form-horizontal">

    <div class="col-sm-1">Name:</div>
    <div class="col-sm-3">
        <input type="text" name="stuName" class="form-control input-sm"/>
    </div>
    <input type="submit" class="btn btn-danger " value="Search"/>
    </form>
</div>

<div class="alert1 " style="margin: 0px;padding: 5px;
display: ${empty info?'none':'block'}">
    <button type="button" class="close" aria-hidden="true">
        &times;
    </button>
    ${info}
</div>

<div class="row" style="padding:0px; padding-left: 15px; padding-right: 0px ;">
    <div class="row" style="padding:0px;padding-left: 15px;padding-right: 15px;" align="right">
        <display:table class="table table-condensed table-striped" name="list"
                       pagesize="10" requestURI="/stuInfo/list.do">
            <display:column property="stuId" title="Student Id"/>
            <display:column href="/stuPay/show.do" property="stuName" title="Name"
                            paramId="stuId" paramProperty="stuId"/>
            <display:column property="stuSex" title="Gender"/>
            <display:column property="stuAge" title="Age"/>
            <display:column property="stuPhone" title="Cell"/>
            <display:column property="stuEmail" title="Email"/>
            <display:column property="stuSchool" title="School"/>
            <display:column property="stuPaid" title="Paid"/>
            <display:column href="/stuPay/loadAdd.do?stuId=${stuInfo.stuId}"
                            paramId="stuId" paramProperty="stuId" value="pay" title="pay"/>
            <display:column href="/stuInfo/pay.do?stuId=${stuInfo.stuId}"
                            paramId="stuId" paramProperty="stuId" value="paid" title="paid"/>
            <display:column href="/stuInfo/notPay.do?stuId=${stuInfo.stuId}"
                            paramId="stuId" paramProperty="stuId" value="not paid" title="not paid"/>
            <display:column href="/stuInfo/delete.do?stuId=${stuInfo.stuId}"
                            paramId="stuId" paramProperty="stuId" value="delete" title="delete"/>
        </display:table>
    </div>

</div>
</body>
</html>

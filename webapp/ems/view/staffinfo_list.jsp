<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <title>staffinfo</title>
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

        function query(condition) {
            $("#keyword").attr("name",condition.value);
        }
    </script>
</head>
<body>
<div style="padding: 0px; margin:0px;">
    <ul class="breadcrumb" style="padding: 0px; margin:0px;padding-left: 20px;">
        <li><span class="menu-text">System Management</span></li>
        <li>Staff Management</li>
    </ul>
</div>
<div class="row alert alert-info" style="margin:0px;padding:5px;">
    <form action="/system/list.do" method="post" class="form-horizontal">
        <div class="col-sm-1">Search</div>
        <div class="col-sm-3">
            <select onchange="query(this)" name="condition" class="form-control input-sm">
                <option value="">please choose</option>
                <option value="staffId">Staff Id</option>
                <option value="staffName">Name</option>
                <option value="staffCell">Cell#</option>
            </select>
        </div>
        <div class="col-sm-3">
            <input type="text" id="keyword" class="form-control input-sm"/>
        </div>
        <input type="submit" class="btn btn-danger " value="Search"/>
        <input type="button" class="btn btn-success" value="Add" onclick=
                "javascript:window.location='ems/view/staffinfo_add.jsp'"/>
    </form>
</div>
<%--confirm info--%>
<div class="alert1 " style="margin: 0px;padding: 5px;
display: ${empty info?'none':'block'}">
    <button type="button" class="close" aria-hidden="true">
        &times;
    </button>
    ${info}
</div>
<div class="row" style="padding:0px;padding-left: 15px;padding-right: 15px;" align="right">
    <display:table class="table table-condensed table-striped" name="list"
    pagesize="10" requestURI="system/list.do" >
        <display:column property="staffId" title="Staff Id"/>
        <display:column href="/system/show.do" property="staffName" title="Name"
                        paramId="staffId" paramProperty="staffId" />
        <display:column property="staffIdNum" title="Id#"/>
        <display:column property="staffBday" format="{0,date,yyyy-MM-dd}" title="DOB"/>
        <display:column property="staffPhone" title="Work#"/>
        <display:column property="staffEmail" title="Email"/>
        <display:column property="staffCell" title="Cell#"/>
        <display:column property="staffIm" title="IM"/>
        <display:column property="staffStart" format="{0,date,yyyy-MM-dd}" title="Start"/>
        <display:column href="/system/load.do?staffId=${staffInfo.staffId}"
                        paramId="staffId" paramProperty="staffId" value="edit" title="edit"/>
        <display:column href="/system/delete.do?staffId=${staffInfo.staffId}"
                        paramId="staffId" paramProperty="staffId" value="delete" title="delete"/>
    </display:table>
</div>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="s" uri="https://cn.bing.com"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <title>Activities</title>
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
        <li><span class="menu-text">Marketing Management</span></li>
        <li>Marketing Activity Management</li>
    </ul>
</div>
<div class="row alert alert-info" style="margin:0px;padding:5px;">
    <form action="/mActiv/list.do" method="post" class="form-horizontal">
        <div class="col-sm-1">Name:</div>
        <div class="col-sm-3">
            <input type="text" id="actName" name="actName" class="form-control input-sm"/>
        </div>
        <div class="col-sm-1">Status:</div>
        <div class="col-sm-3" >
            <s:select type="act_status" id="dataInfo" name="actStatus"  ></s:select>
        </div>
        <input type="submit" class="btn btn-danger " value="Search"/>
        <input type="button" class="btn btn-success" value="Add" onclick=
                "javascript:window.location='ems/view/mActiv_add.jsp'"/>    </form>
</div>
<div class="alert1 " style="margin: 0px;padding: 5px;
display: ${empty info?'none':'block'}">
    <button type="button" class="close" aria-hidden="true">
        &times;
    </button>
    ${info}
</div>
<div class="row" style="padding:0px;padding-left: 15px;padding-right: 15px;" align="right">
    <display:table class="table table-condensed table-striped" name="mList"
                   pagesize="10" requestURI="/mActiv/list.do">
        <display:column property="actId" title="Id"/>
        <display:column property="actName" title="Name"/>
        <display:column property="staffName" title="Organizer"/>
        <display:column property="actStart" format="{0,date,yyyy-MM-dd}" title="Start"/>
        <display:column property="actEnd" format="{0,date,yyyy-MM-dd}" title="End"/>
        <display:column property="dataInfo" title="Status"/>
        <display:column href="/mActiv/load.do?actId=${minfo.actId}"
                        paramId="actId" paramProperty="actId" value="edit" title="edit"/>
        <display:column href="/mActiv/delete.do?actId=${minfo.actId}"
                        paramId="actId" paramProperty="actId" value="delete" title="delete"/>
    </display:table>
</div>
</body>
</html>
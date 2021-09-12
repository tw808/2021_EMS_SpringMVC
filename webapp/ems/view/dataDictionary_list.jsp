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
    </script>
</head>
<body>
<div style="padding: 0px; margin:0px;">
    <ul class="breadcrumb" style="padding: 0px; margin:0px;padding-left: 20px;">
        <li><span class="menu-text">System Management</span></li>
        <li>Data Dictionary Management</li>
    </ul>
</div>
<div class="row alert alert-info" style="margin:0px;padding:5px;">
    <form action="/dataDictionary/list.do" method="post" class="form-horizontal">
        <div class="col-sm-1">Info:</div>
        <div class="col-sm-3">
            <input type="text" name="dataInfo" class="form-control input-sm"/>
        </div>
        <input type="submit" class="btn btn-danger " value="Search"/>
        <input type="button" class="btn btn-success" value="Add" onclick=
                "javascript:window.location='ems/view/dataDictionary_add.jsp'"/>
    </form>
</div>
<div class="alert1 " style="margin: 0px;padding: 5px;
display: ${empty info?'none':'block'}">
    <button type="button" class="close" aria-hidden="true">
        &times;
    </button>
    ${info}
</div>
<div class="row" style="padding:15px;">
    <display:table class="table table-condensed table-striped" name="list"
                   pagesize="10" requestURI="/dataDictionary/list.do">
        <display:column property="dataId" title="Data Id"/>
        <display:column property="dataInfo" title="Data Info"/>
        <display:column property="dataEngine" title="Data Engine"/>
        <display:column property="dataDiscr" title="Data Description"/>
        <display:column href="/dataDictionary/load.do?dataId=${dataDictionary.dataId}"
                        paramId="dataId" paramProperty="dataId"  value="edit" title="edit"/>
        <display:column href="/dataDictionary/delete.do?dataId=${dataDictionary.dataId}"
                        paramId="dataId" paramProperty="dataId"  value="delete" title="delete"/>
    </display:table>
</div>
</body>
</html>
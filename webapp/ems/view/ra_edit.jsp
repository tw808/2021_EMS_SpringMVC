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
    <title>role access</title>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" href="ems/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="ems/jquery/jquery-1.8.3.min.js"></script>
    <script src="ems/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $().ready(function () {
            //check all
            $("input[id=all]").click(function () {
                var allchecked = this.checked;
                var arr = $(this).parent().parent().parent().find("input");
                for (var i = 1; i < arr.length; i++) {
                    arr[i].checked = allchecked;
                }
            });
            //check parent
            $("input[id=accessId]").click(function () {
                var arr = $(this).parent().parent().parent().find("input");
                for (var i = 1; i < arr.length; i++) {
                    if (arr[i].checked) {
                        arr[0].checked = true;
                        return;
                    }
                }
                //uncheck parent
                var arr2 = $(this).parent().parent().parent().find("input[checked=true]");
                if (arr2.length == 0) {
                    arr[0].checked = false;
                }
            });

        });
    </script>
</head>
<body>
<div style="padding: 0px; margin:0px;">
    <ul class="breadcrumb" style="padding: 0px; margin:0px;padding-left: 20px;">
        <li><span class="menu-text">System Management</span></li>
        <li>Role Access Management</li>
        <li>Update Role Access</li>
    </ul>
</div>
<form action="/raChange/add.do" method="post" class="form-horizontal">
    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Basic
        Information</h5>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Role Id</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${roleInfo.roleId}</p>
                    <input type="hidden" name="roleId" value="${roleInfo.roleId}"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Role Name</label>
                <div class="col-sm-6">
                    <p class="form-control-static">${roleInfo.roleName}</p>
                </div>
            </div>
        </div>
    </div>
    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px;">Menu Information</h5>
    <div class="row" style="padding:0px; padding-left: 15px;">
        <table class="table">
            <tr>
                <th>menu Level 1</th>
                <th>menu Level 2,3...</th>
            </tr>
            <c:forEach items="${dtolist}" var="dto">
            <tr>
                <td>
                    <label class="checkbox-inline">
                        <input type="checkbox" id="all" name="accessId"
                        <c:if test="${dto.acc.checked}">
                            <c:out value="checked"></c:out>
                        </c:if>
                               value="${dto.acc.accessId}">${dto.acc.accessName}
                    </label>
                </td>
                <td>
                    <c:forEach items="${dto.list}" var="acc">
                        <label class="checkbox-inline">
                            <input type="checkbox" id="accessId" name="accessId"
                            <c:if test="${acc.checked}">
                                <c:out value="checked"></c:out>
                            </c:if>
                                   value="${acc.accessId}">${acc.accessName}
                        </label>
                    </c:forEach>
                </td>
                </c:forEach>
            </tr>
        </table>
        <!--submit-->
        <div class="row">
            <div class="col-sm-5 col-sm-offset-4">
                <input type="submit" class="btn btn-success" value="update"/>
                <input type="reset" class="btn btn-danger" value="delete"/>
                <a href="/raChange/list.do" class="btn btn-warning">back</a>
            </div>
        </div>
    </div>
</form>
</body>
</html>
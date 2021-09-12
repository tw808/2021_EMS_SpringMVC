<%@ page import="com.ems1.system.dto.AccessDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ems1.po.AccessInfo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <title>index</title>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" href="ems/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="ems/jquery/jquery-1.8.3.min.js"></script>
    <script src="ems/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript">

        window.onload = function () {
            var allSpan = document.getElementsByTagName('a');
            for (var x = 0; x < allSpan.length; x++) {
                allSpan[x].onclick = function () {
                    if (this.parentNode) {
                        var childList = this.parentNode.getElementsByTagName('li');
                        for (var y = 0; y < childList.length; y++) {
                            var currentState = childList[y].style.display;
                            if (currentState == "none") {
                                childList[y].style.display = "block";
                            } else {
                                childList[y].style.display = "none";
                            }
                        }
                    }
                }
            }
        }
        $(function () {
            $('.close').click(function () {
                $(".alert1").remove();
            });
        });
    </script>
</head>
<body>

<div class="main-content col-sm-9" id="main">
    <iframe id="mainframe" name="mainframe" src="ems/bootm.jsp"
            style="width:100%; height: 1600px; border:0px;">
    </iframe>
</div>

<div class="col-sm-3" style="padding-top:0px; padding-left: 10px;">

    <ul class="breadcrumb" style="padding: 0px; margin:0px;padding-left: 30px;">
        <li><span class="menu-text">Hi! ${staff.staffName}</span></li>
    </ul>
</div>
<!--sidebar-->
<div class="col-sm-3" style="padding-top:10px; padding-left: 30px;">

    <ul class="nav nav-list">
        <li class="active">
            <a href="ems/bootm.jsp" target="mainframe">
                <i class="glyphicon glyphicon-dashboard"></i>
                <span class="menu-text">control station</span></a>
            <a href="/out.do" target="mainframe">
                <i class="glyphicon glyphicon-log-in"></i>
                <span class="menu-text">login/out</span></a>
        </li>
        <li>
            <%
                List<AccessDTO> dtolist = (List<AccessDTO>) request.getAttribute("dtol");
                if (dtolist != null && dtolist.size() > 0) {
                    for (AccessDTO dto : dtolist) {
                        System.out.println("******" + dto.getAcc().getAccessName());
            %>
            <a href="javascript:void(0)" target="mainframe" class="dropdown-toggle">
                <i class="glyphicon glyphicon-cog"></i>
                <span class="menu-text"><%=dto.getAcc().getAccessName()%></span>
                <b class="glyphicon glyphicon-chevron-down"></b>
            </a>
            <%
                List<AccessInfo> list = dto.getList();
                if (list != null && list.size() > 0) {
                    for (AccessInfo a : list) {

            %>
            <ul class="nav nav-list">
                <li>
                    <a href="<%=a.getAccessUrl()%>" target="mainframe" style="color: seagreen">
                        <i class="glyphicon glyphicon-chevron-right"></i> <%=a.getAccessName()%>
                    </a>
                </li>
            </ul>
            <%
                            }
                        }
                    }
                }
            %>
        </li>
    </ul>
</div>
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         import="java.util.*, com.ems1.po.AccessInfo" %>
<%@ page import="javax.persistence.Access" %>
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
    <title>access</title>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" href="ems/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link type="text/css" href="ems/dtree/dtree.css" rel="stylesheet">
    <script src="ems/jquery/jquery-1.8.3.min.js"></script>
    <script src="ems/bootstrap/js/bootstrap.min.js"></script>
    <script src="ems/dtree/dtree.js"></script>
    <head>
        <meta charset="UTF-8">
        <title>access</title>
    </head>
<body>
<div style="padding: 0px; margin:0px;">
    <ul class="breadcrumb" style="padding: 0px; margin:0px;padding-left: 20px;">
        <li><span class="menu-text">System Management</span></li>
        <li>Access Management</li>
    </ul>
</div>
<div class="row">
    <div class="col-sm-3" style="padding-top:10px; padding-left: 30px;">
        <script type="text/javascript">
            var d = new dTree('d');
            <%List<AccessInfo> list=(List<AccessInfo>)request.getAttribute("alist");
            if(list!=null && list.size()>0){
                for(AccessInfo a:list){
                %>
            d.add(<%=a.getAccessId()%>,<%=a.getAccessPid()%>,'<%=a.getAccessName()%>',
            '/access/show.do?accessId=<%=a.getAccessId()%>','hint','mainframe1');
            <%}}%>
            // d.add(0, -1, 'root');
            // d.add(1, 0, 'system', '', 'hint', '');
            // d.add(2, 1, 'staff', 'ems/view/access_show.jsp', 'hint', 'mainframe1');
            // d.add(3, 1, 'role', 'ems/view/access_add.jsp', 'hint', 'mainframe1');
            // d.add(4, 1, 'staff role', 'ems/view/access_add.jsp', 'hint', 'mainframe1');
            // d.add(5, 0, 'enrollment', '', 'hint', '');
            // d.add(6, 5, 'payment ', 'ems/view/access_add.jsp', 'hint', 'mainframe1');
            document.write(d);
        </script>
    </div>
    <div class="col-sm-9">
        <iframe id="mainframe1" name="mainframe1" src="ems/view/access_add.jsp"
                style="width: 100%; border:0px;"></iframe>
        <script type="text/javascript">
            var height = jQuery(window).height() - 50;
            jQuery("#mainframe1").attr("height", height + "px");
            jQuery("#mainframe1").attr("src", "ems/view/access_show.jsp");
        </script>
    </div>
</div>
</body>
</html>


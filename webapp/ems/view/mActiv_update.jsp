<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="display" uri="http://displaytag.sf.net" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script type="text/javascript" src="ems/My97DatePicker/WdatePicker.js"></script>


</head>
<title>Title</title>
</head><body>
<div style="padding: 0px; margin:0px;">
    <ul class="breadcrumb" style="padding: 0px; margin:0px;padding-left: 20px;">
        <li><span class="menu-text">Marketing Management</span></li>
        <li>Email & IM Management</li>
    </ul>
</div>
<form action="/mActiv/edit.do" method="post" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Basic Information</h5>
    <!--row-->
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Id</label>
                <div class="col-sm-6">
                    <input  readonly="readonly" type="text" name="actId" value="${minfo.actId}" class="form-control input-sm"
                           placeholder="enter data "/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Name</label>
                <div class="col-sm-6">
                    <input type="text" name="actName" value="${minfo.actName}" class="form-control input-sm"
                    placeholder="enter data "/>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Start</label>
                <div class="col-sm-6">
                    <input  type="text" name="actStart" value="<fmt:formatDate value="${minfo.actStart}" type="both" pattern="yyyy-MM-dd"/>"
                            onClick="WdatePicker()"  readonly="readonly"  class="Wdate form-control input-sm"
                            placeholder="enter date"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Status</label>
                <div class="col-sm-6">
                        <s:select type="act_status" name="actStatus" selectedId="${minfo.actStatus}"></s:select>

                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">End</label>
                <div class="col-sm-6">
                    <input  type="text" name="actEnd" value="<fmt:formatDate value="${minfo.actEnd}" type="both" pattern="yyyy-MM-dd"/>"
                            onClick="WdatePicker()"  readonly="readonly"  class="Wdate form-control input-sm"
                            placeholder="enter date"/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Type</label>
                <div class="col-sm-6">
                        <s:select type="act_type"   name="actType" selectedId="${minfo.actType}"></s:select>

                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Quote</label>
                <div class="col-sm-6">
                    <input type="text" name="actQuote" value="${minfo.actQuote}" class="form-control input-sm"
                           placeholder="enter data "/>
                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Cost</label>
                <div class="col-sm-6">
                    <input type="text" name="actCost" value="${minfo.actCost}" class="form-control input-sm"
                           placeholder="enter data "/>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Reaction</label>
                <div class="col-sm-6">
                        <s:select type="act_react"  name="actReact" selectedId="${minfo.actReact}"></s:select>

                </div>
            </div>
        </div>
        <div class="col-sm-5">
            <div class="form-group">
                <label class="col-sm-5 control-label">Participants</label>
                <div class="col-sm-6">
                    <input type="text" name="actMem" value="${minfo.actMem}" class="form-control input-sm"
                           placeholder="enter data "/>
                </div>
            </div>
        </div>
    </div>
    <!--end-->
    <h5 class="page-header alert-info" style="padding: 10px;margin: 0px; margin-bottom: 5px">Additional Information</h5>
    <div class="row">
        <div class="col-sm-10">
            <div class="form-group">
                <label class="col-sm-3 control-label">Content</label>
                <div class="col-sm-8">
                    <textarea class="form-control input-sm" name="actDesc" placeholder="enter description">${minfo.actDesc}</textarea>
                </div>
            </div>
        </div>
    </div>
    <!--submit-->
    <div class="row">
        <div class="col-sm-5 col-sm-offset-4">
            <input type="submit" class="btn btn-success" value="submit"/>
            <input type="reset" class="btn btn-danger" value="reset"/>
            <a href="/mActiv/list.do" class="btn btn-warning">back</a>

        </div>
    </div>
</form>
</body>
</html>

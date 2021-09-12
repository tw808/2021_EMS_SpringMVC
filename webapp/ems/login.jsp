<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <title>login</title>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" href="ems/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="ems/jquery/jquery-1.8.3.min.js"></script>
    <script src="ems/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
<div style="padding:0px;margin:0px;">
    <ul class="breadcrumb" style="padding: 0px; margin:0px;padding-left: 20px;">
        <li><span class="menu-text">Start</span></li>
        <li>Login</li>
    </ul>
</div>

<div class="row alert alert-info" style="margin:0px;padding:5px;">
    <div class="col-sm-1">Login</div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <form action="/login.do" method="post" onsubmit="" role="form">
                <div class="form-group">
                    <label for="userNum">Account Id</label>
                    <input type="text" class="form-control" placeholder="enter account id"
                           id="userNum" name="userNum"/>
                </div>
                <div class="form-group">
                    <label for="userPwd">Password</label>
                    <input type="text" class="form-control" placeholder="enter account password"
                           id="userPwd" name="userPwd"/>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox"/>Remember Password
                    </label>
                    <br/>
                    <br/>
                    <input type="submit" value="Login" class="btn"/>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>

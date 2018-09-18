<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

<%
    msg = REQUEST.QueryString("msg")

    IF msg = "user-not-found" THEN
        msg = "<p class="&"error-message"&">User not found. Please, verify your credentials</p>"
    END IF

    IF msg = "registration-complete" THEN
        msg = "<p class="&"registration-message"&">You have been successfully registered!</p>"
    END IF
%>

<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link rel="stylesheet" type="text/css" href="style/index.css">
        <link rel="stylesheet" type="text/css" href="style/bootstrap/css/bootstrap.min.css">
        <script src="style/bootstrap/js/bootstrap.min.js"></script>
        <link rel="shortcut icon" href="img/favicon.png" />

    </head>
    <body id="body" class="body">
    <section id="login-page" class="login-page">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-9 col-md-12 login-wallpaper">
                    <h2>Asp Learning</h2>

                    <p>Pelicer &copy; All rights reserved</p>
                </div>
                <div class="col-lg-3 col-md-12 login-form" >
                    <h2>Asp Learning</h2>
                    <h6>Please, login before continuing</h6>

                    <form action="act/login.asp" method="post">
                        <div class="form-group">
                            <label>Username:</label>
                            <input name="txtUserName" class="form-control" placeholder="Enter username">
                            <label>Password:</label>
                            <input name="txtPassword" type="password" class="form-control"placeholder="Enter password">
                            <small class="form-text text-muted">Your password is secure.</small>
                            <%=msg%>
                            <button type="submit" class="btn btn-primary">Login</button>

                            <div class="registration-link">
                                <a href="/asplearning/view/user-registration.asp" >Not registered yet?</a>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </section>
    </body>   
</html>

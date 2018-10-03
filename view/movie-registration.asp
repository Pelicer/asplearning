<%
    Session("profile") = "'1','3'"
%>
<!--#include virtual="/asplearning/act/session_handler.asp"-->
<!-- #include virtual="/asplearning/act/connect.asp"-->

<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="../style/movie-registration.css">
    <link rel="stylesheet" type="text/css" href="../style/bootstrap/css/bootstrap.min.css">
    <script src="../style/bootstrap/js/bootstrap.min.js"></script>
    <link rel="shortcut icon" href="../img/favicon.png" />

    <title>Home</title>
</head>

<body id="body" class="body">
    <!--Including the header.-->
    <div class="header">
        <div>
            <!--#include file="includes/header.asp"-->
        </div>
    </div>

    <section id="registration" class="registration">
        <div class="container">
            <div class="row">
                <!--Title-->
                <div class="registration-title col-lg-12">
                    Movie Registration
                </div>
            </div>
            <div class="row">
                <div class="registration-content col-lg-12">
                    <form action="/asplearning/act/movie-registration.asp" method="post">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4">
                                    <label>Movie Volumes:</label>
                                    <br>
                                    <textarea name="txtOrders" rows="100"></textarea>
                                </div>
                                <div class="col-lg-4">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <label>Movie Family:</label>
                                            <br>
                                            <select name="slcFamily">
                                                <%
                                                    sql = "SELECT family_description FROM tbl_family"
                                                    set rs0 = conn.execute(sql)
                                                    While not rs0.eof
                                                        
                                                        response.write("<option value='"&rs0("family_description")&"'>"&rs0("family_description")&"</option>")
                                                        rs0.movenext
                                                                                                            
                                                    Wend												
											    %>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <label>Starting Hour</label>
                                            <br>
                                            <select name="slcHour">
                                                <option value="8">8hrs</option>
                                                <option value="9">9hrs</option>
                                                <option value="10">10hrs</option>
                                                <option value="11">11hrs</option>
                                                <option value="12">12hrs</option>
                                                <option value="13">13hrs</option>
                                                <option value="14">14hrs</option>
                                                <option value="15">15hrs</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <label>Room:</label>
                                            <br>
                                            <select name="slcGl">
                                                <%
                                                    sql = "SELECT line_desc FROM tbl_line"
                                                    set rs0 = conn.execute(sql)
                                                    While not rs0.eof
                                                        
                                                        response.write("<option value='"&rs0("line_desc")&"'>"&rs0("line_desc")&"</option>")
                                                        rs0.movenext
                                                                                                            
                                                    Wend											
											    %>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <label>Movie Duration:</label>
                                            <br>
                                            <input disabled="disabled" />
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <button type="submit" class="btn btn-primary">Register</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </form>
                </div>
            </div>
    </section>

    <!--Including the footer.-->
    <div class="footer">
        <div>
            <!--#include file="includes/footer.asp"-->
        </div>
    </div>

</body>

</html>
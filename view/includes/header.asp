<link rel="stylesheet" type="text/css" href="../style/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../style/header.css">
<script src="../style/bootstrap/js/bootstrap.min.js"></script>        
<%
    Session("profile") = "   "
    msg = "<img src="&"../img/icons/users.png"&"><small>Wellcome, </small></img>"
%>

<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#"><img src="../img/favicon.png"/>  ASP Learning </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a href="home.asp">Home</a>
                </li>
                <li class="nav-item active">
                    <a href="movie-registration.asp">Movie Registration</a>
                    </li>
                <li class="nav-item active">
                    <a href="rooms-planning.asp">Rooms Planning</a>
                    </li>
                <li>
                    <%=msg%>
                    <small><%=Session("user")%>!</small>
                </li>
            </ul>
            <form action="../act/header.asp">
                <button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Sign Out</button>
            </form>
        </div>
    </nav>
</header>
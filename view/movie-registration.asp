<%
    Session("profile") = "'1','3'"
%>
<!--#include virtual="/asplearning/act/session_handler.asp"-->

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
                    <form>
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4">
                                    <label>Movie Volumes:</label>
                                    <br>
                                    <textarea name="txtName" rows="100"></textarea>
                                </div>
                                <div class="col-lg-4">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <label>Movie Family:</label>
                                            <br>
                                            <select>
                                                <option value="Star Wars">Star Wars</option>
                                                <option value="Resident Evil">Resident Evil</option>
                                                <option value="Back to the Future">Back to the Future</option>
                                                <option value="Max Max">Mad Max</option>
                                                <option value="Star Trek">Star Trek</option>
                                                <option value="Harry Potter">Harry Potter</option>
                                                <option value="Lord of the Rings">Lord of the Rings</option>
                                            </select>            
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <label>Starting Hour</label>
                                            <br>
                                            <select>
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
                                            <select>
                                                <option value="1">ROOM 1</option>
                                                <option value="2">ROOM 2</option>
                                                <option value="3">ROOM 3</option>
                                                <option value="4">ROOM 4</option>
                                                <option value="5">ROOM 5</option>
                                                <option value="6">ROOM 6</option>
                                                <option value="7">ROOM 7</option>
                                                <option value="8">ROOM 8</option>
                                                <option value="9">ROOM 9</option>
                                                <option value="10">ROOM 10</option>
                                                <option value="11">ROOM 11</option>
                                                <option value="12">ROOM 12</option>
                                                <option value="13">ROOM 13</option>
                                                <option value="14">ROOM 14</option>
                                                <option value="15">ROOM 15</option>
                                                <option value="16">ROOM 16</option>
                                                <option value="17">ROOM 17</option>
                                                <option value="18">ROOM 18</option>
                                                <option value="19">ROOM 19</option>
                                                <option value="20">ROOM 20</option>
                                            </select>   
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <label>Movie Duration:</label>
                                            <br>
                                            <input disabled="disabled"/>
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
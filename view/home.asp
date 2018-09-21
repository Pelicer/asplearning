<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
    Session("profile") = "'1','2','3'"
%>
<!--#include virtual="/asplearning/act/session_handler.asp"-->


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="../style/home.css">
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

    <section id="home" class="home">
        <div class="container">
            <div class="row">
                <div class="board-title col-lg-12">
                    Movies Planning
                </div>
            </div>
            <div class="row">
                <div class="board-content col-lg-12">
                    <table>
                        <tr>
                            <th></th>
                            <th>GL 1</th>
                            <th>GL 2</th>
                            <th>GL 3</th>
                            <th>GL 4</th>
                            <th>GL 5</th>
                            <th>GL 6</th>
                            <th>GL 7</th>
                            <th>GL 8</th>
                            <th>GL 9</th>
                            <th>GL 10</th>
                            <th>GL 11</th>
                            <th>GL 12</th>
                            <th>GL 13</th>
                            <th>GL 14</th>
                            <th>GL 15</th>
                            <th>GL 16</th>
                            <th>GL 17</th>
                            <th>GL 18</th>
                            <th>GL 19</th>
                            <th>GL 20</th>
                        </tr>
                        <tr>
                            <td>8hr</td>
                        </tr>
                        <tr>
                            <td>9hr</td>
                        </tr>
                        <tr>
                            <td>10hr</td>
                        </tr>
                        <tr>
                            <td>11hr</td>
                        </tr>
                        <tr>
                            <td>12hr</td>
                        </tr>
                        <tr>
                            <td>13hr</td>
                        </tr>
                        <tr>
                            <td>14hr</td>
                        </tr>
                        <tr>
                            <td>15hr</td>
                        </tr>
                        <tr>
                            <td>16hr</td>
                        </tr>
                        <tr>
                            <td>17hr</td>
                        </tr>
                    </table>
                </div>
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
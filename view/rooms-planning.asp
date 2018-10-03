<%
    Session("profile") = "'1'"
%>
<!--#include virtual="/asplearning/act/session_handler.asp"-->
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="../style/rooms-planning.css">
    <link rel="stylesheet" type="text/css" href="../style/bootstrap/css/bootstrap.min.css">
    <script src="../style/bootstrap/js/bootstrap.min.js"></script>
    <script src="../script/script.js"></script>
    <link rel="shortcut icon" href="../img/favicon.png" />

    <title>Rooms Planning</title>
</head>

<body id="body" class="body">
    <!--Including the header.-->
    <div class="header">
        <div>
            <!--#include file="includes/header.asp"-->
        </div>
    </div>

    <section id="planning" class="planning">
        <div class="container">
            <div class="row">
                <!--Title-->
                <div class="planning-title col-lg-12">
                    Rooms Planning
                </div>
            </div>
            <form action="../act/rooms-planning.asp" method="post">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="row">
                            <div class="col-lg-2">
                                <table>
                                    <th>GL</th>
                                </table>
                            </div>
                            <div class="col-lg-2">
                                <table>
                                    <th>Hours</th>
                                </table>
                            </div>
                            <div class="col-lg-2">
                                <table>
                                    <th>Net</th>
                                </table>
                            </div>
                            <div class="col-lg-2">
                                <table>
                                    <th>Ph</th>
                                </table>
                            </div>
                            <div class="col-lg-2">
                                <table>
                                    <th>Manufactured</th>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL1</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>
                            <div class="col-lg-2">
                                <input name="txtGl1PH" class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL2</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>

                            <div class="col-lg-2">
                                <input name="txtGl2PH" class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL3</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>

                            <div class="col-lg-2">
                                <input name="txtGl3PH" class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL4</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>

                            <div class="col-lg-2">
                                <input name="txtGl4PH" class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL5</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>

                            <div class="col-lg-2">
                                <input name="txtGl5PH" class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL6</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>

                            <div class="col-lg-2">
                                <input name="txtGl6PH" class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL7</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>

                            <div class="col-lg-2">
                                <input name="txtGl7PH" class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL8</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>

                            <div class="col-lg-2">
                                <input name="txtGl8PH" class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL9</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>

                            <div class="col-lg-2">
                                <input name="txtGl9PH" class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL10</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>

                            <div class="col-lg-2">
                                <input name="txtGl10PH" class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL11</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>

                            <div class="col-lg-2">
                                <input name="txtGl11PH" class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL12</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>

                            <div class="col-lg-2">
                                <input name="txtGl12PH" class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL13</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>

                            <div class="col-lg-2">
                                <input name="txtGl13PH" class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL14</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>

                            <div class="col-lg-2">
                                <input name="txtGl14PH" class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL15</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>

                            <div class="col-lg-2">
                                <input name="txtGl15PH" class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL16</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>

                            <div class="col-lg-2">
                                <input name="txtGl16PH" class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL17</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>

                            <div class="col-lg-2">
                                <input name="txtGl17PH" class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL18</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>

                            <div class="col-lg-2">
                                <input name="txtGl18PH" class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL19</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>

                            <div class="col-lg-2">
                                <input name="txtGl19PH" class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-2">
                                <label>GL20</label>
                            </div>
                            <div class="col-lg-2">
                                <input class="inputs" disabled="disabled" />
                            </div>
                            <div class="col-lg-2">
                                <input type="checkbox" onclick="checkBoxChanged(this)" class="inputs" disabled="false" />
                            </div>
                            <div class="col-lg-2">
                                <input name="txtGl20PH" class="inputs" disabled="disabled" />
                            </div>

                            <div class="col-lg-2">
                                <label>Total</label>
                            </div>
                        </div>

                    </div>
                    <div class="linings col-lg-6">
                        <table>
                            <tr>
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
                            </tr>
                            <tr class="total">
                                <td>500</td>
                                <td>500</td>
                                <td>500</td>
                                <td>500</td>
                                <td>500</td>
                                <td>500</td>
                                <td>500</td>
                                <td>500</td>
                                <td>500</td>
                                <td>500</td>
                            </tr>
                        </table>

                        <br>

                        <table>
                            <tr class="lines">
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
                            <tr class="total">
                                <td>500</td>
                                <td>500</td>
                                <td>500</td>
                                <td>500</td>
                                <td>500</td>
                                <td>500</td>
                                <td>500</td>
                                <td>500</td>
                                <td>500</td>
                                <td>500</td>
                            </tr>


                        </table>

                        <div class="row">
                            <div class="leaders col-lg-12">
                                <button style="width: 10px; height: 10px; background-color: blue; border: none;"></button><small>Reginaldo</small>
                                <br>

                                <button style="width: 10px; height: 10px; background-color: red; border: none;"></button><small>Marcio</small>
                                <br>

                                <button style="width: 10px; height: 10px; background-color: green; border: none;"></button><small>José</small>
                                <br>
                            </div>
                            <div class="summit col-lg-12">
                                Total build for the day (All Gold Lines):<input class="inputs" disabled="true" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="buttons col-lg-12">
                        <button id="submit-button" type="submit" class="btn btn-success" disabled="true">Submit</button>
                        <button id="change-button" type="button" class="btn btn-primary" onclick="changeEnabled()">Change</button>
                    </div>
                </div>
            </form>


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
<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file="connect.asp"-->

<%
    'Setting variables to be used
    DIM orders: orders = REQUEST("txtOrders")
    DIM family: family = REQUEST("slcFamily")
    DIM hour: hour = REQUEST("slcHour")
    DIM gl: gl = REQUEST("slcGl")

    hour = hour & ":00"

    insertion_query = "INSERT INTO tbl_schedule(schedule_orders, schedule_time, line_id, family_id) VALUES('"& orders &"', '"& hour &"', '"& gl &"', (SELECT family_id FROM tbl_family WHERE family_desc = '"& family &"))"
    conn.execute(insertion_query)
    response.redirect("/asplearning/view/home.asp")

%>
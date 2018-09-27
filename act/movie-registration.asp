<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file="connect.asp"-->

<%
    'Setting variables to be used
    DIM orders: orders = REQUEST("txtOrders")
    DIM family: family = REQUEST("slcFamily")
    DIM hour: hour = REQUEST("slcHour")
    DIM gl: gl = REQUEST("slcGl")
    DIM counter: counter = 10
    DIM length: length = LEN(orders)
    DIM neworders
    DIM old_counter

    'Remove blank spaces from the string
    FOR i=1 TO length-10
        IF i=1 THEN
            neworders = LEFT(orders, counter)
            neworders = rtrim(neworders)
            neworders = neworders + ","
            old_counter = counter
            counter=counter+12
            ELSE
                neworders = neworders + MID(orders, old_counter, 11)
                neworders = rtrim(neworders)
                neworders = neworders + ","
                old_counter = counter
                counter=counter+12
                response.write("else:" + neworders + "<br><br><br>")
        END IF

        IF i=5 THEN
            EXIT FOR
        END IF
    NEXT
    response.write(neworders)
%>
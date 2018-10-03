<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file="connect.asp"-->

<%
    'Setting variables to be used
    DIM gl1: gl1 = REQUEST("txtGl1PH")
    DIM gl2: gl2 = REQUEST("txtGl2PH")
    DIM gl3: gl3 = REQUEST("txtGl3PH")
    DIM gl4: gl4 = REQUEST("txtGl4PH")
    DIM gl5: gl5 = REQUEST("txtGl5PH")
    DIM gl6: gl6 = REQUEST("txtGl6PH")
    DIM gl7: gl7 = REQUEST("txtGl7PH")
    DIM gl8: gl8 = REQUEST("txtGl8PH")
    DIM gl9: gl9 = REQUEST("txtGl9PH")
    DIM gl10: gl10 = REQUEST("txtGl10PH")
    DIM gl11: gl11 = REQUEST("txtGl11PH")
    DIM gl12: gl12 = REQUEST("txtGl12PH")
    DIM gl13: gl13 = REQUEST("txtGl13PH")
    DIM gl14: gl14 = REQUEST("txtGl14PH")
    DIM gl15: gl15 = REQUEST("txtGl15PH")
    DIM gl16: gl16 = REQUEST("txtGl16PH")
    DIM gl17: gl17 = REQUEST("txtGl17PH")
    DIM gl18: gl18 = REQUEST("txtGl18PH")
    DIM gl19: gl19 = REQUEST("txtGl19PH")
    DIM gl20: gl20 = REQUEST("txtGl20PH")

    lines = Array(gl1,gl2,gl3,gl4,gl5,gl6,gl7,gl8,gl9,gl10,gl11,gl12,gl13,gl14,gl15,gl16,gl17,gl18,gl19,gl20)
    FOR EACH line IN lines

        sql = "UPDATE tbl_lineConfig SET line"

    NEXT
    
    %>
%>
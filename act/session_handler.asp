<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file="connect.asp"-->
<%
    user = Session("user")
    permissionRequired = Session("permissionRequired")
    sql = "SELECT permission_description FROM tbl_permission AS p INNER JOIN tbl_user AS u ON p.permission_id = u.permission_id WHERE user_name = '"&user&"'"
	SET rs0 = conn.execute(sql)
	
    IF rs0.eof = FALSE THEN
            permission = rs0("permission_description")
            IF permissionRequired = permission THEN
                response.Redirect("/asplearning/view/"&Session("destination")&".asp")
                ELSE
                    response.Redirect("/asplearning/view/access_denied.asp")
            END IF
    END IF
%>
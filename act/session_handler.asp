<!-- #include file="connect.asp"-->
<%
    user = Session("user")
    profile = Session("profile")

    IF user <> "" THEN
        permissionRequired = Session("permissionRequired")
        sql = "SELECT COUNT(*) FROM tbl_user WHERE user_name='"& user &"' AND permission_id IN ("& profile &")"
        
        SET rs0 = conn.execute(sql)
        IF rs0(0) = (0) THEN
            response.Redirect("/asplearning/view/access_denied.asp")
        END IF
    ELSE 
        response.Redirect("/asplearning/index.asp?msg=user-logged-off")
    END IF
%>
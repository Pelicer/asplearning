<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!-- #include file="connect.asp"-->
<%
user = REQUEST("txtUserName")
pass = REQUEST("txtPassword")

sql = "SELECT COUNT(*) FROM tbl_user WHERE user_name='"& user &"' AND user_password='"& pass &"'"
SET rs = conn.execute(sql)

IF rs(0) = 0 THEN
    response.redirect("/asplearning/index.asp?msg=user-not-found")
    ELSE
        Session("user") = user
        Session("permission") = permission
        response.redirect("/asplearning/view/home.asp")
END IF
%>
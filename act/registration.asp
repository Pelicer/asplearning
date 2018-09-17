<!-- #include file="connect.asp"-->
<%
    user = REQUEST("txtUserName")
    pass = REQUEST("txtVerifyPassword")

    insertion_query = "INSERT INTO tbl_user(user_name, user_password, permission_id) VALUES('"& user &"', '"& pass &"', 2)"
    conn.execute(insertion_query)
    response.redirect("/asplearning/index.asp?msg=registration-complete")
%>
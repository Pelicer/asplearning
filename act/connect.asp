<% 
   SQL_Conn_STRING = "Provider=SQLNCLI11;Data Source=W10B21LF82;Database=db_asplearning;User Id=testuser;Pwd=admin;"
   Set conn = Server.CreateObject("ADODB.Connection")
   conn.Open SQL_Conn_STRING
%>

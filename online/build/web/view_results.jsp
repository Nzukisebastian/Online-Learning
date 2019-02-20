
<%-- 
    Document   : view_notesprocess
    Created on : Mar 9, 2017, 6:28:00 PM
    Author     : NZUKI
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
a:link{color:red;
text-decoration:none;}
a:visited{color:blue;}
a:hover{background-color:white;
color:red;
text-decoration:underline;
font-weight:bold;}
body{background-color:silver;}
#head{background-color:grey;
        font-size:30px;
		color:white;
		width:100%;
		height:50px;
	    position:absolute;
        top:2px;
left:1px;}
#result{position:absolute;top:10px;left:34%;}
#chat{position:absolute;top:10px;left:25%;}
#assignment{position:absolute;top:10px;left:11%;}
#notes{position:absolute;top:10px;left:1%;}
#logout{position:absolute;top:10px;left:42%;}
#radio{position:absolute;top:14.5px;left:36%;}
#head{background-color:grey;
        font-size:30px;
		color:white;
		width:100%;
		height:50px;
	    position:absolute;
        top:0px;
left:1px;}
#countdown{position:absolute;top:45px;left:50%;color:red;}
#TIME{position:absolute;top:31px;left:37%;color:red;}

</style>
    </head>
    <body>
        
 <div id="head">
<div id="radio"><input type="radio" checked></div>
</div>
 <div id="assignment"><form action="next.jsp" method="post" target="_parent"><input name='view' type='submit'
value='submit Assignment'></form></div>   
<div id="result"><form action="view_results.jsp" method="post" target="_parent"><input name='view' type='submit'
value='Results'></form></div>
<div id="notes"><form action="view_notes.jsp" method="post" target="_parent"><input name='view' type='submit'
value='Access Notes'></form></div>
<div id="chat"><form action="chat.jsp" method="post" target="_parent"><input name='view' type='submit'
value='Message'></form></div>
<div id='logout'><form action="index.jsp" method='POST' target="_parent"><input type='submit' name='logout' value='logout'></form></div>

<br>       
        <h2><font color="red"> COMMENT FROM LECTURER:</font></h2>    
 <%
try{
//String name=request.getParameter("name");
//String code=request.getParameter("code");
String regno=(String)session.getAttribute("txtregno");
Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/java_db","root","");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select comment from comment where test='"+regno+"'");
           
           if(rs.next()){
         
         %>LECTURER COMMENT:<br><br><%  out.println(rs.getString("comment"));
          }else {out.println("No comment");
         }
        }
    catch(Exception e){
    System.out.println(e);
}
%> 
</body>
</html>

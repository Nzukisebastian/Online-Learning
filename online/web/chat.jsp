
<%@page import="java.util.Arrays.*"%>
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

#chat{position:absolute;top:10px;left:25%;}
#assignment{position:absolute;top:10px;left:11%;}
#result{position:absolute;top:10px;left:34%;}
#notes{position:absolute;top:10px;left:1%;}
#logout{position:absolute;top:10px;left:42%;}
#radio{position:absolute;top:14.5px;left:27%;}
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
    <body bgcolor= "green">
<div id="head">
<div id="radio"><input type="radio" checked></div>
</div>
 <%
try{
String regno=(String)session.getAttribute("txtregno");   
//String lec=request.getParameter("lec");
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/java_db","root","");  
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select username from student where regno='"+regno+"'");
 while(rs.next()){
 //String sender=rs.getString("msg");
 String username=rs.getString("username");
 %>
      

<%
//System.out.println("</textarea>");
  
%>

<%
 if(request.getParameter("submit")!=null){
    
//String regno=(String)session.getAttribute("txtregno");
 //String username=(String)session.getAttribute("username");
//String test="test";
String m=null,mn=null;

String msg=request.getParameter("msg");
String lec=request.getParameter("lec");
PreparedStatement ps;
//Connection con;
//ResultSet rs=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/java_db","root","");
//Statement st=con.createStatement();
ps=con.prepareStatement("insert into message values (?,?,?)");
ps.setString(1,regno);
ps.setString(2,username);
ps.setString(3,msg);
int insertResult=ps.executeUpdate();
//exit(0);
//if(insertResult !=0){
//out.println("successfully registered");

}
}        
 }catch(Exception e){
    System.out.println(e);
} 
%>

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
<div align="center">
<h1><font color="white">WELCOME TO CHAT ROOM</font></h1> 
<h1><font color="white">Chat Messages</font></h1> 
<fieldset style='width:40%'><legend>Your comment</legend>
<%
try{
String regno=(String)session.getAttribute("txtregno");   
String lec=request.getParameter("lec");
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/java_db","root","");  
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from message");
 while(rs.next()){
 String msg=rs.getString("msg");
 String regnos=rs.getString("regno");
 String username=rs.getString("username");
 %>
      
<b><font color="green"><%out.println(regnos);%></font><b/><b><font color="brown">~~~<%out.println(username);%><b/><br></font>
   
<% out.println(msg);%><br>

<%
//System.out.println("</textarea>");
  }        
 }catch(Exception e){
    System.out.println(e);
}
%>
</div>
<div align="center">
<form name="Myform" action="chat.jsp" method="POST">
    <div align="center"></div>
 
<tr>
<td colspan='2'>
<label>Enter message: </label><br>
<textarea name="msg" cols='40%' rows='1'></textarea>
<td/>
<tr/><br>
<td>
    <td>
  
<td/>
<input name='submit' type='submit' value='Send'>
<td/>
<tr/>
<form/>

<div/>
</field>
</body>
</html>

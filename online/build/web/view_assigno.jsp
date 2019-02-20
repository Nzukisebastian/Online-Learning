

<%@page import="com.mysql.fabric.xmlrpc.base.Data"%>
<%-- 
    Document   : view_notesprocess
    Created on : Mar 9, 2017, 6:28:00 PM
    Author     : NZUKI
--%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays.*"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2><font color='blue'>STUDENT ASSIGNMENT!</font></h2>     
 
        
 <%
try{
    
String [] regnos;    
regnos=request.getParameterValues("txtregno");
if(regnos !=null){
for(int i=0;i<regnos.length;i++){
session.setAttribute("txtregno",regnos);     
   //regno+=regnos[i]+"";

String payroll=(String)session.getAttribute("payroll");
String notseen="notseen";
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/java_db","root","");  
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select assigno,regno,programme,title,code from assignment where regno='"+regnos[i]+"'");
 while(rs.next()){
 String regse=rs.getString("regno");
 String programme=rs.getString("programme");
 String title=rs.getString("title");
 String code=rs.getString("code");
 String assigno=rs.getString("assigno");%>
          
<b>PROGRAMME:</b><%out.println(programme);%><br>
<b>COURSE_TITLE:</b><% out.println(title);%><br>
<b>COURSE_CODE:</b><% out.println(code);%><br>
<b>REGISTRATION NO:</b><% out.println(regse);%><br>
<b>ASSIGNMENT:</b><br><br><% out.println(assigno);
     session.setAttribute("regno",regse);                    }        
}}else{ %><script>
   alert("please select a student!!!")
   history.back();
</script>
<%    
}
  
    }
        
    catch(Exception e){
    System.out.println(e);
}
%>

<h3><center>UPLOAD NOTES:</ CENTER></h3>
 <font color='red'><b>NOTE:</b>
 <label>Lecturers are instructed  </label></font>
<fieldset><legend>student register courses</legend>
<div align="center">
<form name="Myform" action="process_comment.jsp" method="POST">
<div align="center">
<br>
<tr>
<td colspan='2'>
<label>Enter comment: </label><br>
<textarea name="comment" cols='60%' rows='7'></textarea>
<td/>
<tr/><br>
<td>
<td>
     
<td/>
<input name='submit' type='submit' value='submit'>
<input name='reset' type='reset' value='clear'>
<td/>
<tr/>
<form/>
<div/>
</fieldset>
</body>
</html>

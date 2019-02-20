
<%@page import="java.sql.*"%>
<%@page import ="java.util.logging.Logger"%>
<%@page import ="javax.swing.JOptionPane"%> 
<% Class.forName("com.mysql.jdbc.Driver");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
#radio{position:absolute;top:13px;left:16%;}
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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
<script>
function delayRedirect(){
document.getElementById('delayMsg').innerHTML ='Please wait you will be redirected after <span id="countDown"> 5 </span>seconds...'; 
var count=5;
setInterval(function(){
count--;
document.getElementById('countDown').innerHTML=count;
if(count==0){
    window.location='view_notesprocess.jsp';
}
},1000);
}
</script>        
        
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
 <marquee width="620" height="35" behavior="alternate"><h2><font color="blue">Enter the details to submit assignment.</font></h2></marquee><br>       
<br>
<div align="center">
<fieldset style="width:10%"><legend><h2>Enter Course details</h2></legend>
<div align="center">     
<form name="form" method="post" action="insert_assigno.jsp">
<table>
    <tr><td>Academic Year:</td><br><td><input type="text" name="year" required></td></tr>    
<tr><td>COURSE_CODE:</td><br><td><input type="text" name="code" required></td></tr>
<tr><td>
    LECTURER:</td><br><td><select name="name">
     <%
String username;
String payroll; 
try{
   


Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/java_db","root","");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from staff");
           
           while(rs.next()){
               
          username=rs.getString("username");
          payroll=rs.getString("payroll");
          
         %> 
                                            
                                            <option value=<%=payroll%>><%=username%>
                                           
                                            <%
           }
      }
    catch(Exception e){
    System.out.println(e);
}
%>
</select>
<td/></tr>

<tr><td></td><td><input type="submit" value="next"></td></tr>
</table>
</form>
</div>
</fieldset>
 </body>
</html>


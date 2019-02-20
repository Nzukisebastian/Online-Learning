


<%-- 
    Document   : Login
    Created on : Mar 7, 2017, 5:35:05 PM
    Author     : NZUKI
--%>

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
body{background-color:green;}
#head{background-color:grey;
        font-size:30px;
		color:white;
		width:100%;
		height:50px;
	    position:absolute;
        top:2px;
left:1px;}
#assignment{position:absolute;top:10px;left:11%;}
#notes{position:absolute;top:10px;left:1%;}
#logout{position:absolute;top:10px;left:25%;}
#radio{position:absolute;top:22px;left:15%;}
#head{background-color:grey;
        font-size:30px;
		color:white;
		width:100%;
		height:50px;
	    position:absolute;
        top:0px;
left:1px;}
     </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
       
        
    </head>
    
    <body> 
 <div id='delayMsg'></div>     
 <div id="head">
<div id="radio"><input type="radio" checked></div>
</div>
 <div id="assignment"><form action="student_account.jsp" method="post" target="_parent"><input name='view' type='submit'
value='submit Assignment'></form></div>   

<div id="notes"><form action="view_notes.jsp" method="post" target="_parent"><input name='view' type='submit'
value='Access Notes'></form></div><br><br>
<div id="logout"><form action="logout.jsp" method="post" target="_parent"><input name='view' type='submit'
value='logout'></form></div> 
 <marquee width="620" height="35" behavior="alternate"><h2><font color="white">Enter the details to access notes.</font></h2></marquee><br>       
<br>
<div align="center">
<fieldset style="width:10%"><legend><h2>Enter Course details</h2></legend>
<div align="center">     
<form name="form" method="post" action="student_account.jsp" onsubmit="delayRedirect()">
<table>
<tr><td>
    LECTURER:</td><br><td><select name="name">
                                            
                                            <option value="01">Karume
                                            <option value="02">Majanga
					      
                                            <option value="03">Ireri
	
                                            <option value="04">Lorna
					    
                                            <option value="05">Justin
					     
                                            <option value="06">Mindo
                                            </select>
<td/></tr>
<tr><td>COURSE_CODE:</td><br><td><input type="text" name="code"></td></tr>
<tr><td></td><td><input type="submit" value="submit"></td></tr>
</table>
</form>
</div>
</fieldset>
 </body>
</html>


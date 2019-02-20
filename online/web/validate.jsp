<%-- 
    Document   : Login
    Created on : Mar 7, 2017, 5:35:05 PM
    Author     : NZUKI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <style type="text/css">   
 #head{background-color:grey;
        font-size:30px;
		color:white;
		width:100%;
		height:50px;
	    position:absolute;
        top:2px;
left:1px;}

 lec{background-color:white;color:green;width:30%;height:10%;         
        }
 body{background-color:silver;}
 img{position:absolute;
     top:55px;
	 left:30%;}
	 #ipic{position:absolute;
     top:600px;left:30%;}
     </style>
    <head>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    
    <body>
 
   <a href="index.jsp">back</a> 
   <link href="https://afeld.github.io/emoji-css/emoji.css" rel="stylesheet">

<i class="em em-some-emoji"></i>
 <marquee width="620" height="35" behavior="alternate"><h2><font color="white">Enter your reg no and password correctly.</font></h2></marquee><br>
  <div align="center"> 
        <div id="lec">    
<fieldset style="width:10%"><legend><h2>STUDENT LOGIN</h2></legend>
<form name="form" method="post" action="Loginstudentprocess.jsp" onsubmit="javascript:return validate();" >

    <table>
<tr><td>Regno:</td><td><input type="text" name="txtregno" required></td></tr>
<tr><td>Password:</td><td><input type="password" name="pass" required=""></td></tr>
<tr><td></td><td><input type="submit" name="submit" value="Login" ></td></tr>
<tr><td></td><td><a href="studregprocess.jsp">Register Here</a></td></tr>
</table>
</form>
    </fieldset>
    </div>
  </div>

     
 
 <div align="center">
   
<fieldset style="width:10%"><legend><h2>Lecturer LOGIN</h2></legend>
<form name="form" method="post" action="loginlec_process.jsp" onsubmit="javascript:return validate();">
<table>
<tr><td>Payroll No:</td><td><input type="text" name="payroll" required></td></tr>
<tr><td>Password:</td><td><input type="password" name="pass" required></td></tr>
<tr><td></td><td><input type="submit" value="Login"></td></tr>
<tr><td></td><td><a href="lecregprocess.jsp">Register Here</a></td></tr>
</table>
</form>
</fieldset>    
</div>

    </body>
</html>


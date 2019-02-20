
<%@page import="org.kodejava.example.servlet.SessionCounter"%>

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
 #login{background-color:grey;
        font-size:30px;
		color:blue;
		width:15%;
		height:40px;
	    position:absolute;
        top:2px;
left:80%;}
 #count{background-color:white;
        font-size:30px;
		color:red;
		width:15%;
		height:50px;
	    position:absolute;
        top:50px;
left:85%;}
 #detail{
        font-size:30px;
		color:blue;
		
	    position:absolute;
        top:50%;
left:0%;}
 #online{
color:red;
position:absolute;
 top:40px;
left:85%;}
 body{background-color:silver;}
 img{position:absolute;
     top:55px;
	 left:40%}
	 #ipic{position:absolute;
     top:600px;left:30%;}
     </style>
<head>
<title>Session Counter</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
    <div id="count"></div>
 <%SessionCounter counter=(SessionCounter)session.getAttribute(SessionCounter.COUNTER);%>
 <div id="online"><h5>Number of Online user(s):<br><%=counter.getActiveSessionNumber()%></h5></div>
     <div id="head">Welcome to Laikipia university online Learning System.<tr><td><a href="validate.jsp"><div id="login">Login Here</div></a></td></tr></div>
   
<center><img src="lo.png" width="200px" height="200px" /><br><br><br></center> 
 <div id='detail'><h5><marquee>Laikipia University transforming technology keep trunk of your Projects.</marquee></h5>
Our system is designed to help students to register their projects which they take every year.Students can view past projects,current projects and even upload their project details.<br>supervisors can select students to supervise and comment about their projects.<br>Students can view their comment in their session when they login.<br>Admin approves projects uploaded by students to be valid for supervision by lecturers.  </div>
</body>
</html>





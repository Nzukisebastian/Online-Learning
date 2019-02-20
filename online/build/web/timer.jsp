<%@page import="java.sql.*"%>
<%@page import ="java.util.logging.Logger"%>
<%@page import ="javax.swing.JOptionPane"%> 
<% Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<html>
<head>
<title>student account</title>
<style type="text/css">
a:link{color:red;
text-decoration:none;}
a:visited{color:blue;}
a:hover{background-color:white;
color:red;
text-decoration:underline;
font-weight:bold;}
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
#radio{position:absolute;top:34px;left:16%;}
#head{background-color:grey;
        font-size:30px;
		color:white;
		width:100%;
		height:50px;
	    position:absolute;
        top:0px;
left:1px;}
#Quiz-time-left{position:absolute;top:45px;left:50%;color:red;}
#TIME{position:absolute;top:31px;left:37%;color:red;}

</style>
</head>
<body onload="displayResults()"> 
   
    <h1><div  style="font-weight:bold" id="Quiz-time-left"></div></h1>   
<script>
var total_seconds=60*1;

var c_minutes=parseInt(total_seconds/60);
var c_seconds=parseInt(total_seconds%60);
function CheckTime(){
document.getElementById("Quiz-time-left").innerHTML
='Time left:'    + c_minutes      +  'minutes'  + c_seconds    +  'seconds';
if(total_seconds<=0){
setTimeout("document.Myform.submit",0);    
    }else{
total_seconds=total_seconds-1;
c_minutes=parseInt(total_seconds/60);        
c_seconds=parseInt(total_seconds%60);
setTimeout("CheckTime()",1000);
}
}
setTimeout("CheckTime()",1000);
</script>    
   
<%! 
public class Actor{
   
 String URL="jdbc:mysql://localhost:3306/java_db"; 
 String USERNAME="root";  
 String PASSWORD="";
 String notseen="notseen";

    Connection con=null;
   // ResultSet rs=null;
    PreparedStatement insertActors =null;
     
    public Actor(){
        try{
  con=DriverManager.getConnection(URL,USERNAME,PASSWORD);          
   insertActors = con.prepareStatement(
  "INSERT INTO assignment(school,department,programme,title,code,assigno,status,lecturer)"
          +"values(?,?,?,?,?,?,?,?)");
          
   
            
        }catch (SQLException e){
            
       
      e.printStackTrace();
    }     
    }
    public int setActors(String school,String department,String programme,
            String title,String code,String assigno,String lecturer){
        int result=0;
        try{
          insertActors.setString(1,school);
          insertActors.setString(2,department); 
          insertActors.setString(3,programme); 
          insertActors.setString(4,title);
           insertActors.setString(5,code);
           insertActors.setString(6,assigno);
           insertActors.setString(7,notseen);
           insertActors.setString(8,lecturer);
          result=insertActors.executeUpdate(); 
        }catch (SQLException e){
 e.printStackTrace();;   
       }     
        return result;
     }

      }
      %>
      <%
int result=0;
if(request.getParameter("submit")!=null){
    String lecturer=new String();
    String title=new String();
    String code=new String();
    String programme=new String();
    String department=new String();
    String school=new String();
    String assigno=new String();
    if(request.getParameter("title")!=null){
     title=request.getParameter("title");   
    }
    if(request.getParameter("lecturer")!=null){
   lecturer= request.getParameter("lecturer");   
    }
    if(request.getParameter("code")!=null){
   code = request.getParameter("code");   
    }
     if(request.getParameter("programme")!=null){
     programme=request.getParameter("programme");    
     }
     if(request.getParameter("school")!=null){
      school=request.getParameter("school");   
     }
     if(request.getParameter("department")!=null){
      department=request.getParameter("department");   
     }
    if(request.getParameter("assigno")!=null){
      assigno=request.getParameter("assigno");   
     }
    Actor actor=new Actor();
    result=actor.setActors(school,department,programme,title,code,assigno,lecturer);
}
      %>    
    
    
    
    
<div id="head">
<div id="radio"><input type="radio" checked></div>
</div>
 <div id="assignment"><form action="" method="post" target="_parent"><input name='view' type='submit'
value='submit Assignment'></form></div>   

<div id="notes"><form action="view_notes.jsp" method="post" target="_parent"><input name='view' type='submit'
value='Access Notes'></form></div>
<div id='logout'><form action="<?php echo $_SERVER['PHP_SELF']?>" method='POST' target="_parent"><input type='submit' name='logout' value='logout'></form></div>
<br>
<h3><center>ASSIGNMENT SUBMISSION:</ CENTER></h3>
 <font color='red'><b>NOTE:</b>
 <label>Students are instructed to submit their 
 assignment within the time stipulated to avoid being locked out by the system! </label></font>
<fieldset><legend>student register courses</legend>
<div align="center">
<form name="Myform" action="timer.jsp" method="POST">
<div align="center">
<br>
<tr>
<td>
SCHOOL: e g SCIENCE<br><input name='school' type='text' size='30px' placeholder='2014/2015' required><p>
<td/>
<td>
DEPARTMENT:<br><input name='department' type='text' ><p>
<td/>

<td>
PROGRAMME:<br><select name="programme">
                                            
                                            <option value="N16">BICT 
                                            <option value="N11">COMPUTER SCIENCE
											<option value="P11">AGED 
                                            <option value="M11">AGEC
											<option value="M12">EDUCATION ARTS 
                                            <option value="N11">EDUCATION SCIENCE
											<option value="L12">PHSYCOLOGY 
                                            <option value="D13">STATISTICS
											<option value="M13">KISWAHILI NA MAWASILIANO 
                                            <option value="K12">ENGLISH AND COMMUNICATION
                                            </select><br><br>
<td/>
<td>
LECTURER:<br><select name="lecturer">
                                            
                                            <option value="01">Karume
                                            <option value="02">Majanga
					      
                                            <option value="03">Ireri
	
                                            <option value="04">Lorna
					    
                                            <option value="05">Justin
					     
                                            <option value="06">Mindo
                                            </select><br><br>
<td/>



<td>
COURSE TITLE: e g 2015/2016<br><input name='title' type='text' size='30px' placeholder='DIGITAL LOGIC' required><p>
<td/>
<td>
COURSE CODE: e g 2015/2016<br><input name='code' type='text' size='30px' placeholder='BICT 312' required><p>
<td/>
<tr>
<td colspan='2'>
<label>Enter assignment: </label><br>
<textarea name="assigno" placeholder=" insert your assignment" required cols='60%' rows='15'></textarea>
<td/>
<tr/><br>
<td>
<td>
    <td>
<input type="hidden" name="hidden" value="<%= result %>" />   
<td/>
<input name='submit' type='submit' value='submit'>
<input name='reset' type='reset' value='clear'>
<td/>
<tr/>
<form/>
<div/>
</fieldset>
<SCRIPT LANGUAGE="JavaScript">
  <!--
  function displayResults()
  {
      if(document.Myform.hidden.value==1){
  alert("Data uploaded successfully");
      }
  }
  //-->
</script>>
 </body>
</html>
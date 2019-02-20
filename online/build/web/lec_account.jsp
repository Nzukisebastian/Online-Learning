
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
body{background-color:silver;}
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
#logout{position:absolute;top:10px;left:25%;color:red;}
#radio{position:absolute;top:34px;left:4%;}
#head{background-color:grey;
        font-size:30px;
		color:white;
		width:100%;
		height:50px;
	    position:absolute;
        top:0px;
left:1px;}
#countdown{position:absolute;top:45px;left:50%;color:red;}
#TIME{position:absolute;top:31px;left:37%;color:red
          

</style>
<script type="text/javascript">
function show(get){
	if(document.getElementById(get).style.display=="none"){
		document.getElementById(get).style.display="";
	}else{document.getElementById(get).style.display="none";
	}
	}
</script>
</head>
<body onload="displayResults()"> 
     
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
  "INSERT INTO note(code,notes,payroll,date,academic_year)"
          +"values(?,?,?,?,?)");
          
   
            
        }catch (SQLException e){
            
       
      e.printStackTrace();
    }     
    }
    public int setActors(String code,String assigno,String payroll,String date,String year){
        int result=0;
        try{
          
           insertActors.setString(1,code);
           insertActors.setString(2,assigno);
           insertActors.setString(3,payroll);
           insertActors.setString(4,date);
           insertActors.setString(5,year);
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
    String date=new String();
    String year=new String();
    String code=new String();
    String assigno=new String();
    String payroll=(String)session.getAttribute("payroll");
    
    if(request.getParameter("year")!=null){
     year=request.getParameter("year");   
    }
    if(request.getParameter("code")!=null){
   code = request.getParameter("code");   
    }
     if(request.getParameter("assigno")!=null){
      assigno=request.getParameter("assigno");   
    }
    if(request.getParameter("date")!=null){
      date=request.getParameter("date");   
     }
    Actor actor=new Actor();
    result=actor.setActors(code,assigno,payroll,date,year);
}
      %>    
    
    
    
    
<div id="head">
<div id="radio"><input type="radio" checked></div>
</div>
 <div id="assignment"><form action="lec_insertcode.jsp" method="post" target="_parent"><input name='view' type='submit'
value='Access Assignments'></form></div>   

<div id="notes"><form action="" method="post" target="_parent"><input name='view' type='submit'
value='Upload'onmouseover="show('showoffice');">
 <div id="showoffice" style="display:none;">
<a href="insertnotes.jsp">Notes</a><br>
<a href="lec_account.jsp">Assignment</a>
</div></form></div>
<div id='logout'><form action="index.jsp" method='POST' target="_parent"><input type='submit' name='logout' value='logout'></form></div>
<br>
<h3><center>UPLOAD ASSIGNMENT:</ CENTER></h3>
 <font color='blue'><b>NOTE:</b>
 <label>Lecturers are instructed to enter the details below correctly </label></font>
<fieldset><legend>student register courses</legend>
<div align="center">
<form name="Myform" action="lec_account.jsp" method="POST">
<div align="center">
<br>
<tr>


<td>
ACADEMIC YEAR:e g 2015/2016<br><input name='year' type='text' size='30px' placeholder='2016/2017' required><p>
<td/>
<td>
COURSE CODE: e g BICT 111<br><input name='code' type='text' size='30px' placeholder='BICT 312' required><p>
<td/>
<td>
Deadline of submission: e g 03/31/2017 10:1 AM <br><input name='date' type="date" size='30px' placeholder='03/31/2017 10:1 AM' required><p>
<td/>
<tr>
<td colspan='2'>
<label>Enter Assignment: </label><br>
<input name='assigno' type='file' size='30px'required ><p>
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
</script>
 </body>
</html>
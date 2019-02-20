<%@page import="java.sql.*"%>
<%@page import ="java.util.logging.Logger"%>
<%@page import ="javax.swing.JOptionPane"%> 
<% Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>

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
  "INSERT INTO assignment(code,status,lecturer,regno)"
          +"values(?,?,?,?)");
          
   
            
        }catch (SQLException e){
            
       
      e.printStackTrace();
    }     
    }
    public int setActors(String code,String notseen,String lecturer,String regno){
        int result=0;
        try{
          
           insertActors.setString(1,code);
           //insertActors.setString(2,assigno);
           insertActors.setString(2,notseen);
           insertActors.setString(3,lecturer);
           insertActors.setString(4,regno);
          result=insertActors.executeUpdate(); 
        }catch (SQLException e){
 e.printStackTrace();;   
       }     
        return result;
     }

      }
      %>
      <%
String notseen="notseen";
int result=0;
if(request.getParameter("submit")!=null){
    String lecturer=new String();
    String code=new String();
    //String assigno=new String();
    String regno=(String)session.getAttribute("txtregno");
    
    if(request.getParameter("name")!=null){
   lecturer= request.getParameter("name"); 
   session.setAttribute("name",lecturer); 
    }
    if(request.getParameter("code")!=null){
   code = request.getParameter("code");
   session.setAttribute("code",code); 
    }
   
    Actor actor=new Actor();
    result=actor.setActors(code,notseen,lecturer,regno);
}
      %> 
  



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

#chat{position:absolute;top:10px;left:25%;}
#assignment{position:absolute;top:10px;left:11%;}
#result{position:absolute;top:10px;left:34%;}
#notes{position:absolute;top:10px;left:1%;}
#logout{position:absolute;top:10px;left:42%;}
#radio{position:absolute;top:34px;left:16%;}
#head{background-color:grey;
        font-size:30px;
		color:white;
		width:100%;
		height:50px;
	    position:absolute;
        top:0px;
left:1px;}

#time{position:absolute;top:5%;left:90%;color:red;}
#countdown{position:absolute;top:5px;color:red;}
#head2{background-color:white;
        font-size:30px;
		color:white;
		width:10%;
		height:150px;
	    position:absolute;
        top:70px;
left:90%;}
//h4 {position:top:50px;left:35%;}
</style>
</head>
<body onload="displayResults()"> 

  <div id ="time"><h3>TIME LEFT:</h3></div>
   <div id="head2">
    
    <div  style="font-weight:bold" id="countdown"></div><br><br>   
</div>
 
  
    

      
      
      
      <script type="text/javascript">
function show(get){
	if(document.getElementById(get).style.display=="none"){
		document.getElementById(get).style.display="";
	}else{document.getElementById(get).style.display="none";
	}
	}
</script>
 <div id="head">
<div id="radio"><input type="radio" checked></div>
</div>
 
 <div id="assignment"><form action="student_account.jsp" method="post" target="_parent"><input name='view' type='submit'
value='submit Assignment' onmouseover="show('showoffice');">
 <div id="showoffice" style="display:none;">
<a href="next.jsp">Enter course details</a><br>
<a href="student_account.jsp">submit assignment</a>
</div></div></form>  
<div id="result"><form action="view_results.jsp" method="post" target="_parent"><input name='view' type='submit'
value='Results'></form></div>
<div id="notes"><form action="view_notes.jsp" method="post" target="_parent"><input name='view' type='submit'
value='Access Notes'></form></div>
<div id="chat"><form action="chat.jsp" method="post" target="_parent"><input name='view' type='submit'
value='Message'></form></div>
<div id='logout'><form action="index.jsp" method='POST' target="_parent"><input type='submit' name='logout' value='logout'></form></div>
<br>
<h3><center>ASSIGNMENT SUBMISSION:</ CENTER></h3>
 <font color='white'><b>NOTE:</b>
 <label>Students are instructed to submit their 
 assignment within the time stipulated to avoid being locked out by the system! </label></font>
<fieldset><legend>student register courses</legend>
<div align="center">
    <FORM ENCTYPE="multipart/form-data" ACTION="testfile.jsp"METHOD='POST'>

<div align="center">
<br>
<tr>
<td>
COURSE CODE: e g 2015/2016<br><input name='code' type='text' size='30px' placeholder='BICT 312' required><p>
<td/>
<td>
    LECTURER:<br><td><select name="name" >
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
<td/><br><br>

<tr>
<td colspan='2'>
<td><INPUT NAME="file" TYPE="file" ></td></tr>
<tr><td colspan="2">

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
   

 
 
<script>
<%String date=(String)session.getAttribute("date");%>    
var end = new Date("<%=date%>");

    var _second = 1000;
    var _minute = _second * 60;
    var _hour = _minute * 60;
    var _day = _hour * 24;
    var timer;

    function showRemaining() {
        var now = new Date();
        var distance = end - now;
        if (distance <= 0) {
      clearInterval(timer);
  document.getElementById('countdown').innerHTML = 'Expired!';
         alert("Sorry,time expired,your assignment is invalid !!!");
            return false;
             }
        var days = Math.floor(distance / _day);
        var hours = Math.floor((distance % _day) / _hour);
        var minutes = Math.floor((distance % _hour) / _minute);
        var seconds = Math.floor((distance % _minute) / _second);
        //document.write("TIME LEFT:");
        document.getElementById('countdown').innerHTML = days +  'days ';
        document.getElementById('countdown').innerHTML += hours + 'hrs ';
        document.getElementById('countdown').innerHTML += minutes + 'mins ';
        document.getElementById('countdown').innerHTML += seconds + 'secs';
    }

    timer = setInterval(showRemaining, 1000);
</script>
 

</body>
</html>
<%-- 
    Document   : Ttestinsert
    Created on : Mar 7, 2017, 11:47:55 AM
    Author     : NZUKI
--%>

<%@page import="java.sql.*"%>
<%@page import ="java.util.logging.Logger"%>
<%@page import ="javax.swing.JOptionPane"%> 
<% Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    
    
 
 
<!DOCTYPE html>
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
#lec{background-color:white;color:green;width:50%;height:50%;
       }
#input{color:red;}
#validate{color:red;}
</style>


    <body onload="displayResults()">
        <b><a href='validate.jsp'>Login</a></b>
        <h1><center>Student Sign up:</center></h1>
       
        
        <%! 
public class Actor{
   
 String URL="jdbc:mysql://localhost:3306/java_db"; 
 String USERNAME="root";  
 String PASSWORD="";  

    Connection con=null;
   // ResultSet rs=null;
    PreparedStatement insertActors =null;
     
    public Actor(){
        try{
  con=DriverManager.getConnection(URL,USERNAME,PASSWORD);          
   insertActors = con.prepareStatement(
  "INSERT INTO student(username,regno,email,password,status,gender)"
          +"values(?,?,?,?,?,?)");
          
   
            
        }catch (SQLException e){
            
       
      e.printStackTrace();
    }     
    }
    public int setActors(String username,String regno,String email,
            String password,String status,String gender){
        int result=0;
        try{
          insertActors.setString(1,username);
          insertActors.setString(2,regno); 
          insertActors.setString(3,email); 
          insertActors.setString(4,password);
          insertActors.setString(5,status);
          insertActors.setString(6,gender);
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
    String status="status";
    String gender="gender";
    String username=new String();
    String regno=new String();
    String email=new String();
    String password=new String();
    if(request.getParameter("username")!=null){
     username=request.getParameter("username");   
    }
    if(request.getParameter("regno")!=null){
     regno=request.getParameter("regno");   
    }
     if(request.getParameter("email")!=null){
     email=request.getParameter("email");    
     }
     if(request.getParameter("password")!=null){
      password=request.getParameter("password");   
     }
     
    
    Actor actor=new Actor();
    result=actor.setActors(username,regno,email,password,status,gender);
}
      %>
      
      
     
      
      <script>
          function val(){
       if((Myform.regno.value).length < 5){
       
     alert ("digits should be a minimum of 5");
      Myform.regno.focus();
     return false;
     }
     return true;
 }
  </script>
   
  
   <script>
function LettersOnly(input){
    
    var regex = /[^a-z 0-9?., ]/gi;
    if(input.value.search(regex)> -1){
        document.getElementById("status").innerHTML="we only accept [^a-z 0-9?., ]";
    }
    input.value=input.value.replace(regex,"");
    
     
}     
   </script>
    
  <div align="center"> 
        <div id ="lec"> 
 <fieldset style="height:"50%"><legend>student Create Account</legend>
   
        
        <form name="Myform" action="studregprocess.jsp" method="POST">
            <table>
                
                <label>username</label><div id = "validate"><br><br><input type="text" name="username" placeholder="username"required size="50" onkeyup="LettersOnly(this)" />
                <div id="status"></div><br>
                </div>
  <label>regno</label><br><br><input type="text" name="regno"size="50"required />
 <div id="regno"></div><br></div>
 <label>email</label><br><br><input type="email" name="email"required size="50" /><br>
<label>password</label><br><br><input type="password" name="password" size="50"required /><br>    

<input type="hidden" name="hidden" value="<%= result %>" />
   
<input type="submit" value="Submit" name="submit" onsubmit ="return val();" />
   <input type="reset" value="clear" name="Clear" />
</table>
 </form>
</div>
</div>
</fieldset>


<SCRIPT LANGUAGE="JavaScript">
  <!--
  function displayResults()
  {
      if(document.Myform.hidden.value==1){
  alert("Registered successfully!click login");
      }
  }
  //-->
</script>>
</body>
</html>

    


<%@page import="java.sql.*"%>
<%@page import ="java.util.logging.Logger"%>
<%@page import ="javax.swing.JOptionPane"%> 
<% Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    
    
 
 
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lecturer login</title>
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

</style>
    </head>
    <body onload="displayResults()"> 
        <a href="validate.jsp">Login</a>
        <h1><center>Lecturer Sign up:</center></h1>
       
        
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
  "INSERT INTO lectures(username,payroll,email,password)"
          +"values(?,?,?,?)");
          
   
            
        }catch (SQLException e){
            
       
      e.printStackTrace();
    }     
    }
    public int setActors(String username,String regno,String email,
            String password){
        int result=0;
        try{
          insertActors.setString(1,username);
          insertActors.setString(2,regno); 
          insertActors.setString(3,email); 
          insertActors.setString(4,password);
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
    result=actor.setActors(username,regno,email,password);
}
      %>
       
       <div align="center"> 
        <div id ="lec">    
 <fieldset style="height:"50%"><legend>Lecturer Create Account</legend>    
        
        <form name="Myform" action="lecregprocess.jsp" method="POST">
            
          
            <table>
 <label>Username:</label><br><br><input type="text" name="username" required size="50" /><br>
 <label>Payroll Number:</label><br><br><input type="text" name="regno" required size="50" /><br>
 <label>Email:</label><br><br><input type="email" name="email" required size="50" /><br>
<label>Password:</label><br><br><input type="password" name="password" required size="50" /><br>    

<input type="hidden" name="hidden" value="<%= result %>" />
   
<input type="submit" value="Submit" name="submit" />
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
  alert("Registered successfully,click to Login!")
  history.back();
  
      }
  }
  //-->
</script>
</body>
</html>


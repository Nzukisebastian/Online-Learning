`<%-- 
    Document   : Loginprocess
    Created on : Mar 7, 2017, 5:38:25 PM
    Author     : NZUKI
--%>
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

#input{color:red;}

</style>
</head>
<body>


<%@page import="java.sql.*"%>

<%
try{
String on="on";    
String regno=request.getParameter("txtregno");
String pass=request.getParameter("pass");
session.setAttribute("txtregno",regno); 
Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/java_db","root","");  
           Statement st=con.createStatement();
           st.executeUpdate("update student set status='"+on+"' WHERE regno='"+regno+"'");//update
           ResultSet rs=st.executeQuery("select * from student where regno='"+regno+"' and password='"+pass+"'");
           int count=0;
           while(rs.next()){
           count++;
          }
          if(count>0){
              
              %>
 <script>
     function Redirect(){
         window.location="view_notes.jsp";
     }
     document.write(' Please wait,You will be redirected shortly....');
     setTimeout('Redirect()',5000);
 </script><%
//session.setAttribute("txtregno", regno); 
//session.setMaxInactiveInterval(60);
           
           }
          else{
           response.sendRedirect("validate.jsp");
          }
        }
    catch(Exception e){
    System.out.println(e);
}
%>

</body>
</html>
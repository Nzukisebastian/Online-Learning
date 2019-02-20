<%-- 
    Document   : view_notesprocess
    Created on : Mar 9, 2017, 6:28:00 PM
    Author     : NZUKI
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="view_notes.jsp">back</a>
        <h2><font color="red"> NOTES FROM LECTURER:</font></h2>    
 <%
try{
String name=request.getParameter("name");
String code=request.getParameter("code");

Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/java_db","root","");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from notes_assigno where payroll='"+name+"' and code='"+code+"'");
           
           if(rs.next()){
           
          
         %>COURSE CODE:<%  out.println(rs.getString("code"));%><br><br><%
         %>NOTES:<br><br><%  out.println(rs.getString("note"));
          }else {%>
         <script>
     alert("No notes or assignment found!")
     history.back();
 </script><%
//session.setAttribute("txtregno", regno); 
//session.setMaxInactiveInterval(60);
           
          // }
         // else{
         //  response.sendRedirect("index.jsp");
         }
        }
    catch(Exception e){
    System.out.println(e);
}
%> 
</body>
</html>

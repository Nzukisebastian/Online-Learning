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
        <h2><font color="red"> NOTES FROM LECTURER:</font></h2>    
 <%
try{
String name=request.getParameter("name");
String code=request.getParameter("code");
String year=request.getParameter("year");

Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/java_db","root","");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select date from note where payroll='"+name+"' and code='"+code+"' and year='"+year+"'");
           
           if(rs.next()){
         %>:<%  out.println(rs.getString("programme"));%><br><br><%    
          %>LECTURER:<% out.println(rs.getString("payroll"));%><br><br><%
         %>COURSE CODE:<%  out.println(rs.getString("code"));%><br><br><%
         %>NOTES:<br><br><%  out.println(rs.getString("notes"));
          }else {%>
         <script>
     function Redirect(){
         window.location="view_notes.jsp";
     }
     document.write(' Verifying your details...You will be directed to next page shortly');
     setTimeout('Redirect()',5000);
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

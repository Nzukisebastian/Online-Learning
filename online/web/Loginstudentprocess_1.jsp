`<%-- 
    Document   : Loginprocess
    Created on : Mar 7, 2017, 5:38:25 PM
    Author     : NZUKI
--%>


<%@page import="java.sql.*"%>

<%
try{
String regno=request.getParameter("txtregno");
String pass=request.getParameter("pass");
session.setAttribute("txtregno",regno); 
Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/java_db","root","");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from student where regno='"+regno+"' and password='"+pass+"'");
           int count=0;
           while(rs.next()){
           count++;
          }
          if(count>0){
              
              %>
 <script>
     function Redirect(){
         window.location="student_account.jsp";
     }
     document.write(' Please wait,You will be redirected shortly....');
     setTimeout('Redirect()',5000);
 </script><%
//session.setAttribute("txtregno", regno); 
//session.setMaxInactiveInterval(60);
           
           }
          else{
           response.sendRedirect("index.jsp");
          }
        }
    catch(Exception e){
    System.out.println(e);
}
%>
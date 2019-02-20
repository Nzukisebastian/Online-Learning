

<%-- 
    Document   : Loginprocess
    Created on : Mar 7, 2017, 5:38:25 PM
    Author     : NZUKI
--%>


<%@page import="java.sql.*"%>

<%
try{
String payroll=request.getParameter("payroll");
String pass=request.getParameter("pass");
//session.setMaxInactiveInterval(60);

Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/java_db","root","");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from lectures where payroll='"+payroll+"' and password='"+pass+"'");
           int count=0;
           while(rs.next()){
           count++;
          }
          if(count>0){
  session.setAttribute("payroll",payroll); 
  
              %>
 <script>
     function Redirect(){
         window.location="insertnotes.jsp";
     }
     document.write(' Verifying your details...You will be directed to next page shortly');
     setTimeout('Redirect()',5000);
 </script><%
//session.setAttribute("payroll", payroll); 

           
           }
          else{
           response.sendRedirect("index.jsp");
          }
        }
    catch(Exception e){
    System.out.println(e);
}
%>
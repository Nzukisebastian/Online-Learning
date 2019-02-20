<%@page import="java.util.Arrays.*"%>
<%@page import="java.sql.*"%>

<%
 
    
String payroll=(String)session.getAttribute("payroll");
 String regse=(String)session.getAttribute("regno");
String test="test";
String m=null,mn=null;

String comment=request.getParameter("comment");
PreparedStatement ps;
Connection con;
ResultSet rs=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/java_db","root","");
Statement st=con.createStatement();
ps=con.prepareStatement("insert into comment values (?,?,?)");
ps.setString(1,comment);
ps.setString(2,payroll);
ps.setString(3,regse);
int insertResult=ps.executeUpdate();
if(insertResult !=0){
out.println("you have successfully uploaded comment!");
%><a href="lec_insertcodeprocess2.jsp">SELECT NEXT STUDENT.</a><%
}
%>
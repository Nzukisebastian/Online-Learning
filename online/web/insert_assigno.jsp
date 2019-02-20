
<%@page import="java.sql.*"%>
<%@page import ="java.util.logging.Logger"%>
<%@page import ="javax.swing.JOptionPane"%> 
<% Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>student account</title>
</head>
<body>
   
<a href='student_account.jsp'>back</a>
    
    <%
String date=new String(); 
try{
   
String name=request.getParameter("name");
String code=request.getParameter("code");
String year=request.getParameter("year");

Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/java_db","root","");  
           Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select date from note where payroll='"+name+"' and code='"+code+"' and academic_year='"+year+"'");
           
           if(rs.next()){
               
          date=rs.getString("date");
          session.setAttribute("date",date); 
          if(date!=null){
          System.out.println("success"); 
          //String str="student_account.jsp";%>
          <jsp:forward page="student_account.jsp" ></jsp:forward >
          <%   
          }
         
          }else{%>
          <script>
               alert("The assignment is not submitted!")
               history.back();
               </script>
           <%}}
    catch(Exception e){
    System.out.println(e);
}
%> 
 <script type="text/javascript">
function show(get){
	if(document.getElementById(get).style.display=="none"){
		document.getElementById(get).style.display="";
	}else{document.getElementById(get).style.display="none";
	}
	}
</script>
   
</body>
</html>
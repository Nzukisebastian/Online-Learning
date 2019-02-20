
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
#assignment{position:absolute;top:10px;left:11%;}
#logout{position:absolute;top:10px;left:25%;}
#notes{position:absolute;top:10px;left:1%;}
#radio{position:absolute;top:22px;left:15%;}
#head{background-color:grey;
        font-size:30px;
		color:white;
		width:100%;
		height:50px;
	    position:absolute;
        top:0px;
left:1px;}
        </style>
        <script type="text/javascript">
function show(get){
	if(document.getElementById(get).style.display=="none"){
		document.getElementById(get).style.display="";
	}else{document.getElementById(get).style.display="none";
	}
	}
</script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
   <div id="head">
<div id="radio"><input type="radio" checked></div>
</div>
<div id="logout"><form action="logout.jsp" method="post" target="_parent"><input name='view' type='submit'
value='logout'></form></div>         
 <div id="assignment"><form action="" method="post" target="_parent"><input name='view' type='submit'
value='Access Assignment'onmouseover="show('showoffice');">
 <div id="showoffice" style="display:none;">
<a href="lec_insertcode.jsp">Course code</a><br>
<a href="student_account.jsp"> view students</a>
</div></form></div>   

<div id="notes"><form action="lec_account.jsp" method="post" target="_parent"><input name='view' type='submit'
value='Upload Notes'></form></div><br><br>     
        <h2><font color='blue'>The following students have submitted their assignment,select student to view assignment!</font></h2>       
 <form action="view_assigno.jsp" method="POST" target="_parent">
<table width="800" border="5" cellpadding="1" cellspacing="1">
<style>
table{color:purple;
font-size:16px;
}
</style>
<tr>
   
<th>REGISTRATION NO</th>
<th>PROGRAMME</th>
<th>COURSE_TITLE:</th>
<th>COURSE_CODE:</th>
<th>SELECT</th> 
</tr>       
        
 <%
try{

//String code=request.getParameter("code");
//session.setAttribute("code",code); 
String payroll=(String)session.getAttribute("payroll");
String code=(String)session.getAttribute("code");
String notseen="notseen";
Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost/java_db","root","");  
      Statement st=con.createStatement();
           ResultSet rs=st.executeQuery("select * from assignment where lecturer='"+payroll+"' and code='"+code+"'and status='"+notseen+"'");
           int i=0;
           
         while(rs.next()){
             
 String regno=rs.getString("regno");
 String programme=rs.getString("programme");
 String title=rs.getString("title");
 String codes=rs.getString("code");
 
 %>
         
        <tr> 
  
          <td><%out.println(regno);%></td>    
          <td><% out.println(programme);%></td>
          <td><%out.println(title);%></td>
         <td><%out.println(codes);%></td>
<td><input type='radio' name='txtregno' value=<%=regno%> </td>          
         </tr>
 <% }
        }
    catch(Exception e){
    System.out.println(e);
}
%> 
</table>
<input type='submit' name='submit' value='submit query'>
</form>
</body>
</html>

<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.*"%>
<%
ServletOutputStream output = response.getOutputStream();
//String connectionURL = "jdbc:mysql://192.168.10.112:3306/file";;;;;
//String Content=new String("");
Blob file=null;
byte[]filedata=null;
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/java_db","root","");
Statement st=con.createStatement();
ResultSet rst= st.executeQuery("select file_data from files where id=3");
if(rst.next())
{
file=rst.getBlob("file_data");
filedata=file.getBytes(1,(int)file.length());
}
con.close();
}catch(Exception e){
System.out.println("Exception caught"+e.getMessage());
}
//byte requestBytes[] = filedata.getBytes();
//ByteArrayInputStream bis = new ByteArrayInputStream(requestBytes);
//response.reset();
response.setContentType("application/pdf");
response.setHeader("Content-disposition","attachment; filename=" +"file.pdf");
response.setContentLength(filedata.length);
response.getOutputStream().flush();
//OutputStream output=response.getOutputStream();
output.write(filedata);
output.flush();

%>


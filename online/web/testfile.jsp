
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%
if(request.getParameter("submit")!=null){
    String lecturer=new String();
    String code=new String();
    //String assigno=new String();
    String regno=(String)session.getAttribute("txtregno");
    
    if(request.getParameter("name")!=null){
   lecturer= request.getParameter("name"); 
   session.setAttribute("name",lecturer); 
    }
    if(request.getParameter("code")!=null){
   code = request.getParameter("code");
   session.setAttribute("code",code); 
    }}
%>
<%
String lecturer=(String)session.getAttribute("name");
String regno=(String)session.getAttribute("txtregno");
String contentType = request.getContentType();
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while (totalBytesRead < formDataLength) {
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
String saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
out.println(saveFile);
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

FileOutputStream fileOut = new FileOutputStream(saveFile);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();

%>
<%

//String code=(String)session.getAttribute("code");
//String lecturer=(String)session.getAttribute("name");
Connection connection = null;
//String connectionURL = "jdbc:mysql://localhost:3306/java_db";
ResultSet rs = null;
PreparedStatement psmnt = null;
FileInputStream fis;
try {
 
Class.forName("com.mysql.jdbc.Driver").newInstance();
connection = DriverManager.getConnection("jdbc:mysql://localhost/java_db","root","");
File f = new File(saveFile);
psmnt = connection.prepareStatement("insert into file(file_data,regno,lecturer) values(?,?,?)");
fis = new FileInputStream(f);
psmnt.setBinaryStream(1, (InputStream)fis, (int)(f.length()));
//psmnt.setString(2,code);

psmnt.setString(2,regno);
psmnt.setString(3,lecturer);

int s = psmnt.executeUpdate();

}
catch(Exception e){e.printStackTrace();}
}
%> 
  
  
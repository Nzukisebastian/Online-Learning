<%@ page language="java" %>
<Html>
<HEAD><TITLE>Display file upload form to the user</TITLE>
    
</HEAD>

<BODY>
<FORM ENCTYPE="multipart/form-data" ACTION="upload.jsp"METHOD='POST'>
<br><br><br>
<center><table border="2" >
<tr><center><td colspan="2"><p align="center"><B>UPLOAD THE FILE</B><center></td></tr>
<tr><td><b>Choose the file To Upload:</b>
</td>
<td><INPUT NAME="file" TYPE="file" accept="application/pdf" id="file_upload" ></td></tr>
<tr><td colspan="2">
<p align="right"><INPUT TYPE="submit" VALUE="Send File"onclick="sub()" ></p></td></tr>
<table>
</center>
</FORM>
</BODY>
</HTML>

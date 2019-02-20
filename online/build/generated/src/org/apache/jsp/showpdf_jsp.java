package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;

public final class showpdf_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");

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


      out.write('\n');
      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

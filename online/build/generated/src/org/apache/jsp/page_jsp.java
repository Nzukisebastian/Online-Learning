package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class page_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<Html>\n");
      out.write("<HEAD><TITLE>Display file upload form to the user</TITLE>\n");
      out.write("    \n");
      out.write("</HEAD>\n");
      out.write("\n");
      out.write("<BODY>\n");
      out.write("<FORM ENCTYPE=\"multipart/form-data\" ACTION=\"upload.jsp\"METHOD='POST'>\n");
      out.write("<br><br><br>\n");
      out.write("<center><table border=\"2\" >\n");
      out.write("<tr><center><td colspan=\"2\"><p align=\"center\"><B>UPLOAD THE FILE</B><center></td></tr>\n");
      out.write("<tr><td><b>Choose the file To Upload:</b>\n");
      out.write("</td>\n");
      out.write("<td><INPUT NAME=\"file\" TYPE=\"file\" accept=\"application/pdf\" id=\"file_upload\" ></td></tr>\n");
      out.write("<tr><td colspan=\"2\">\n");
      out.write("<p align=\"right\"><INPUT TYPE=\"submit\" VALUE=\"Send File\"onclick=\"sub()\" ></p></td></tr>\n");
      out.write("<table>\n");
      out.write("</center>\n");
      out.write("</FORM>\n");
      out.write("</BODY>\n");
      out.write("</HTML>\n");
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

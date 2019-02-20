package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class container_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write(" <html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <!-- Bootstrap core CSS -->\n");
      out.write("        <link href=\"assets/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Custom styles for this template -->\n");
      out.write("        <link href=\"assets/css/signin.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/css/login.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <script src=\"assets/js/bootstrap.js\"></script>\n");
      out.write("        <title>Sign UP</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("            <div class=\"clearfix\"></div>\n");
      out.write("            <div class=\"col-md-6 col-md-offset-3\">\n");
      out.write("                <div class=\"panel panel-default login\">\n");
      out.write("                    <div class=\"panel-heading\">Register Here</div>\n");
      out.write("                    <div class=\"panel-body\">\n");
      out.write("                        <form class=\"form-horizontal\" role=\"form\" method=\"post\" action=\"Insertdata\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"firstname\" class=\"col-sm-3 control-label\"> First Name</label>\n");
      out.write("                                <div class=\"col-sm-8\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"firstname\"  name=\"fname\" placeholder=\"First Name\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"lastname\" class=\"col-sm-3 control-label\"> Last Name</label>\n");
      out.write("                                <div class=\"col-sm-8\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"lastname\"  name=\"lname\" placeholder=\"Last Name\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"adress\" class=\"col-sm-3 control-label\">Address</label>\n");
      out.write("                                <div class=\"col-sm-8\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"address\"  name=\"address\" placeholder=\"Address\">\n");
      out.write("                                </div>\n");
      out.write("                            </div> \n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"inputEmail3\" class=\"col-sm-3 control-label\">Email</label>\n");
      out.write("                                <div class=\"col-sm-8\">\n");
      out.write("                                    <input type=\"email\" class=\"form-control\" id=\"inputEmail3\"  name=\"email\" placeholder=\"Email\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <label for=\"inputPassword3\" class=\"col-sm-3 control-label\">Password</label>\n");
      out.write("                                <div class=\"col-sm-8\">\n");
      out.write("                                    <input type=\"password\" class=\"form-control\" id=\"inputPassword3\" name=\"password\" placeholder=\"Password\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <div class=\"col-sm-offset-3 col-sm-10\">\n");
      out.write("                                    <button type=\"submit\" class=\"btn btn-default\"\">Register</button>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>     \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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

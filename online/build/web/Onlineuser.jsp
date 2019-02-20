
<%@ page import="Onlinecounter.SessionCounter"%>
<html>
<head>
    <title>Session Counter</title>
</head>
<body>
    <?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE web-app
        PUBLIC
        "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN"
        "http://java.sun.com/dtd/web-app_2_3.dtd">

    <web-app>
    <display-name>Servlet Examples</display-name>

    <listener>
        <listener-class>
            Onlinecounter.SessionCounter
        </listener-class>
    </listener>

    <session-config>
        <session-timeout>1</session-timeout>
    </session-config>
    </web-app>
    
<% 
    SessionCounter counter = (SessionCounter) session.getAttribute(
            SessionCounter.COUNTER); 
%>

Number of online user(s): <%= counter.getActiveSessionNumber() %>
</body>
</html>
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE web-app
        PUBLIC
        "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN"
        "http://java.sun.com/dtd/web-app_2_3.dtd">



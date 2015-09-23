<%--
  Created by IntelliJ IDEA.
  User: Luis
  Date: 23/09/15
  Time: 3:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title></title>
  </head>
  <body>
  <%
    java.util.Date now = new java.util.Date();
    String since ="Sitio online desde : Wed Sep 23 03:43:39 UTC 2015";
    String hello = "Luis manda saludos a todos. ";
  %>
  <%=
  hello
  %>
  <p align="left"><%=
    "Fecha actual = " + now
    %>
  </p>

  <p align="right"><%=
  since
  %>

  </body>
</html>

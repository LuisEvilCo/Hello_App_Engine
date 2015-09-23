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
    <title>Hello App Engine</title>

    <script type="text/javascript">
      var timer = null;

      function start(){
        /*var time = new Date();
        var hours = time.getHours();
        var minutes = time.getMinutes();
        minutes=((minutes < 10) ? "0" : "") + minutes;
        var seconds = time.getSeconds();
        seconds=((seconds < 10) ? "0" : "") + seconds;
        var display = = hours + ":" + minutes + ":" + seconds;*/
        document.forms[0].display.value = new Date();
        timer = setTimeout("start()",1000)
      }
    </script>
  </head>
  <body onload="start()">
  <%
    java.util.Date now = new java.util.Date();
    String since ="Sitio online desde : Wed Sep 23 03:43:39 UTC 2015\n";
    String hello = "Luis manda saludos a todos. \n";
  %>
  <%=
  hello
  %>
  <form>
    <p>
    <input type="text" name="display" size="100" style="border: none; background: transparent;" readonly title="input"/>
    </p>
  </form>


  <p align="right"><%=
  since
  %>

  </body>
</html>

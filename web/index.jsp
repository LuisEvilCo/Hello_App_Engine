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

    <meta charset="utf-8">

    <script src="bower_components/webcomponentsjs/webcomponents-lite.js"></script>
    <script>
      window.Polymer = window.Polymer || {};
      window.Polymer.dom = 'shadow';
    </script>

      <link rel="import" href="import.html">
      <link rel="stylesheet" href="style.css">
      <script src="script.js" type="text/javascript"></script>

  </head>
  <body onload="start()">
  <%
    String since ="Online since : Wed Sep 23 03:43:39 UTC 2015\n";
  %>
  <paper-toolbar>
      <paper-icon-button img draggable="false" src="https://assets-cdn.github.com/images/modules/logos_page/Octocat.png" class="style-scope iron-icon" ></paper-icon-button>
      <span class="title">Hi !</span>
      <input type="text" name="display" readonly size="100" style="border: none; background : transparent; color:white; " title="Current Date" id="current_date"/>
      <paper-icon-button icon="refresh" onClick="window.location.reload()"></paper-icon-button>
      <paper-icon-button icon="add">+</paper-icon-button>
      <paper-icon-button icon="polymer"></paper-icon-button>
  </paper-toolbar>
  <form>
    <p>

    </p>
  </form>

  <div align="center">
      <paper-material elevation="2">
          <div align="center">
              <!-- 3. Declare the element. Configure using its attributes. -->
              <paper-input label="Your name here" style="width: 40%" align="left"></paper-input>
              <paper-button raised>Say Hello</paper-button>
              <p></p>
              <div id="greeting"></div>
          </div>
      </paper-material>
  </div>

  <script>
      // To ensure that elements are ready on polyfilled browsers,
      // wait for WebComponentsReady.
      document.addEventListener('WebComponentsReady', function() {
          var input = document.querySelector('paper-input');
          var button = document.querySelector('paper-button');
          var greeting = document.getElementById("greeting");
          button.addEventListener('click', function() {
              greeting.textContent = 'Luis manda saludos a : ' + input.value;
          });
      });
  </script>

  <p align="right"><%=
  since
  %>

  </body>
</html>

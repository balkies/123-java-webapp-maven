<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setAttribute("pageHeading", "MK Pets!");
%>

<%!
 private static int counter = 0;
 %>
<%
  String visitor = ++counter + " Visitors";
%>
<div class="center">
  <p>Welcome to my store!</p>
</div>

<p>Contact me at mkpets@gmail.com</p>
<p>The number of visitors is <%= visitor %></p>
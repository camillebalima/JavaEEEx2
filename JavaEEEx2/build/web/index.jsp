<%-- 
    Document   : index
    Created on : Jan 10, 2020, 8:42:29 AM
    Author     : Camille Wendpulungo Balimas-
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
String message = "";
String start = ""; 
String countTo = "";
String list = "";
try {
        if(request.getParameter("start") != null) {
            start = request.getParameter("start");
        }
        if(request.getParameter("countto") != null) {
            countTo = request.getParameter("countto");
        }
        if(!start.equals("") && !countTo.equals("")){
            int startInt = Integer.parseInt(start);
            int countToInt = Integer.parseInt(countTo);
            
            if(startInt > countToInt){
               throw new Exception("The start int cannot be greater than count") ;
            }
            else{
                for(int i = startInt; i <= countToInt; i++){
                    list += "<li>" + Integer.toString(i) + "</li>";
                }
            }
        }
        else{
            message = "No query string parameter present";
        }
    } catch (Exception e) {
        message = "<p style='color:Red> An error occured </p>";
        message += "<p style='color:Red>" + e.getMessage() + "</p>";
    }
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p><%= start %></p>
        <p><%= countTo %></p>
        <%if(!message.equals(""))%><div style="background-color: pink;min-height: 20px">
            <%= message %>
        </div>
        
        <ul><%= list%></ul>
    </body>
</html>

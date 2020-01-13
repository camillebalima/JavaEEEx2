<%-- 
    Document   : vehiclemakes
    Created on : Jan 10, 2020, 10:02:27 AM
    Author     : Camille Wendpulungo Balima
--%>

<%@page import="java.util.List"%>
<%@page import="com.nbcc.wmad.vehiclemakes.Make"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
    String vehicleList = "";
    Make make = new Make();
    Make queryMake = null;
    

    if (id != null) {
        make = new Make();
        queryMake = make.getMake(Integer.parseInt(id));
    }
    
    List<Make> makes = make.getMakes();
    
for(Make m : makes){
    vehicleList += "<li>" + m.getName()+ "</li>";
}
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            *{padding: 20px}
        </style>
    </head>

    <body>
        <%if(queryMake != null) {%>
        <%= queryMake.getId()%> </br>
        <%= queryMake.getName() %> </br>
        <a href="vehiclemakes.jsp">Back to list</a>
        <%} else {%><ul><%= vehicleList %></ul>
        <%}%>
    </body>
</html>

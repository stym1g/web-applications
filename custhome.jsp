

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Foody</title>
        <style>
            a{
                color:white;
                text-decoration: none;
                
            }
            .c1{
                width:200px;
                height:50px;
                font-size:20px;
                font-weight:bold;
                border-style:solid;
                background:#16a085;
                margin-top:500px;
                padding:10px;
               
            }
            .c1:hover{
                width:200px;
                height:50px;
                font-size:20px;
                font-weight:bold;
                border-style:solid;
                background:#ec7063;
                margin-top:500px;
                padding:10px;
               
            }
             .c2{
                width:200px;
                height:50px;
                font-size:20px;
                font-weight:bold;
                border-style:solid;
                magrin-left:600px;
                margin-top:500px;
                padding:10px;
                background:#16a085;
              
                
            }
            .c2:hover{
                width:200px;
                height:50px;
                font-size:20px;
                font-weight:bold;
                border-style:solid;
                magrin-left:600px;
                margin-top:500px;
                padding:10px;
                background:#ec7063;
              
                
            }
        </style>
    </head>
    <body>
        
        <h2> <%
     String un=session.getAttribute("userid").toString();
     out.println("Welcome "+un);
     %>
        </h2> <%@include file="cuhead.jsp" %>
        <HR>
     
       
        
    </body>
</html>

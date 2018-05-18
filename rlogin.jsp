

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FoodyRestorentLogin</title>
        <style>
            .p1{
                width:450px;
                margin:auto;
                margin-top:100px;
                background:green;
                opacity:.8;
                padding:10px;
                text-align:center;
                font-size:24px;
                color:white;
            }
            .t1{
                width:350px;
                font-size:18px;
                padding:5px;
                border-radius:5px;
                margin-left:20px;
                margin-bottom:5px;
            }
            .t2{ width:365px;
                font-size:18px;
                padding:5px;
                border-radius:5px;
                margin-left:20px;
                margin-bottom:5px;
            }
            </style>
    </head>
    <body>
      
        <form action="rcheck.jsp" class="p1">
           Enetr username and password
            <input type="text" name="run" placeholder="Enter username "  class="t1"/>
            <input type="password" name="rps" placeholder="Enter Passowrd "  class="t1"/>
            <input type="submit"  class="t2" value="SignIn"/>
              <%
            if(request.getParameter("msg")!=null)
            out.println(request.getParameter("msg"));
        
        %>
        <BR>
        <a href="index.jsp" style="color:white;text-decoration:none;">Home</a>
        </form>
    </body>
</html>

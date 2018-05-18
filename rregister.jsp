

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rasoi</title>
       <style>
           .frm{
               width:300px;
               margin:auto;
               border-style:solid;
               padding:30px;
               margin-top:100px; 
               text-align:center;
               background: #100e38 ;
               border-radius:20px;
               color:white;
           }
           .txt{
               width:280px;
               font-size:16px;
               color:green;
               margin-bottom:10px;
               border-radius:4px;
               padding:2px;
               
           }
           .btn{
               width:290px;
               font-size:16px;
               color:red;
               margin-bottom:10px;
               border-radius:4px;
               padding:2px;
               
           }
           .txt:focus{
               width:280px;
               font-size:16px;
               color:green;
               margin-bottom:10px;
               border-radius:4px;
               border-color:red;
               
           }
           </style>
    </head>
    <body>
        <%@include file="uhead.jsp"%>
        <form action="rdoregister.jsp" class="frm">
            <h2>Register Form</h2>
            <input type="text" name="rname" value="" placeholder="Resturant Name" class="txt"/>
            <input type="text" name="cno" value="" placeholder="Contact no" class="txt"/>
            <input type="text" name="emailid" value=""  placeholder="Email id" class="txt"/>
            <input type="text" name="run" value="" placeholder="User Name" class="txt"/>
            <input type="text" name="rps" value="" placeholder="Password" class="txt"/>
            <input type="text" name="details" value="" placeholder="Details" class="txt"/>
            <input type="Submit"  class="btn"/>
               <%
            if(request.getParameter("msg")!=null)
            out.println(request.getParameter("msg"));
        
        %>
            
        </form>
    </body>
</html>

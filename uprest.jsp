<%-- 
    Document   : check
    Created on : Feb 2, 2018, 3:10:52 AM
    Author     : admin pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rasoi/title>
    </head>
    <body>
        <%
        MyCon x=new MyCon();
        Connection c=x.tcon();
        
        
        int id=Integer.parseInt(request.getParameter("id"));
        PreparedStatement pst=c.prepareStatement("update rest set status='true' where id=?");
        
        pst.setInt(1,id);
        int y=pst.executeUpdate();
        if(y>0){
            
           
        response.sendRedirect("adminhome.jsp?msg=Approved");
        }
        else
        {
        response.sendRedirect("adminhome.jsp?msg=Error");
        }
        
        
        
        %> <div style="width:100%;background:red;color:white;text-align:center;font-size:24px;">
    <a href="http://www.manalsoftech.com" style="color:white;text-decoration:none;">copyright @rasoi...online food ordering system</a>
</div>
    </body>
</html>



<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Foody/title>
    </head>
    <body>
        <%
        MyCon x=new MyCon();
        Connection c=x.tcon();
        String run,rps;
        run=request.getParameter("run");
        rps=request.getParameter("rps");
        PreparedStatement pst=c.prepareStatement("select * from restaurent where run=? and rps=?");
        pst.setString(1,run);
        pst.setString(2,rps);
        ResultSet rs=pst.executeQuery();
        if(rs.next()){
             session.setAttribute("rname",rs.getString("rname"));
            session.setAttribute("userid",run);
        response.sendRedirect("resthome.jsp");
        }
        else
        {
        response.sendRedirect("rlogin.jsp?msg=Invalid Login Details");
        }
        
        
        
        %>
         
    </body>
</html>

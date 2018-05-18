

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
        String rname,cno,emailid,run,rps,details;
        rname=request.getParameter("rname");
        cno=request.getParameter("cno");
        emailid=request.getParameter("emailid");
        run=request.getParameter("run");
        rps=request.getParameter("rps");
        details=request.getParameter("details");
        PreparedStatement pst=c.prepareStatement("insert into restaurent(rname,cno,emailid,run,rps,details) values(?,?,?,?,?,?)");
        pst.setString(1,rname);
        pst.setString(2,cno);
        pst.setString(3,emailid);
        pst.setString(4,run);
        pst.setString(5,rps);
        pst.setString(6,details);
        
        int y=pst.executeUpdate();
        if(y>0){
            
           
      response.sendRedirect("register.jsp?msg=Registration Successful");
        }
        else
        {
        response.sendRedirect("register.jsp?msg=Registration UnSuccessful");
        }
        
        
        
        %>
    </body>
</html>

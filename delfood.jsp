<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
		 String fid=request.getParameter("fid");
            MyCon x=new MyCon();
        Connection c=x.tcon();
        Connection c1=x.tcon();
        
       PreparedStatement pst=c.prepareStatement("delete from food where fid=?");
	   pst.setString(1,fid);
       //ResultSet rs=pst.executeQuery();
	   int z=pst.executeUpdate();
       %>
	    <%@include file="food.jsp" %>
    </body>
</html>

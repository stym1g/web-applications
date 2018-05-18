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
        String fname,lname,mono,emailid,un,ps;
		int y=-1;
        fname=request.getParameter("fname");
        lname=request.getParameter("lname");
        mono=request.getParameter("mono");
        emailid=request.getParameter("emailid");
		un=request.getParameter("un");
        ps=request.getParameter("ps");
		Statement stmt=c.createStatement();

		
	  
        PreparedStatement pst=c.prepareStatement("insert into rest(fname,lname,mono,emailid,un,ps) values(?,?,?,?,?,?)");
        pst.setString(1,fname);
        pst.setString(2,lname);
        pst.setString(3,mono);
        pst.setString(4,emailid);
		pst.setString(5,un);
		pst.setString(6,ps);
		 y=pst.executeUpdate();
        
		if(y<0){
       response.sendRedirect("register.jsp?msg=Registration Unsuccessful");
        }
        else
        {
        response.sendRedirect("register.jsp?msg=Registration Successful");
        }
        
        
        
        %>
    </body>
</html>

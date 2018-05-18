

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Foody</title>
    </head>
    <body>
          <%@include file="uhead.jsp" %>
        <table border=1 align=center style="width:800px;border-radius:8px;">
            <%
			String address = request.getParameter("address");
			String op=request.getParameter("poption");
			String custid=request.getParameter("custid");
			 MyCon x=new MyCon();
        Connection c=x.tcon();
    Connection c1=x.tcon();
        PreparedStatement pst=c.prepareStatement("insert into orders(address) values(?) where custid=?");
        pst.setString(1,address);
        pst.setString(2, custid);
       
	if(op=="online"){
		%>
		<%@include file="onlinepayment.jsp" %>
		<%
		}
	else
	{
		%>
		<%@include file="cashondelivery.jsp" %>
		<%
	}
%>

    </body>
</html>

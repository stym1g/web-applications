

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,java.lang.Integer,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Foody</title>
    </head>
    <body>
          <%@include file="uhead.jsp" %>
        <form action="deliveryoption.jsp">
		<br><h1>Address :</h1><input type="text" placeholder="address" name="address" ><BR>
                            
                            <br>
							<h1>Payment Option:</h1>
							 <input type="radio" name="poption" value="cod" checked> Cash on delivery<br>
							 <input type="radio" name="poption" value="online" checked> Pay online<br>
                            <input type="submit"  value="Order">
                            </form>
 

    </body>
</html>

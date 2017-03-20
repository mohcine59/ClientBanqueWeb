<%@page import="Service.BanqueWSProxy"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
	double mt = 0;
	double res = 0;
	if(request.getParameter("montant") != null){
		mt = Double.parseDouble(request.getParameter("montant"));
		BanqueWSProxy stub = new BanqueWSProxy();
		res = stub.convertionEuroToDh(mt);
	}
%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Banque</title>
</head>
<body>
	<form action="banque.jsp">
		Montant: <input type="text" name="montant" value="<%=mt%>">
		<input type="submit" value="OK">
	</form>
	
	<%=mt %> en Euros = <%=res %> en DH
</body>
</html>
<html>
<head>
<title>Hello Bitches!</title>
</head>
<body>
	<h1>Hello Bitches!</h1>
	<p>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from 
		<%= request.getRemoteAddr()  %></p>
	<%@page import="model.Personne"%>
	<%
    		Personne p;
    		try {
        			system.out.println("hola perrrrrsho");
   		 } catch (NullPointerException e) {
        		e.printStackTrace();
    }
%>
</body>

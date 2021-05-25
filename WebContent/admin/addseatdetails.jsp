<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ include file="../connection/connection.jsp" %>
<%
	String hallid=request.getParameter("hallid");
	String totalseats=request.getParameter("totalseats");
    String sections=request.getParameter("sections");
    String sec1capacity=request.getParameter("sec1capacity");
    String sec2capacity=request.getParameter("sec2capacity");
    String sec3capacity=request.getParameter("sec3capacity");
	String query="INSERT INTO CINEBOOK(HALLID,TOTALSEATS,SECTIONS,SEC1CAPACITY,SEC2CAPACITY,SEC3CAPACITY) VALUES(?,?,?,?,?,?)";
	String booked="0";
	
		ps=con.prepareStatement(query);

		//ps.setString(1,moviename);
		//ps.setString(2,hallname);
		ps.setString(1,hallid);
		ps.setString(2,totalseats);
		ps.setString(3,sections);
		ps.setString(4,sec1capacity);
		ps.setString(5,sec2capacity);
		ps.setString(6,sec3capacity);
		int result=ps.executeUpdate();
		con.close();
		
		
		
	
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Seat Details Page</title>
</head>
<body bgcolor="pink">
<form action="admin1.jsp" method="post">
<p><strong>Successfully added seat details</strong></p>
<input name="click here" value="click here" type="submit">
</form>
</body>
</html>
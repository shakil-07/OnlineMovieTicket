<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Properties"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%
Connection con;
PreparedStatement ps;
ResultSet rs;
Statement stmt;

Class.forName("com.mysql.jdbc.Driver").newInstance();
con=DriverManager.getConnection( "......"); 
stmt=con.createStatement();
%>

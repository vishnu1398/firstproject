<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Notes</title>

<%@include file="all_js_css.jsp" %>

</head>
<body>
	
	<div class="container">
		<%@include file="navbar.jsp" %>
		<br>
		<h1 class="text-uppercase">All Notes</h1>
		
		<div class="row">
		
		<div class="col-12">
		
			<%
			Session s = FactoryProvider.getFactory().openSession();
			Query q = s.createQuery("from Note");
			List<Note> list = q.list();
			
			for(Note note:list)
			{
			%>
			<div class="card mt-3">
			  <img class="card-img-top pl-4 pt-4" style="max-width: 100px;" src="img/notes.png" alt="Card image cap">
			  <div class="card-body">
			    <h5 class="card-title"><%= note.getTitle() %></h5>
			    <p class="card-text"><%= note.getContent() %></p>
			    <p><b class="text-primary"><%= note.getAddedDate()%></b></p>
			    <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">DELETE</a>
			    <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary">UPDATE</a>
			  </div>
			</div>
			<%
			}
		
		    s.close();
		
		%>
		
		</div>
		
		</div>
		
		
	</div>
	
</body>
</html>
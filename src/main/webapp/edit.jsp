<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Note</title>

<%@include file="all_js_css.jsp" %>

</head>
<body>

	<div class="container">
    	<%@include file="navbar.jsp" %>
    	<br>
    	<h1>Edit my Note</h1>
    	<%
    		
    		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
    		Session s = FactoryProvider.getFactory().openSession();
    		Note note = (Note)s.get(Note.class, noteId);
    	
    	%>
    	<!-- This is edit notes form -->
    	<form action="UpdateServlet" method="post">
    		
    	  <input value="<%= note.getId()%>" name="noteId" type="hidden"/>
		  <div class="form-group">
		    <label for="title">Title</label>
		    <input
		     required
		     name="title"
		     type="text" 
		     class="form-control"
		     id="title" 
		     aria-describedby="emailHelp"
		     placeholder="Enter a title"
		     value="<%= note.getTitle()%>"/>
		  </div>
		  
		  <div class="form-group">
		    <label for="content">Content</label>
		    <textarea required name="content" id="content" 
		    placeholder="Enter the content" class="form-control"
		    style="height:300px"><%= note.getContent()%>
		    </textarea>
		  </div>
		  
		  <div class="container text-center">
		  	<button type="submit" class="btn btn-success">Save</button>
		  </div>
		  
	   </form>
    </div>

</body>
</html>
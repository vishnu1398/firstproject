<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Notes</title>

<%@include file="all_js_css.jsp" %>

</head>
<body>

 <div class="container">
    	<%@include file="navbar.jsp" %>
    	<br>
    	<h1>Add a new note</h1> 
    	<br>
    	<!-- This is add notes form -->
    	<form action="SaveNoteServlet" method="post">
    	
		  <div class="form-group">
		    <label for="title">Title</label>
		    <input
		     required
		     name="title"
		     type="text" 
		     class="form-control"
		     id="title" 
		     aria-describedby="emailHelp"
		     placeholder="Enter a title"/>
		  </div>
		  
		  <div class="form-group">
		    <label for="content">Content</label>
		    <textarea required name="content" id="content" 
		    placeholder="Enter the content" class="form-control"
		    style="height:300px"></textarea>
		  </div>
		  
		  <div class="container text-center">
		  	<button type="submit" class="btn btn-primary">Add</button>
		  </div>
		  
	   </form>
    </div>

</body>
</html>
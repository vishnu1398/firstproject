<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Note Taker Homepage</title>
    
    <%@include file="all_js_css.jsp" %>
    
  </head>
  <body>
    
    <div class="container">
    	<%@include file="navbar.jsp" %>
    	<br>
    	<div class="card py-5" style="border:none;">
    		<img alt="notes" class="img-fluid mx-auto" style="max-width:400px" src="img/notes.png">
    		<h1 class="text-primary text-center mt-4">Let's start taking notes !</h1>
    		<div class="container text-center">
    			<button class="btn btn-outline-primary text-center">
    			<a href="add_notes.jsp" style="text-decoration:none;">Start now</a>
    			</button>
    		</div>
    	</div>
    </div>

    
  </body>
</html>

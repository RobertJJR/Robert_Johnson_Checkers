<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.io.IOException" import ="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="chk.css" type="text/css">
		<title>CheckerBoard</title>
	</head>
	<body>
	
		<div id = "back">
		<%String height = "h";%>
		<%String width = "w";%>
		<% int w = Integer.parseInt(request.getParameter(width)); %>	
		<% int h = Integer.parseInt(request.getParameter(height)); %>	
   			
   		<%out.write("<h1>Checkerboard: " + w + "w X " + h + "h </h1>");%>
   			
			<%for (int i = 0; i < h; i++) { %>
				<div class="container">
				<%for (int j = 0; j < w; j++) { %>
					<%if( (i+j) % 2 == 0) { %>
						<div class = "box1"></div>
						<%} else { %>
						<div class = "box2"></div>
						<%} %>
					<%} %>
				</div>
				<%} %>
		</div>		
	</body>
</html>
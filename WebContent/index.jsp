<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="WEB-INF/jspf/head.jsp" %>
</head>
<body>
	<div class="container">
		<%@include file="WEB-INF/jspf/header.jsp" %>
		<div class="row">
			<div class="col-md-3">
				<ul class="list-group">
  					<li class="list-group-item">
						<a href="student/add.jsp"> Students </a>
 					</li>
  					<li class="list-group-item">
						<a href="teacher/add.jsp"> Academic Staff </a>
  					</li>
  					<li class="list-group-item">
						<a href=""> Non-Academic Staff </a>
  					</li>
  					<li class="list-group-item">
						<a href=""> Results </a>
  					</li>
					</ul>
			</div>
			<div class="col-md-9">
			</div>
		</div>
		<%@include file="WEB-INF/jspf/footer.jsp" %>
	</div>
</body>
</html>
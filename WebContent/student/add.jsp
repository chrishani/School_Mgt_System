<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../WEB-INF/jspf/head.jsp" %>
</head>
<body>
	<div class="container">
		<%@include file="../WEB-INF/jspf/header.jsp" %>
		<div class="row">
			<div class="col-md-3">
				<ul class="list-group">
  					<li class="list-group-item">
						<a href=""> Students </a>
 					</li>
  					<li class="list-group-item">
						<a href=""> Academic Staff </a>
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
				<%
				if(request.getParameter("msg")!=null){
					out.println("<div class='alert alert-danger'>");
					out.print(request.getParameter("msg"));
					out.println("</div>");
				}
				%>
				<div class="well well-lg">
					<h3> Student Add </h3>
					<hr/>
					<form action="../stdnt_add" method="post" >
						<label> Full Name </label>
						<input type="text" class="form-control" name="name">
						<label> Address </label>
						<input type="text" class="form-control" name="address">
						<label> Father's Name </label>
						<input type="text" class="form-control" name="fname">
						<label> Father's Job </label>
						<input type="text" class="form-control" name="fjob">
						<label> Mother's Name </label>
						<input type="text" class="form-control" name="mname">
						<label> Mother's Job </label>
						<input type="text" class="form-control" name="mjob">
						<label> Contact Number </label>
						<input type="text" class="form-control" name="conno">
						<label> Photo </label>
						<input type="file" class="form-control" name="photo">
						<hr/>
						<input type="submit" value="SAVE" class="btn btn-success">
						<input type="reset" value="RESET" class="btn btn-danger">
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
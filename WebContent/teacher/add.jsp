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
					<h3> Teachers Add </h3>
					<hr/>
					<form action="../teacher_add" method="post" >
						<label> Full Name </label>
						<input type="text" class="form-control" name="name">
						<label> Birthday </label>
						<input type="date" class="form-control" name="bday">
						<label> Gender </label>
						<select name="gender" class="form-control">
							<option value="male">Male</option>
							<option value="female">Female</option>
						</select>
						<label> Address </label>
						<input type="text" class="form-control" name="address">
						<label>Contact No  </label>
						<input type="number" class="form-control" name="fname">
						<label> Position </label>
						<select name="position" class="form-control">
							<option value="principal">Principal</option>
							<option value="vprincipal">Vice Principal</option>
							<option value="teacher">Teacher</option>
						</select>
						<label>Subjects</label>
						<input type="text" class="form-control" name="mname">
						<label>In case Name</label>
						<input type="text" class="form-control" name="mjob">
						<label> Contact Number </label>
						<input type="number" class="form-control" name="conno">
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
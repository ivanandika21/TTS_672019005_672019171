<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Todo Management Application</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>

</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand"> Todo
					App</a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Todos</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${kedaikopi != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${kedaikopi == null}">
					<form action="insert" method="post">
				</c:if>


				<c:if test="${kedaikopi != null}">
					<input type="hidden" name="id" value="<c:out value='${kedaikopi.id}' />" />
				</c:if>
				
				<fieldset class="form-group">
					<label>Makanan</label> <input type="text"
						value="<c:out value='${kedaikopi.makanan}' />" class="form-control"
						name="makanan" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Jumlah Makanan</label> <input type="number"
						value="<c:out value='${kedaikopi.jumlahMkn}' />" class="form-control"
						name="jumlahMkn">
				</fieldset>

				<fieldset class="form-group">
					<label>Minuman</label> <input type="text"
						value="<c:out value='${kedaikopi.minuman}' />" class="form-control"
						name="minuman" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Jumlah Minuman</label> <input type="number"
						value="<c:out value='${kedaikopi.jumlahMnm}' />" class="form-control"
						name="jumlahMnm">
				</fieldset>

				<fieldset class="form-group">
					<label>Verifikasi</label> <select class="form-control"
						name="verifikasi">
						<option value="false">Belum bayar</option>
						<option value="true">Sudah bayar</option>
					</select>
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>

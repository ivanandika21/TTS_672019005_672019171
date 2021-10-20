<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
        <title>Admin Page</title>
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
        <!-- start navbar -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top shadow-sm">
            <div class="container">
                <a href=""><img src="/images/profil.png" alt="" width="50px" /></a>
                <a class="navbar-brand fw-bold ps-3" href="#">Kedai Kopi Mercury (Admin Page)</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index.html">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.html">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Admin</a>
                        </li>
                        <li class="nav-item ps-2">
                            <a href="<%=request.getContextPath()%>/new" class="btn btn-secondary">Add Item</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- stop navbar -->

        <!-- start tabel -->
        <div class="container py-5">
            <h3>Daftar Transaksi</h3>
            <div class="">
                <table class="table table-bordered">
				<thead>
					<tr>
						<th>No Transaksi</th>
						<th>Makanan</th>
						<th>Jumlah Mkn</th>
						<th>Minuman</th>
						<th>Jumlah Mnm</th>
						<th>Verifikasi</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="kedaikopi" items="${listKedaikopi}">

						<tr>
							<td><c:out value="${kedaikopi.id}" /></td>
							<td><c:out value="${kedaikopi.makanan}" /></td>
							<td><c:out value="${kedaikopi.jumlahMkn}" /></td>
							<td><c:out value="${kedaikopi.minuman}" /></td>
							<td><c:out value="${kedaikopi.jumlahMnm}" /></td>
							<td><c:out value="${kedaikopi.verifikasi}" /></td>
							<td>
                                <a class="btn btn-primary" href="edit?id=<c:out value='${kedaikopi.id}' />">Edit</a>&nbsp;&nbsp;
                                <a class="btn btn-danger" href="delete?id=<c:out value='${kedaikopi.id}' />">Delete</a>
                            </td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
            </div>
        </div>
        <!-- stop tabel -->

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
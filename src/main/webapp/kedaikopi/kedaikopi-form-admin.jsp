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
        <title>Mercury</title>
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
        <!-- start navbar -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top shadow-sm">
            <div class="container">
                <img src="https://www.linkpicture.com/q/profil_3.png" alt="" width="50px" />
                <a class="navbar-brand fw-bold ps-3" href="">Kedai Kopi Mercury (Admin Page)</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="<%=request.getContextPath()%>/new">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./kedaikopi/kedaikopi-about.jsp">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<%=request.getContextPath()%>/">Admin</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- stop navbar -->

        <!-- start tabel -->
        <div class="container py-5">
            <div class="container col-md-5">
				<div class="card">
					<div class="card-body">
						<!-- start form -->
						<c:if test="${kedaikopi != null}">
							<form action="update" method="post">
						</c:if>
						<c:if test="${kedaikopi == null}">
							<form action="insert" method="post">
						</c:if>
						<caption>
							<h2>
							<c:if test="${kedaikopi != null}">
		            			Edit Transaksi
		            		</c:if>
								<c:if test="${kedaikopi == null}">
		            			Tambahkan Pesanan
		            		</c:if>
							</h2>
						</caption>
		
						<c:if test="${kedaikopi != null}">
							<input type="hidden" name="id" value="<c:out value='${kedaikopi.id}' />" />
						</c:if>
						
						<fieldset class="form-group">
							<label>Hargatotal</label> <input type="text"
								value="<c:out value='${kedaikopi.hargatotal}' />" class="form-control"
								name="hargatotal" id="harga">
						</fieldset>
						
						<fieldset class="form-group">
							<label>Makanan</label> <input type="text"
								value="<c:out value='${kedaikopi.makanan}' />" class="form-control"
								name="makanan" id="makanan">
						</fieldset>
						
						<fieldset class="form-group">
							<label>Jumlah Makanan</label> <input type="text"
								value="<c:out value='${kedaikopi.jumlahMkn}' />" class="form-control"
								name="jumlahMkn" id="jumlahMkn">
						</fieldset>
		
						<fieldset class="form-group">
							<label>Minuman</label> <input type="text"
								value="<c:out value='${kedaikopi.minuman}' />" class="form-control"
								name="minuman" id="minuman">
						</fieldset>
		
						<fieldset class="form-group">
							<label>Jumlah Minuman</label> <input type="text"
								value="<c:out value='${kedaikopi.jumlahMnm}' />" class="form-control"
								name="jumlahMnm" id="jumlahMnm">
						</fieldset>
		
						<fieldset class="form-group">
							<label>Verifikasi</label> <select class="form-control"
								name="verifikasi">
								<option value="false">Belum bayar</option>
								<option value="true">Sudah bayar</option>
							</select>
						</fieldset>
		
						<button type="submit" class="btn btn-success my-3">Simpan</button>
						</form>
					</div>
				</div>
			</div>
        </div>
        <!-- stop tabel -->

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>



<body>

	<br>
	
</body>
</html>

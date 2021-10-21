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
        <style>
			.modal-backdrop {
				z-index: 0;
			}
        </style>
    </head>
    <body>
    <!-- start navbar -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top shadow-sm">
            <div class="container">
                <img src="https://www.linkpicture.com/q/profil_3.png" alt="" width="50px" />
                <a class="navbar-brand fw-bold ps-3" href="">Kedai Kopi Mercury</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link fw-bold text-danger" href="">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./kedaikopi/about.jsp">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="<%=request.getContextPath()%>/">Admin</a>
                        </li>
                        <li class="nav-item ps-2">
                        	<a href="#myModal" role="button" class="btn btn-danger" data-bs-toggle="modal">Keranjang</a>
                         	<div id="myModal" class="modal fade" tabindex="0">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title">Confirmation</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                        </div>
                                        <div class="modal-body">
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
							            			Edit Todo
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
											
											<div class="py-3">
												<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
												<button type="submit" class="btn btn-success">Pesan</button>
											</div>
											</form>
											<!-- stop form -->
							      		</div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- stop navbar -->
        
        <!-- start jumbotron -->
        <div class="container-fluid g-0 border-bottom">
            <div class="row g-0 align-items-center bg-light">
                <div class="col-md-8">
                	<img src="https://images.unsplash.com/photo-1442512595331-e89e73853f31?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80" width="900">
                </div>
                <div class="col-md-4">
                    <div class="align-self-center text-center py-5">
                    	<img src="https://www.linkpicture.com/q/profil_3.png">
                        <h1>Selamat Datang</h1>
                        <p>Halo Selamat datang di Kedai Kopi Mercury!</p>
                        <a href="#menu" class="btn btn-outline-danger">Pesan Sekarang</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- stop jumbotron -->

        <!-- start menu -->
        <div class="container py-5" id="menu">
            <!-- Makanan -->
            <div class="py-5">
                <h3 class="py-3">Menu Makanan</h3>
                <div class="row row-cols-1 row-cols-md-5 g-4">
                    <div class="col">
                        <div class="card">
                            <img src="https://cdn.pixabay.com/photo/2015/03/26/09/39/fried-chicken-690039__480.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Ayam Kampung Goreng</h5>
                                <a>Rp 15.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mkn-1">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mkn-1" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mkn-1" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://images.unsplash.com/photo-1630315500315-43112e2bfd88?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=773&q=80" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Ayam Kampung Bakar</h5>
                                <a>Rp 17.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mkn-2">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mkn-2" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mkn-2" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://statik.tempo.co/data/2021/05/18/id_1021868/1021868_720.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Ayam Mentega</h5>
                                <a>Rp 12.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mkn-3">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mkn-3" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mkn-3" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://thumbs.dreamstime.com/b/black-pepper-beef-bowl-wood-background-97884836.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Sapi Lada Hitam</h5>
                                <a>Rp 22.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mkn-4">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mkn-4" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mkn-4" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://cdn-2.tstatic.net/style/foto/bank/images/daging-gongso_20180121_195816.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Sapi Gongso</h5>
                                <a>Rp 24.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mkn-5">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mkn-5" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mkn-5" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://cdn.idntimes.com/content-images/post/20200914/ase-9de4f96978e9e0cdb4c94c2eac199d29_600x400.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Sapi Sayur Asem</h5>
                                <a>Rp 20.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mkn-6">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mkn-6" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mkn-6" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="data:image/jpeg;base64,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" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Chicken Katsu</h5>
                                <a>Rp 25.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mkn-7">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mkn-7" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mkn-7" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://thumbs.dreamstime.com/b/nasi-goreng-fried-rice-nasi-goreng-fried-rice-traditional-indonesian-melayu-culinary-122545337.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Nasi Goreng Ayam</h5>
                                <a>Rp 14.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mkn-8">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mkn-8" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mkn-8" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://thumbs.dreamstime.com/b/mie-goreng-fried-noodle-mie-goreng-fried-noodle-traditional-indonesian-chinese-food-122549065.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Mie Goreng Ayam</h5>
                                <a>Rp 14.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mkn-9">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mkn-9" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mkn-9" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://s2.bukalapak.com/img/73681487052/large/data.jpeg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Steak Iga Sapi</h5>
                                <a>Rp 30.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mkn-10">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mkn-10" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mkn-10" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="data:image/jpeg;base64,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" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Siomay</h5>
                                <a>Rp 8.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mkn-11">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mkn-11" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mkn-11" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://thumbs.dreamstime.com/b/indonesian-food-batagor-asian-198397104.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Batagor</h5>
                                <a>Rp 10.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mkn-12">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mkn-12" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mkn-12" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://media.istockphoto.com/photos/roti-bakar-cokelat-grilled-chocolate-sandwich-with-cherry-on-top-of-picture-id1055531958?k=20&m=1055531958&s=612x612&w=0&h=yGHWGw93woh_liT3IR3ds1eK6nvB6Xk1rMZKC8Sl2Jw=" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Roti Bakar Keju</h5>
                                <a>Rp 7.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mkn-13">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mkn-13" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mkn-13" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://images.unsplash.com/photo-1585109649139-366815a0d713?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZnJlbmNoJTIwZnJpZXN8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Kentang Goreng</h5>
                                <a>Rp 10.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mkn-14">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mkn-14" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mkn-14" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://thumbs.dreamstime.com/b/singkong-goreng-indonesian-traditional-food-usually-eaten-morning-evening-weather-rather-cold-made-153597087.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Singkong Goreng</h5>
                                <a>Rp 8.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mkn-15">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mkn-15" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mkn-15" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Minuman -->
            <div class="py-5">
                <h3 class="py-3">Menu Minuman</h3>
                <div class="row row-cols-1 row-cols-md-5 g-4">
                    <div class="col">
                        <div class="card">
                            <img src="https://images.unsplash.com/photo-1541167760496-1628856ab772?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1037&q=80" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Kopi Putih Mercury</h5>
                                <a>Rp 8.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mnm-1">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mnm-1" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mnm-1" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://images.unsplash.com/photo-1534432295314-d934309ea09d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=871&q=80" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Kopi Susu Mercury</h5>
                                <a>Rp 10.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mnm-2">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mnm-2" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mnm-2" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://images.unsplash.com/photo-1461023058943-07fcbe16d735?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Expresso</h5>
                                <a>Rp 11.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mnm-3">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mnm-3" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mnm-3" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://images.unsplash.com/photo-1444418776041-9c7e33cc5a9c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Americano</h5>
                                <a>Rp 11.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mnm-4">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mnm-4" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mnm-4" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://images.unsplash.com/photo-1471922597728-92f81bfe2445?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Cafe Latte</h5>
                                <a>Rp 9.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mnm-5">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mnm-5" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mnm-5" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://images.unsplash.com/photo-1516036213144-bcac9086b5a4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=895&q=80" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Cappuccino</h5>
                                <a>Rp 10.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mnm-6">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mnm-6" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mnm-6" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://images.unsplash.com/photo-1516486392848-8b67ef89f113?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Kopi Tubruk</h5>
                                <a>Rp 6.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mnm-7">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mnm-7" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mnm-7" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://images.unsplash.com/photo-1517578239113-b03992dcdd25?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Kopi V60</h5>
                                <a>Rp 15.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mnm-8">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mnm-8" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mnm-8" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://img.freepik.com/free-photo/cup-hot-butterfly-pea-latte-blue-spirulina-latte-wooden-table_226903-345.jpg?size=626&ext=jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Blue Late</h5>
                                <a>Rp 12.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mnm-9">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mnm-9" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mnm-9" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://images.unsplash.com/photo-1582202736985-a259ba984298?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Coconut Latte</h5>
                                <a>Rp 10.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mnm-10">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mnm-10" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mnm-10" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://images.unsplash.com/photo-1515823064-d6e0c04616a7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Matcha Late</h5>
                                <a>Rp 12.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mnm-11">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mnm-11" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mnm-11" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://images.unsplash.com/photo-1586195831800-24f14c992cea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Chocolate</h5>
                                <a>Rp 8.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mnm-12">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mnm-12" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mnm-12" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://images.unsplash.com/photo-1625574200148-c0954d241f7e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Lemon Tea</h5>
                                <a>Rp 7.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mnm-13">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mnm-13" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mnm-13" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://images.unsplash.com/photo-1613478223719-2ab802602423?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=774&q=80" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Orange Juice</h5>
                                <a>Rp 10.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mnm-14">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mnm-14" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mnm-14" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://images.unsplash.com/photo-1523362628745-0c100150b504?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Mineral Water</h5>
                                <a>Rp 3.000</a>
                                <p class="card-formMakanan">This is a longer card with supporting formMakanan below.</p>
                                <p>Jumlah : <a id="jml-mnm-15">0</a></p>
                                <a href="#" class="btn btn-danger" id="ps-mnm-15" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="ms-mnm-15" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- stop menu -->
		
		<script>
			// Makanan
			var hargatotal = 0;
			var countMkn1 = 0, countMkn2 = 0, countMkn3 = 0, countMkn4 = 0, countMkn5 = 0;
            var countMkn6 = 0, countMkn7 = 0, countMkn8 = 0, countMkn9 = 0, countMkn10 = 0;
            var countMkn11 = 0, countMkn12 = 0, countMkn13 = 0, countMkn14 = 0, countMkn15 = 0;
			var countMnm1 = 0, countMnm2 = 0, countMnm3 = 0, countMnm4 = 0, countMnm5 = 0;
			var countMnm6 = 0, countMnm7 = 0, countMnm8 = 0, countMnm9 = 0, countMnm10 = 0;
			var countMnm11 = 0, countMnm12 = 0, countMnm13 = 0, countMnm14 = 0, countMnm15 = 0;
			var tempMkn = '';
			var tempMnm = '';
			const arrMakanan = [];
			const arrCountMkn = [];
			const arrMinuman = [];
			const arrCountMnm = [];
			
		// MAKANAN
			// MAKANAN 1
			document.getElementById("ps-mkn-1").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMkn = document.getElementById('jumlahMkn');
			    formHarga.value = (hargatotal += 15000);
			    countMkn1 += 1;
			    
			    document.getElementById("jml-mkn-1").innerHTML = countMkn1;
			    
			    tempMkn = ' Ayam Kampung Goreng';
		    	
			    if (arrMakanan.length == 0){
			    	arrCountMkn.push(countMkn1);
			    	formJumlahMkn.value = arrCountMkn;
			    	
			    	arrMakanan.push(tempMkn);
			    	formMakanan.value = arrMakanan[0];
			    } else {
			    	for (var i = 0; i <= arrMakanan.length; i++){
			    		if (arrMakanan.includes(tempMkn)){
			    			for (var j = 0; j <= arrMakanan.length; j++){
			    				if (arrMakanan[j] == ' Ayam Kampung Goreng'){
					    			arrCountMkn[j] = countMkn1;
					    			formJumlahMkn.value = arrCountMkn;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMakanan.push(tempMkn);
			    			arrCountMkn.push(countMkn1);
			    		}
			    	}
			    	formMakanan.value = arrMakanan;
			    	formJumlahMkn.value = arrCountMkn;
			    }
			});
			
			document.getElementById("ms-mkn-1").addEventListener('click', function () {
		    	countMkn1 -= 1;
		    	document.getElementById("jml-mkn-1").innerHTML = countMkn1;
		    	var formJumlahMkn = document.getElementById('jumlahMkn');
		    	for (var i = 0; i <= arrMakanan.length; i++){
		    		if (arrMakanan[i] == ' Ayam Kampung Goreng'){
		    			arrCountMkn[i] = countMkn1;
		    			formJumlahMkn.value = arrCountMkn;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 15000);
		    });
			
			// MAKANAN 2
			document.getElementById("ps-mkn-2").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMkn = document.getElementById('jumlahMkn');
			    formHarga.value = (hargatotal += 17000);
			    countMkn2 += 1;
			    document.getElementById("jml-mkn-2").innerHTML = countMkn2;
			    tempMkn = ' Ayam Kampung Bakar';
			    if (arrMakanan.length == 0){
			    	arrCountMkn.push(countMkn2);
			    	formJumlahMkn.value = arrCountMkn;
			    	arrMakanan.push(tempMkn);
			    	formMakanan.value = arrMakanan[0];
			    } else {
			    	for (var i = 0; i <= arrMakanan.length; i++){
			    		if (arrMakanan.includes(tempMkn)){
			    			for (var j = 0; j <= arrMakanan.length; j++){
			    				if (arrMakanan[j] == ' Ayam Kampung Bakar'){
					    			arrCountMkn[j] = countMkn2;
					    			formJumlahMkn.value = arrCountMkn;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMakanan.push(tempMkn);
			    			arrCountMkn.push(countMkn2);
			    		}
			    	}
			    	formMakanan.value = arrMakanan;
			    	formJumlahMkn.value = arrCountMkn;
			    }
			});
			
			document.getElementById("ms-mkn-2").addEventListener('click', function () {
		    	countMkn2 -= 1;
		    	document.getElementById("jml-mkn-2").innerHTML = countMkn2;
		    	var formJumlahMkn = document.getElementById('jumlahMkn');
		    	for (var i = 0; i <= arrMakanan.length; i++){
		    		if (arrMakanan[i] == ' Ayam Kampung Goreng'){
		    			arrCountMkn[i] = countMkn2;
		    			formJumlahMkn.value = arrCountMkn;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 17000);
		    });
			
			// MAKANAN 3
			document.getElementById("ps-mkn-3").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMkn = document.getElementById('jumlahMkn');
			    formHarga.value = (hargatotal += 12000);
			    countMkn3 += 1;
			    document.getElementById("jml-mkn-3").innerHTML = countMkn3;
			    tempMkn = ' Ayam Mentega';
			    if (arrMakanan.length == 0){
			    	arrCountMkn.push(countMkn3);
			    	formJumlahMkn.value = arrCountMkn;
			    	arrMakanan.push(tempMkn);
			    	formMakanan.value = arrMakanan[0];
			    } else {
			    	for (var i = 0; i <= arrMakanan.length; i++){
			    		if (arrMakanan.includes(tempMkn)){
			    			for (var j = 0; j <= arrMakanan.length; j++){
			    				if (arrMakanan[j] == ' Ayam Mentega'){
					    			arrCountMkn[j] = countMkn3;
					    			formJumlahMkn.value = arrCountMkn;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMakanan.push(tempMkn);
			    			arrCountMkn.push(countMkn3);
			    		}
			    	}
			    	formMakanan.value = arrMakanan;
			    	formJumlahMkn.value = arrCountMkn;
			    }
			});
			
			document.getElementById("ms-mkn-3").addEventListener('click', function () {
		    	countMkn3 -= 1;
		    	document.getElementById("jml-mkn-3").innerHTML = countMkn3;
		    	var formJumlahMkn = document.getElementById('jumlahMkn');
		    	for (var i = 0; i <= arrMakanan.length; i++){
		    		if (arrMakanan[i] == ' Ayam Mentega'){
		    			arrCountMkn[i] = countMkn3;
		    			formJumlahMkn.value = arrCountMkn;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 12000);
		    });

            // MAKANAN 4
			document.getElementById("ps-mkn-4").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMkn = document.getElementById('jumlahMkn');
			    formHarga.value = (hargatotal += 22000);
			    countMkn4 += 1;
			    document.getElementById("jml-mkn-4").innerHTML = countMkn4;
			    tempMkn = ' Sapi Lada Hitam';
			    if (arrMakanan.length == 0){
			    	arrCountMkn.push(countMkn4);
			    	formJumlahMkn.value = arrCountMkn;
			    	arrMakanan.push(tempMkn);
			    	formMakanan.value = arrMakanan[0];
			    } else {
			    	for (var i = 0; i <= arrMakanan.length; i++){
			    		if (arrMakanan.includes(tempMkn)){
			    			for (var j = 0; j <= arrMakanan.length; j++){
			    				if (arrMakanan[j] == ' Sapi Lada Hitam'){
					    			arrCountMkn[j] = countMkn4;
					    			formJumlahMkn.value = arrCountMkn;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMakanan.push(tempMkn);
			    			arrCountMkn.push(countMkn4);
			    		}
			    	}
			    	formMakanan.value = arrMakanan;
			    	formJumlahMkn.value = arrCountMkn;
			    }
			});
			
			document.getElementById("ms-mkn-4").addEventListener('click', function () {
		    	countMkn4 -= 1;
		    	document.getElementById("jml-mkn-4").innerHTML = countMkn4;
		    	var formJumlahMkn = document.getElementById('jumlahMkn');
		    	for (var i = 0; i <= arrMakanan.length; i++){
		    		if (arrMakanan[i] == ' Sapi Lada Hitam'){
		    			arrCountMkn[i] = countMkn4;
		    			formJumlahMkn.value = arrCountMkn;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 22000);
		    });

            // MAKANAN 5
			document.getElementById("ps-mkn-5").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMkn = document.getElementById('jumlahMkn');
			    formHarga.value = (hargatotal += 24000);
			    countMkn5 += 1;
			    document.getElementById("jml-mkn-5").innerHTML = countMkn5;
			    tempMkn = ' Sapi Gongso';
			    if (arrMakanan.length == 0){
			    	arrCountMkn.push(countMkn5);
			    	formJumlahMkn.value = arrCountMkn;
			    	arrMakanan.push(tempMkn);
			    	formMakanan.value = arrMakanan[0];
			    } else {
			    	for (var i = 0; i <= arrMakanan.length; i++){
			    		if (arrMakanan.includes(tempMkn)){
			    			for (var j = 0; j <= arrMakanan.length; j++){
			    				if (arrMakanan[j] == ' Sapi Gongso'){
					    			arrCountMkn[j] = countMkn5;
					    			formJumlahMkn.value = arrCountMkn;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMakanan.push(tempMkn);
			    			arrCountMkn.push(countMkn5);
			    		}
			    	}
			    	formMakanan.value = arrMakanan;
			    	formJumlahMkn.value = arrCountMkn;
			    }
			});
			
			document.getElementById("ms-mkn-5").addEventListener('click', function () {
		    	countMkn5 -= 1;
		    	document.getElementById("jml-mkn-5").innerHTML = countMkn5;
		    	var formJumlahMkn = document.getElementById('jumlahMkn');
		    	for (var i = 0; i <= arrMakanan.length; i++){
		    		if (arrMakanan[i] == ' Sapi Gongso'){
		    			arrCountMkn[i] = countMkn5;
		    			formJumlahMkn.value = arrCountMkn;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 24000);
		    });

            // MAKANAN 6
			document.getElementById("ps-mkn-6").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMkn = document.getElementById('jumlahMkn');
			    formHarga.value = (hargatotal += 20000);
			    countMkn6 += 1;
			    document.getElementById("jml-mkn-6").innerHTML = countMkn6;
			    tempMkn = ' Sapi Sayur Asem';
			    if (arrMakanan.length == 0){
			    	arrCountMkn.push(countMkn6);
			    	formJumlahMkn.value = arrCountMkn;
			    	arrMakanan.push(tempMkn);
			    	formMakanan.value = arrMakanan[0];
			    } else {
			    	for (var i = 0; i <= arrMakanan.length; i++){
			    		if (arrMakanan.includes(tempMkn)){
			    			for (var j = 0; j <= arrMakanan.length; j++){
			    				if (arrMakanan[j] == ' Sapi Sayur Asem'){
					    			arrCountMkn[j] = countMkn6;
					    			formJumlahMkn.value = arrCountMkn;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMakanan.push(tempMkn);
			    			arrCountMkn.push(countMkn6);
			    		}
			    	}
			    	formMakanan.value = arrMakanan;
			    	formJumlahMkn.value = arrCountMkn;
			    }
			});
			
			document.getElementById("ms-mkn-6").addEventListener('click', function () {
		    	countMkn6 -= 1;
		    	document.getElementById("jml-mkn-6").innerHTML = countMkn6;
		    	var formJumlahMkn = document.getElementById('jumlahMkn');
		    	for (var i = 0; i <= arrMakanan.length; i++){
		    		if (arrMakanan[i] == ' Sapi Sayur Asem'){
		    			arrCountMkn[i] = countMkn6;
		    			formJumlahMkn.value = arrCountMkn;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 20000);
		    });

            // MAKANAN 7
			document.getElementById("ps-mkn-7").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMkn = document.getElementById('jumlahMkn');
			    formHarga.value = (hargatotal += 25000);
			    countMkn7 += 1;
			    document.getElementById("jml-mkn-7").innerHTML = countMkn7;
			    tempMkn = ' Chicken Katsu';
			    if (arrMakanan.length == 0){
			    	arrCountMkn.push(countMkn7);
			    	formJumlahMkn.value = arrCountMkn;
			    	arrMakanan.push(tempMkn);
			    	formMakanan.value = arrMakanan[0];
			    } else {
			    	for (var i = 0; i <= arrMakanan.length; i++){
			    		if (arrMakanan.includes(tempMkn)){
			    			for (var j = 0; j <= arrMakanan.length; j++){
			    				if (arrMakanan[j] == ' Chicken Katsu'){
					    			arrCountMkn[j] = countMkn7;
					    			formJumlahMkn.value = arrCountMkn;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMakanan.push(tempMkn);
			    			arrCountMkn.push(countMkn7);
			    		}
			    	}
			    	formMakanan.value = arrMakanan;
			    	formJumlahMkn.value = arrCountMkn;
			    }
			});
			
			document.getElementById("ms-mkn-7").addEventListener('click', function () {
		    	countMkn7 -= 1;
		    	document.getElementById("jml-mkn-7").innerHTML = countMkn7;
		    	var formJumlahMkn = document.getElementById('jumlahMkn');
		    	for (var i = 0; i <= arrMakanan.length; i++){
		    		if (arrMakanan[i] == ' Chicken Katsu'){
		    			arrCountMkn[i] = countMkn7;
		    			formJumlahMkn.value = arrCountMkn;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 25000);
		    });

            // MAKANAN 8
			document.getElementById("ps-mkn-8").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMkn = document.getElementById('jumlahMkn');
			    formHarga.value = (hargatotal += 14000);
			    countMkn8 += 1;
			    document.getElementById("jml-mkn-8").innerHTML = countMkn8;
			    tempMkn = ' Nasi Goreng Ayam';
			    if (arrMakanan.length == 0){
			    	arrCountMkn.push(countMkn8);
			    	formJumlahMkn.value = arrCountMkn;
			    	arrMakanan.push(tempMkn);
			    	formMakanan.value = arrMakanan[0];
			    } else {
			    	for (var i = 0; i <= arrMakanan.length; i++){
			    		if (arrMakanan.includes(tempMkn)){
			    			for (var j = 0; j <= arrMakanan.length; j++){
			    				if (arrMakanan[j] == ' Nasi Goreng Ayam'){
					    			arrCountMkn[j] = countMkn8;
					    			formJumlahMkn.value = arrCountMkn;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMakanan.push(tempMkn);
			    			arrCountMkn.push(countMkn8);
			    		}
			    	}
			    	formMakanan.value = arrMakanan;
			    	formJumlahMkn.value = arrCountMkn;
			    }
			});
			
			document.getElementById("ms-mkn-8").addEventListener('click', function () {
		    	countMkn8 -= 1;
		    	document.getElementById("jml-mkn-8").innerHTML = countMkn8;
		    	var formJumlahMkn = document.getElementById('jumlahMkn');
		    	for (var i = 0; i <= arrMakanan.length; i++){
		    		if (arrMakanan[i] == ' Nasi Goreng Ayam'){
		    			arrCountMkn[i] = countMkn8;
		    			formJumlahMkn.value = arrCountMkn;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 14000);
		    });

            // MAKANAN 9
			document.getElementById("ps-mkn-9").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMkn = document.getElementById('jumlahMkn');
			    formHarga.value = (hargatotal += 14000);
			    countMkn9 += 1;
			    document.getElementById("jml-mkn-9").innerHTML = countMkn9;
			    tempMkn = ' Mie Goreng Ayam';
			    if (arrMakanan.length == 0){
			    	arrCountMkn.push(countMkn9);
			    	formJumlahMkn.value = arrCountMkn;
			    	arrMakanan.push(tempMkn);
			    	formMakanan.value = arrMakanan[0];
			    } else {
			    	for (var i = 0; i <= arrMakanan.length; i++){
			    		if (arrMakanan.includes(tempMkn)){
			    			for (var j = 0; j <= arrMakanan.length; j++){
			    				if (arrMakanan[j] == ' Mie Goreng Ayam'){
					    			arrCountMkn[j] = countMkn9;
					    			formJumlahMkn.value = arrCountMkn;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMakanan.push(tempMkn);
			    			arrCountMkn.push(countMkn9);
			    		}
			    	}
			    	formMakanan.value = arrMakanan;
			    	formJumlahMkn.value = arrCountMkn;
			    }
			});
			
			document.getElementById("ms-mkn-9").addEventListener('click', function () {
		    	countMkn9 -= 1;
		    	document.getElementById("jml-mkn-9").innerHTML = countMkn9;
		    	var formJumlahMkn = document.getElementById('jumlahMkn');
		    	for (var i = 0; i <= arrMakanan.length; i++){
		    		if (arrMakanan[i] == ' Mie Goreng Ayam'){
		    			arrCountMkn[i] = countMkn9;
		    			formJumlahMkn.value = arrCountMkn;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 14000);
		    });

            // MAKANAN 10
			document.getElementById("ps-mkn-10").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMkn = document.getElementById('jumlahMkn');
			    formHarga.value = (hargatotal += 30000);
			    countMkn10 += 1;
			    document.getElementById("jml-mkn-10").innerHTML = countMkn10;
			    tempMkn = ' Steak Iga Sapi';
			    if (arrMakanan.length == 0){
			    	arrCountMkn.push(countMkn10);
			    	formJumlahMkn.value = arrCountMkn;
			    	arrMakanan.push(tempMkn);
			    	formMakanan.value = arrMakanan[0];
			    } else {
			    	for (var i = 0; i <= arrMakanan.length; i++){
			    		if (arrMakanan.includes(tempMkn)){
			    			for (var j = 0; j <= arrMakanan.length; j++){
			    				if (arrMakanan[j] == ' Steak Iga Sapi'){
					    			arrCountMkn[j] = countMkn10;
					    			formJumlahMkn.value = arrCountMkn;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMakanan.push(tempMkn);
			    			arrCountMkn.push(countMkn10);
			    		}
			    	}
			    	formMakanan.value = arrMakanan;
			    	formJumlahMkn.value = arrCountMkn;
			    }
			});
			
			document.getElementById("ms-mkn-10").addEventListener('click', function () {
		    	countMkn10 -= 1;
		    	document.getElementById("jml-mkn-10").innerHTML = countMkn10;
		    	var formJumlahMkn = document.getElementById('jumlahMkn');
		    	for (var i = 0; i <= arrMakanan.length; i++){
		    		if (arrMakanan[i] == ' Steak Iga Sapi'){
		    			arrCountMkn[i] = countMkn10;
		    			formJumlahMkn.value = arrCountMkn;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 30000);
		    });

            // MAKANAN 11
			document.getElementById("ps-mkn-11").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMkn = document.getElementById('jumlahMkn');
			    formHarga.value = (hargatotal += 8000);
			    countMkn11 += 1;
			    document.getElementById("jml-mkn-11").innerHTML = countMkn11;
			    tempMkn = ' Siomay';
			    if (arrMakanan.length == 0){
			    	arrCountMkn.push(countMkn11);
			    	formJumlahMkn.value = arrCountMkn;
			    	arrMakanan.push(tempMkn);
			    	formMakanan.value = arrMakanan[0];
			    } else {
			    	for (var i = 0; i <= arrMakanan.length; i++){
			    		if (arrMakanan.includes(tempMkn)){
			    			for (var j = 0; j <= arrMakanan.length; j++){
			    				if (arrMakanan[j] == ' Siomay'){
					    			arrCountMkn[j] = countMkn11;
					    			formJumlahMkn.value = arrCountMkn;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMakanan.push(tempMkn);
			    			arrCountMkn.push(countMkn11);
			    		}
			    	}
			    	formMakanan.value = arrMakanan;
			    	formJumlahMkn.value = arrCountMkn;
			    }
			});
			
			document.getElementById("ms-mkn-11").addEventListener('click', function () {
		    	countMkn11 -= 1;
		    	document.getElementById("jml-mkn-11").innerHTML = countMkn11;
		    	var formJumlahMkn = document.getElementById('jumlahMkn');
		    	for (var i = 0; i <= arrMakanan.length; i++){
		    		if (arrMakanan[i] == ' Siomay'){
		    			arrCountMkn[i] = countMkn11;
		    			formJumlahMkn.value = arrCountMkn;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 8000);
		    });

            // MAKANAN 12
			document.getElementById("ps-mkn-12").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMkn = document.getElementById('jumlahMkn');
			    formHarga.value = (hargatotal += 10000);
			    countMkn12 += 1;
			    document.getElementById("jml-mkn-12").innerHTML = countMkn12;
			    tempMkn = ' Batagor';
			    if (arrMakanan.length == 0){
			    	arrCountMkn.push(countMkn12);
			    	formJumlahMkn.value = arrCountMkn;
			    	arrMakanan.push(tempMkn);
			    	formMakanan.value = arrMakanan[0];
			    } else {
			    	for (var i = 0; i <= arrMakanan.length; i++){
			    		if (arrMakanan.includes(tempMkn)){
			    			for (var j = 0; j <= arrMakanan.length; j++){
			    				if (arrMakanan[j] == ' Batagor'){
					    			arrCountMkn[j] = countMkn12;
					    			formJumlahMkn.value = arrCountMkn;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMakanan.push(tempMkn);
			    			arrCountMkn.push(countMkn12);
			    		}
			    	}
			    	formMakanan.value = arrMakanan;
			    	formJumlahMkn.value = arrCountMkn;
			    }
			});
			
			document.getElementById("ms-mkn-12").addEventListener('click', function () {
		    	countMkn12 -= 1;
		    	document.getElementById("jml-mkn-12").innerHTML = countMkn12;
		    	var formJumlahMkn = document.getElementById('jumlahMkn');
		    	for (var i = 0; i <= arrMakanan.length; i++){
		    		if (arrMakanan[i] == ' Batagor'){
		    			arrCountMkn[i] = countMkn12;
		    			formJumlahMkn.value = arrCountMkn;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 10000);
		    });

            // MAKANAN 13
			document.getElementById("ps-mkn-13").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMkn = document.getElementById('jumlahMkn');
			    formHarga.value = (hargatotal += 7000);
			    countMkn13 += 1;
			    document.getElementById("jml-mkn-13").innerHTML = countMkn13;
			    tempMkn = ' Roti Bakar Keju';
			    if (arrMakanan.length == 0){
			    	arrCountMkn.push(countMkn13);
			    	formJumlahMkn.value = arrCountMkn;
			    	arrMakanan.push(tempMkn);
			    	formMakanan.value = arrMakanan[0];
			    } else {
			    	for (var i = 0; i <= arrMakanan.length; i++){
			    		if (arrMakanan.includes(tempMkn)){
			    			for (var j = 0; j <= arrMakanan.length; j++){
			    				if (arrMakanan[j] == ' Roti Bakar Keju'){
					    			arrCountMkn[j] = countMkn13;
					    			formJumlahMkn.value = arrCountMkn;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMakanan.push(tempMkn);
			    			arrCountMkn.push(countMkn13);
			    		}
			    	}
			    	formMakanan.value = arrMakanan;
			    	formJumlahMkn.value = arrCountMkn;
			    }
			});
			
			document.getElementById("ms-mkn-13").addEventListener('click', function () {
		    	countMkn13 -= 1;
		    	document.getElementById("jml-mkn-13").innerHTML = countMkn13;
		    	var formJumlahMkn = document.getElementById('jumlahMkn');
		    	for (var i = 0; i <= arrMakanan.length; i++){
		    		if (arrMakanan[i] == ' Roti Bakar Keju'){
		    			arrCountMkn[i] = countMkn13;
		    			formJumlahMkn.value = arrCountMkn;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 7000);
		    });

            // MAKANAN 14
			document.getElementById("ps-mkn-14").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMkn = document.getElementById('jumlahMkn');
			    formHarga.value = (hargatotal += 10000);
			    countMkn14 += 1;
			    document.getElementById("jml-mkn-14").innerHTML = countMkn14;
			    tempMkn = ' Kentang Goreng';
			    if (arrMakanan.length == 0){
			    	arrCountMkn.push(countMkn14);
			    	formJumlahMkn.value = arrCountMkn;
			    	arrMakanan.push(tempMkn);
			    	formMakanan.value = arrMakanan[0];
			    } else {
			    	for (var i = 0; i <= arrMakanan.length; i++){
			    		if (arrMakanan.includes(tempMkn)){
			    			for (var j = 0; j <= arrMakanan.length; j++){
			    				if (arrMakanan[j] == ' Kentang Goreng'){
					    			arrCountMkn[j] = countMkn14;
					    			formJumlahMkn.value = arrCountMkn;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMakanan.push(tempMkn);
			    			arrCountMkn.push(countMkn14);
			    		}
			    	}
			    	formMakanan.value = arrMakanan;
			    	formJumlahMkn.value = arrCountMkn;
			    }
			});
			
			document.getElementById("ms-mkn-14").addEventListener('click', function () {
		    	countMkn14 -= 1;
		    	document.getElementById("jml-mkn-14").innerHTML = countMkn14;
		    	var formJumlahMkn = document.getElementById('jumlahMkn');
		    	for (var i = 0; i <= arrMakanan.length; i++){
		    		if (arrMakanan[i] == ' Kentang Goreng'){
		    			arrCountMkn[i] = countMkn14;
		    			formJumlahMkn.value = arrCountMkn;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 10000);
		    });

			document.getElementById("ps-mkn-15").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    formMakanan.value += 'Singkong Goreng; ';
			});

            // MAKANAN 15
			document.getElementById("ps-mkn-15").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMkn = document.getElementById('jumlahMkn');
			    formHarga.value = (hargatotal += 8000);
			    countMkn15 += 1;
			    document.getElementById("jml-mkn-15").innerHTML = countMkn15;
			    tempMkn = ' Singkong Goreng';
			    if (arrMakanan.length == 0){
			    	arrCountMkn.push(countMkn15);
			    	formJumlahMkn.value = arrCountMkn;
			    	arrMakanan.push(tempMkn);
			    	formMakanan.value = arrMakanan[0];
			    } else {
			    	for (var i = 0; i <= arrMakanan.length; i++){
			    		if (arrMakanan.includes(tempMkn)){
			    			for (var j = 0; j <= arrMakanan.length; j++){
			    				if (arrMakanan[j] == ' Singkong Goreng'){
					    			arrCountMkn[j] = countMkn15;
					    			formJumlahMkn.value = arrCountMkn;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMakanan.push(tempMkn);
			    			arrCountMkn.push(countMkn15);
			    		}
			    	}
			    	formMakanan.value = arrMakanan;
			    	formJumlahMkn.value = arrCountMkn;
			    }
			});
			
			document.getElementById("ms-mkn-15").addEventListener('click', function () {
		    	countMkn15 -= 1;
		    	document.getElementById("jml-mkn-15").innerHTML = countMkn15;
		    	var formJumlahMkn = document.getElementById('jumlahMkn');
		    	for (var i = 0; i <= arrMakanan.length; i++){
		    		if (arrMakanan[i] == ' Singkong Goreng'){
		    			arrCountMkn[i] = countMkn15;
		    			formJumlahMkn.value = arrCountMkn;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 8000);
		    });

		// MINUMAN
			// MINUMAN 1
			document.getElementById("ps-mnm-1").addEventListener('click', function () {
			    var formMinuman = document.getElementById('minuman');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMnm = document.getElementById('jumlahMnm');
			    formHarga.value = (hargatotal += 8000);
			    countMnm1 += 1;
			    
			    document.getElementById("jml-mnm-1").innerHTML = countMnm1;
			    
			    tempMnm = ' Kopi Putih Mercury';
		    	
			    if (arrMinuman.length == 0){
			    	arrCountMnm.push(countMnm1);
			    	formJumlahMnm.value = arrCountMnm;
			    	
			    	arrMinuman.push(tempMnm);
			    	formMinuman.value = arrMinuman[0];
			    } else {
			    	for (var i = 0; i <= arrMinuman.length; i++){
			    		if (arrMinuman.includes(tempMnm)){
			    			for (var j = 0; j <= arrMinuman.length; j++){
			    				if (arrMinuman[j] == ' Kopi Putih Mercury'){
					    			arrCountMnm[j] = countMnm1;
					    			formJumlahMnm.value = arrCountMnm;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMinuman.push(tempMnm);
			    			arrCountMnm.push(countMnm1);
			    		}
			    	}
			    	formMinuman.value = arrMinuman;
			    	formJumlahMnm.value = arrCountMnm;
			    }
			});
			
			document.getElementById("ms-mnm-1").addEventListener('click', function () {
		    	countMnm1 -= 1;
		    	document.getElementById("jml-mnm-1").innerHTML = countMnm1;
		    	var formJumlahMnm = document.getElementById('jumlahMnm');
		    	for (var i = 0; i <= arrMinuman.length; i++){
		    		if (arrMinuman[i] == ' Kopi Putih Mercury'){
		    			arrCountMnm[i] = countMnm1;
		    			formJumlahMnm.value = arrCountMnm;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 8000);
		    });

			// MINUMAN 2
			document.getElementById("ps-mnm-2").addEventListener('click', function () {
			    var formMinuman = document.getElementById('minuman');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMnm = document.getElementById('jumlahMnm');
			    formHarga.value = (hargatotal += 10000);
			    countMnm2 += 1;
			    
			    document.getElementById("jml-mnm-2").innerHTML = countMnm2;
			    
			    tempMnm = ' Kopi Susu Mercury';
		    	
			    if (arrMinuman.length == 0){
			    	arrCountMnm.push(countMnm2);
			    	formJumlahMnm.value = arrCountMnm;
			    	
			    	arrMinuman.push(tempMnm);
			    	formMinuman.value = arrMinuman[0];
			    } else {
			    	for (var i = 0; i <= arrMinuman.length; i++){
			    		if (arrMinuman.includes(tempMnm)){
			    			for (var j = 0; j <= arrMinuman.length; j++){
			    				if (arrMinuman[j] == ' Kopi Susu Mercury'){
					    			arrCountMnm[j] = countMnm2;
					    			formJumlahMnm.value = arrCountMnm;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMinuman.push(tempMnm);
			    			arrCountMnm.push(countMnm2);
			    		}
			    	}
			    	formMinuman.value = arrMinuman;
			    	formJumlahMnm.value = arrCountMnm;
			    }
			});
			
			document.getElementById("ms-mnm-2").addEventListener('click', function () {
		    	countMnm2 -= 1;
		    	document.getElementById("jml-mnm-2").innerHTML = countMnm2;
		    	var formJumlahMnm = document.getElementById('jumlahMnm');
		    	for (var i = 0; i <= arrMinuman.length; i++){
		    		if (arrMinuman[i] == ' Kopi Susu Mercury'){
		    			arrCountMnm[i] = countMnm2;
		    			formJumlahMnm.value = arrCountMnm;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 10000);
		    });
			
			// MINUMAN 3
			document.getElementById("ps-mnm-3").addEventListener('click', function () {
			    var formMinuman = document.getElementById('minuman');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMnm = document.getElementById('jumlahMnm');
			    formHarga.value = (hargatotal += 11000);
			    countMnm3 += 1;
			    
			    document.getElementById("jml-mnm-3").innerHTML = countMnm3;
			    
			    tempMnm = ' Expresso';
		    	
			    if (arrMinuman.length == 0){
			    	arrCountMnm.push(countMnm3);
			    	formJumlahMnm.value = arrCountMnm;
			    	
			    	arrMinuman.push(tempMnm);
			    	formMinuman.value = arrMinuman[0];
			    } else {
			    	for (var i = 0; i <= arrMinuman.length; i++){
			    		if (arrMinuman.includes(tempMnm)){
			    			for (var j = 0; j <= arrMinuman.length; j++){
			    				if (arrMinuman[j] == ' Expresso'){
					    			arrCountMnm[j] = countMnm3;
					    			formJumlahMnm.value = arrCountMnm;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMinuman.push(tempMnm);
			    			arrCountMnm.push(countMnm3);
			    		}
			    	}
			    	formMinuman.value = arrMinuman;
			    	formJumlahMnm.value = arrCountMnm;
			    }
			});
			
			document.getElementById("ms-mnm-3").addEventListener('click', function () {
		    	countMnm3 -= 1;
		    	document.getElementById("jml-mnm-3").innerHTML = countMnm3;
		    	var formJumlahMnm = document.getElementById('jumlahMnm');
		    	for (var i = 0; i <= arrMinuman.length; i++){
		    		if (arrMinuman[i] == ' Expresso'){
		    			arrCountMnm[i] = countMnm3;
		    			formJumlahMnm.value = arrCountMnm;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 11000);
		    });
			
			// MINUMAN 4
			document.getElementById("ps-mnm-4").addEventListener('click', function () {
			    var formMinuman = document.getElementById('minuman');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMnm = document.getElementById('jumlahMnm');
			    formHarga.value = (hargatotal += 11000);
			    countMnm4 += 1;
			    
			    document.getElementById("jml-mnm-4").innerHTML = countMnm4;
			    
			    tempMnm = ' Americano';
		    	
			    if (arrMinuman.length == 0){
			    	arrCountMnm.push(countMnm4);
			    	formJumlahMnm.value = arrCountMnm;
			    	
			    	arrMinuman.push(tempMnm);
			    	formMinuman.value = arrMinuman[0];
			    } else {
			    	for (var i = 0; i <= arrMinuman.length; i++){
			    		if (arrMinuman.includes(tempMnm)){
			    			for (var j = 0; j <= arrMinuman.length; j++){
			    				if (arrMinuman[j] == ' Americano'){
					    			arrCountMnm[j] = countMnm4;
					    			formJumlahMnm.value = arrCountMnm;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMinuman.push(tempMnm);
			    			arrCountMnm.push(countMnm4);
			    		}
			    	}
			    	formMinuman.value = arrMinuman;
			    	formJumlahMnm.value = arrCountMnm;
			    }
			});
			
			document.getElementById("ms-mnm-4").addEventListener('click', function () {
		    	countMnm4 -= 1;
		    	document.getElementById("jml-mnm-4").innerHTML = countMnm4;
		    	var formJumlahMnm = document.getElementById('jumlahMnm');
		    	for (var i = 0; i <= arrMinuman.length; i++){
		    		if (arrMinuman[i] == ' Americano'){
		    			arrCountMnm[i] = countMnm4;
		    			formJumlahMnm.value = arrCountMnm;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 11000);
		    });
			
			// MINUMAN 5
			document.getElementById("ps-mnm-5").addEventListener('click', function () {
			    var formMinuman = document.getElementById('minuman');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMnm = document.getElementById('jumlahMnm');
			    formHarga.value = (hargatotal += 9000);
			    countMnm5 += 1;
			    
			    document.getElementById("jml-mnm-5").innerHTML = countMnm5;
			    
			    tempMnm = ' Caffe Latte';
		    	
			    if (arrMinuman.length == 0){
			    	arrCountMnm.push(countMnm5);
			    	formJumlahMnm.value = arrCountMnm;
			    	
			    	arrMinuman.push(tempMnm);
			    	formMinuman.value = arrMinuman[0];
			    } else {
			    	for (var i = 0; i <= arrMinuman.length; i++){
			    		if (arrMinuman.includes(tempMnm)){
			    			for (var j = 0; j <= arrMinuman.length; j++){
			    				if (arrMinuman[j] == ' Caffe Latte'){
					    			arrCountMnm[j] = countMnm5;
					    			formJumlahMnm.value = arrCountMnm;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMinuman.push(tempMnm);
			    			arrCountMnm.push(countMnm5);
			    		}
			    	}
			    	formMinuman.value = arrMinuman;
			    	formJumlahMnm.value = arrCountMnm;
			    }
			});
			
			document.getElementById("ms-mnm-5").addEventListener('click', function () {
		    	countMnm5 -= 1;
		    	document.getElementById("jml-mnm-5").innerHTML = countMnm5;
		    	var formJumlahMnm = document.getElementById('jumlahMnm');
		    	for (var i = 0; i <= arrMinuman.length; i++){
		    		if (arrMinuman[i] == ' Cafe Latte'){
		    			arrCountMnm[i] = countMnm5;
		    			formJumlahMnm.value = arrCountMnm;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 9000);
		    });
			
			//MINUMAN 6
			document.getElementById("ps-mnm-6").addEventListener('click', function () {
			    var formMinuman = document.getElementById('minuman');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMnm = document.getElementById('jumlahMnm');
			    formHarga.value = (hargatotal += 10000);
			    countMnm6 += 1;
			    
			    document.getElementById("jml-mnm-6").innerHTML = countMnm6;
			    
			    tempMnm = ' Cappuccino';
		    	
			    if (arrMinuman.length == 0){
			    	arrCountMnm.push(countMnm6);
			    	formJumlahMnm.value = arrCountMnm;
			    	
			    	arrMinuman.push(tempMnm);
			    	formMinuman.value = arrMinuman[0];
			    } else {
			    	for (var i = 0; i <= arrMinuman.length; i++){
			    		if (arrMinuman.includes(tempMnm)){
			    			for (var j = 0; j <= arrMinuman.length; j++){
			    				if (arrMinuman[j] == ' Cappuccino'){
					    			arrCountMnm[j] = countMnm6;
					    			formJumlahMnm.value = arrCountMnm;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMinuman.push(tempMnm);
			    			arrCountMnm.push(countMnm6);
			    		}
			    	}
			    	formMinuman.value = arrMinuman;
			    	formJumlahMnm.value = arrCountMnm;
			    }
			});
			
			document.getElementById("ms-mnm-6").addEventListener('click', function () {
		    	countMnm6 -= 1;
		    	document.getElementById("jml-mnm-6").innerHTML = countMnm6;
		    	var formJumlahMnm = document.getElementById('jumlahMnm');
		    	for (var i = 0; i <= arrMinuman.length; i++){
		    		if (arrMinuman[i] == ' Cappuccino'){
		    			arrCountMnm[i] = countMnm6;
		    			formJumlahMnm.value = arrCountMnm;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 10000);
		    });
			
			// MINUMAN 7
			document.getElementById("ps-mnm-7").addEventListener('click', function () {
			    var formMinuman = document.getElementById('minuman');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMnm = document.getElementById('jumlahMnm');
			    formHarga.value = (hargatotal += 6000);
			    countMnm7 += 1;
			    
			    document.getElementById("jml-mnm-7").innerHTML = countMnm7;
			    
			    tempMnm = ' Kopi Tubruk';
		    	
			    if (arrMinuman.length == 0){
			    	arrCountMnm.push(countMnm7);
			    	formJumlahMnm.value = arrCountMnm;
			    	
			    	arrMinuman.push(tempMnm);
			    	formMinuman.value = arrMinuman[0];
			    } else {
			    	for (var i = 0; i <= arrMinuman.length; i++){
			    		if (arrMinuman.includes(tempMnm)){
			    			for (var j = 0; j <= arrMinuman.length; j++){
			    				if (arrMinuman[j] == ' Kopi Tubruk'){
					    			arrCountMnm[j] = countMnm7;
					    			formJumlahMnm.value = arrCountMnm;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMinuman.push(tempMnm);
			    			arrCountMnm.push(countMnm7);
			    		}
			    	}
			    	formMinuman.value = arrMinuman;
			    	formJumlahMnm.value = arrCountMnm;
			    }
			});
			
			document.getElementById("ms-mnm-7").addEventListener('click', function () {
		    	countMnm7 -= 1;
		    	document.getElementById("jml-mnm-7").innerHTML = countMnm7;
		    	var formJumlahMnm = document.getElementById('jumlahMnm');
		    	for (var i = 0; i <= arrMinuman.length; i++){
		    		if (arrMinuman[i] == ' Kopi Tubruk'){
		    			arrCountMnm[i] = countMnm7;
		    			formJumlahMnm.value = arrCountMnm;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 6000);
		    });
			
			// MINUMAN 8
			document.getElementById("ps-mnm-8").addEventListener('click', function () {
			    var formMinuman = document.getElementById('minuman');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMnm = document.getElementById('jumlahMnm');
			    formHarga.value = (hargatotal += 15000);
			    countMnm8 += 1;
			    
			    document.getElementById("jml-mnm-8").innerHTML = countMnm8;
			    
			    tempMnm = ' Kopi V60';
		    	
			    if (arrMinuman.length == 0){
			    	arrCountMnm.push(countMnm8);
			    	formJumlahMnm.value = arrCountMnm;
			    	
			    	arrMinuman.push(tempMnm);
			    	formMinuman.value = arrMinuman[0];
			    } else {
			    	for (var i = 0; i <= arrMinuman.length; i++){
			    		if (arrMinuman.includes(tempMnm)){
			    			for (var j = 0; j <= arrMinuman.length; j++){
			    				if (arrMinuman[j] == ' Kopi V60'){
					    			arrCountMnm[j] = countMnm8;
					    			formJumlahMnm.value = arrCountMnm;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMinuman.push(tempMnm);
			    			arrCountMnm.push(countMnm8);
			    		}
			    	}
			    	formMinuman.value = arrMinuman;
			    	formJumlahMnm.value = arrCountMnm;
			    }
			});
			
			document.getElementById("ms-mnm-8").addEventListener('click', function () {
		    	countMnm8 -= 1;
		    	document.getElementById("jml-mnm-8").innerHTML = countMnm8;
		    	var formJumlahMnm = document.getElementById('jumlahMnm');
		    	for (var i = 0; i <= arrMinuman.length; i++){
		    		if (arrMinuman[i] == ' Kopi V60'){
		    			arrCountMnm[i] = countMnm8;
		    			formJumlahMnm.value = arrCountMnm;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 15000);
		    });
			
			// MINUMAN 9
			document.getElementById("ps-mnm-9").addEventListener('click', function () {
			    var formMinuman = document.getElementById('minuman');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMnm = document.getElementById('jumlahMnm');
			    formHarga.value = (hargatotal += 12000);
			    countMnm9 += 1;
			    
			    document.getElementById("jml-mnm-9").innerHTML = countMnm9;
			    
			    tempMnm = ' Blue Late';
		    	
			    if (arrMinuman.length == 0){
			    	arrCountMnm.push(countMnm9);
			    	formJumlahMnm.value = arrCountMnm;
			    	
			    	arrMinuman.push(tempMnm);
			    	formMinuman.value = arrMinuman[0];
			    } else {
			    	for (var i = 0; i <= arrMinuman.length; i++){
			    		if (arrMinuman.includes(tempMnm)){
			    			for (var j = 0; j <= arrMinuman.length; j++){
			    				if (arrMinuman[j] == ' Blue Late'){
					    			arrCountMnm[j] = countMnm9;
					    			formJumlahMnm.value = arrCountMnm;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMinuman.push(tempMnm);
			    			arrCountMnm.push(countMnm9);
			    		}
			    	}
			    	formMinuman.value = arrMinuman;
			    	formJumlahMnm.value = arrCountMnm;
			    }
			});
			
			document.getElementById("ms-mnm-9").addEventListener('click', function () {
		    	countMnm9 -= 1;
		    	document.getElementById("jml-mnm-9").innerHTML = countMnm9;
		    	var formJumlahMnm = document.getElementById('jumlahMnm');
		    	for (var i = 0; i <= arrMinuman.length; i++){
		    		if (arrMinuman[i] == ' Blue Late'){
		    			arrCountMnm[i] = countMnm9;
		    			formJumlahMnm.value = arrCountMnm;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 12000);
		    });
			
			// MINUMAN 10
			document.getElementById("ps-mnm-10").addEventListener('click', function () {
			    var formMinuman = document.getElementById('minuman');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMnm = document.getElementById('jumlahMnm');
			    formHarga.value = (hargatotal += 10000);
			    countMnm10 += 1;
			    
			    document.getElementById("jml-mnm-10").innerHTML = countMnm10;
			    
			    tempMnm = ' Coconut Latte';
		    	
			    if (arrMinuman.length == 0){
			    	arrCountMnm.push(countMnm10);
			    	formJumlahMnm.value = arrCountMnm;
			    	
			    	arrMinuman.push(tempMnm);
			    	formMinuman.value = arrMinuman[0];
			    } else {
			    	for (var i = 0; i <= arrMinuman.length; i++){
			    		if (arrMinuman.includes(tempMnm)){
			    			for (var j = 0; j <= arrMinuman.length; j++){
			    				if (arrMinuman[j] == ' Coconut Latte'){
					    			arrCountMnm[j] = countMnm10;
					    			formJumlahMnm.value = arrCountMnm;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMinuman.push(tempMnm);
			    			arrCountMnm.push(countMnm10);
			    		}
			    	}
			    	formMinuman.value = arrMinuman;
			    	formJumlahMnm.value = arrCountMnm;
			    }
			});
			
			document.getElementById("ms-mnm-10").addEventListener('click', function () {
		    	countMnm10 -= 1;
		    	document.getElementById("jml-mnm-10").innerHTML = countMnm10;
		    	var formJumlahMnm = document.getElementById('jumlahMnm');
		    	for (var i = 0; i <= arrMinuman.length; i++){
		    		if (arrMinuman[i] == ' Coconut Latte'){
		    			arrCountMnm[i] = countMnm10;
		    			formJumlahMnm.value = arrCountMnm;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 10000);
		    });
			
			// MINUMAN 11
			document.getElementById("ps-mnm-11").addEventListener('click', function () {
			    var formMinuman = document.getElementById('minuman');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMnm = document.getElementById('jumlahMnm');
			    formHarga.value = (hargatotal += 12000);
			    countMnm11 += 1;
			    
			    document.getElementById("jml-mnm-11").innerHTML = countMnm11;
			    
			    tempMnm = ' Matcha Late';
		    	
			    if (arrMinuman.length == 0){
			    	arrCountMnm.push(countMnm11);
			    	formJumlahMnm.value = arrCountMnm;
			    	
			    	arrMinuman.push(tempMnm);
			    	formMinuman.value = arrMinuman[0];
			    } else {
			    	for (var i = 0; i <= arrMinuman.length; i++){
			    		if (arrMinuman.includes(tempMnm)){
			    			for (var j = 0; j <= arrMinuman.length; j++){
			    				if (arrMinuman[j] == ' Matcha Late'){
					    			arrCountMnm[j] = countMnm11;
					    			formJumlahMnm.value = arrCountMnm;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMinuman.push(tempMnm);
			    			arrCountMnm.push(countMnm11);
			    		}
			    	}
			    	formMinuman.value = arrMinuman;
			    	formJumlahMnm.value = arrCountMnm;
			    }
			});
			
			document.getElementById("ms-mnm-11").addEventListener('click', function () {
		    	countMnm11 -= 1;
		    	document.getElementById("jml-mnm-11").innerHTML = countMnm11;
		    	var formJumlahMnm = document.getElementById('jumlahMnm');
		    	for (var i = 0; i <= arrMinuman.length; i++){
		    		if (arrMinuman[i] == ' Matcha Late'){
		    			arrCountMnm[i] = countMnm11;
		    			formJumlahMnm.value = arrCountMnm;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 12000);
		    });
			
			// MINUMAN 12
			document.getElementById("ps-mnm-12").addEventListener('click', function () {
			    var formMinuman = document.getElementById('minuman');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMnm = document.getElementById('jumlahMnm');
			    formHarga.value = (hargatotal += 8000);
			    countMnm12 += 1;
			    
			    document.getElementById("jml-mnm-12").innerHTML = countMnm12;
			    
			    tempMnm = ' Chocolate';
		    	
			    if (arrMinuman.length == 0){
			    	arrCountMnm.push(countMnm12);
			    	formJumlahMnm.value = arrCountMnm;
			    	
			    	arrMinuman.push(tempMnm);
			    	formMinuman.value = arrMinuman[0];
			    } else {
			    	for (var i = 0; i <= arrMinuman.length; i++){
			    		if (arrMinuman.includes(tempMnm)){
			    			for (var j = 0; j <= arrMinuman.length; j++){
			    				if (arrMinuman[j] == ' Chocolate'){
					    			arrCountMnm[j] = countMnm12;
					    			formJumlahMnm.value = arrCountMnm;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMinuman.push(tempMnm);
			    			arrCountMnm.push(countMnm12);
			    		}
			    	}
			    	formMinuman.value = arrMinuman;
			    	formJumlahMnm.value = arrCountMnm;
			    }
			});
			
			document.getElementById("ms-mnm-12").addEventListener('click', function () {
		    	countMnm12 -= 1;
		    	document.getElementById("jml-mnm-12").innerHTML = countMnm12;
		    	var formJumlahMnm = document.getElementById('jumlahMnm');
		    	for (var i = 0; i <= arrMinuman.length; i++){
		    		if (arrMinuman[i] == ' Chocolate'){
		    			arrCountMnm[i] = countMnm12;
		    			formJumlahMnm.value = arrCountMnm;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 8000);
		    });
			
			// MINUMAN 13
			document.getElementById("ps-mnm-13").addEventListener('click', function () {
			    var formMinuman = document.getElementById('minuman');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMnm = document.getElementById('jumlahMnm');
			    formHarga.value = (hargatotal += 7000);
			    countMnm13 += 1;
			    
			    document.getElementById("jml-mnm-13").innerHTML = countMnm13;
			    
			    tempMnm = ' Lemon Tea';
		    	
			    if (arrMinuman.length == 0){
			    	arrCountMnm.push(countMnm13);
			    	formJumlahMnm.value = arrCountMnm;
			    	
			    	arrMinuman.push(tempMnm);
			    	formMinuman.value = arrMinuman[0];
			    } else {
			    	for (var i = 0; i <= arrMinuman.length; i++){
			    		if (arrMinuman.includes(tempMnm)){
			    			for (var j = 0; j <= arrMinuman.length; j++){
			    				if (arrMinuman[j] == ' Lemon Tea'){
					    			arrCountMnm[j] = countMnm13;
					    			formJumlahMnm.value = arrCountMnm;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMinuman.push(tempMnm);
			    			arrCountMnm.push(countMnm13);
			    		}
			    	}
			    	formMinuman.value = arrMinuman;
			    	formJumlahMnm.value = arrCountMnm;
			    }
			});
			
			document.getElementById("ms-mnm-13").addEventListener('click', function () {
		    	countMnm13 -= 1;
		    	document.getElementById("jml-mnm-13").innerHTML = countMnm13;
		    	var formJumlahMnm = document.getElementById('jumlahMnm');
		    	for (var i = 0; i <= arrMinuman.length; i++){
		    		if (arrMinuman[i] == ' Lemon Tea'){
		    			arrCountMnm[i] = countMnm13;
		    			formJumlahMnm.value = arrCountMnm;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 7000);
		    });
			
			// MINUMAN 14
			document.getElementById("ps-mnm-14").addEventListener('click', function () {
			    var formMinuman = document.getElementById('minuman');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMnm = document.getElementById('jumlahMnm');
			    formHarga.value = (hargatotal += 10000);
			    countMnm14 += 1;
			    
			    document.getElementById("jml-mnm-14").innerHTML = countMnm14;
			    
			    tempMnm = ' Orange Juice';
		    	
			    if (arrMinuman.length == 0){
			    	arrCountMnm.push(countMnm14);
			    	formJumlahMnm.value = arrCountMnm;
			    	
			    	arrMinuman.push(tempMnm);
			    	formMinuman.value = arrMinuman[0];
			    } else {
			    	for (var i = 0; i <= arrMinuman.length; i++){
			    		if (arrMinuman.includes(tempMnm)){
			    			for (var j = 0; j <= arrMinuman.length; j++){
			    				if (arrMinuman[j] == ' Orange Juice'){
					    			arrCountMnm[j] = countMnm14;
					    			formJumlahMnm.value = arrCountMnm;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMinuman.push(tempMnm);
			    			arrCountMnm.push(countMnm14);
			    		}
			    	}
			    	formMinuman.value = arrMinuman;
			    	formJumlahMnm.value = arrCountMnm;
			    }
			});
			
			document.getElementById("ms-mnm-14").addEventListener('click', function () {
		    	countMnm14 -= 1;
		    	document.getElementById("jml-mnm-14").innerHTML = countMnm14;
		    	var formJumlahMnm = document.getElementById('jumlahMnm');
		    	for (var i = 0; i <= arrMinuman.length; i++){
		    		if (arrMinuman[i] == ' Orange Juice'){
		    			arrCountMnm[i] = countMnm14;
		    			formJumlahMnm.value = arrCountMnm;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 10000);
		    });
			
			// MINUMAN 15
			document.getElementById("ps-mnm-15").addEventListener('click', function () {
			    var formMinuman = document.getElementById('minuman');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMnm = document.getElementById('jumlahMnm');
			    formHarga.value = (hargatotal += 3000);
			    countMnm15 += 1;
			    
			    document.getElementById("jml-mnm-15").innerHTML = countMnm15;
			    
			    tempMnm = ' Mineral Water';
		    	
			    if (arrMinuman.length == 0){
			    	arrCountMnm.push(countMnm15);
			    	formJumlahMnm.value = arrCountMnm;
			    	
			    	arrMinuman.push(tempMnm);
			    	formMinuman.value = arrMinuman[0];
			    } else {
			    	for (var i = 0; i <= arrMinuman.length; i++){
			    		if (arrMinuman.includes(tempMnm)){
			    			for (var j = 0; j <= arrMinuman.length; j++){
			    				if (arrMinuman[j] == ' Mineral Water'){
					    			arrCountMnm[j] = countMnm15;
					    			formJumlahMnm.value = arrCountMnm;
					    		}
			    			}
			    			break;
			    		} else {
			    			arrMinuman.push(tempMnm);
			    			arrCountMnm.push(countMnm15);
			    		}
			    	}
			    	formMinuman.value = arrMinuman;
			    	formJumlahMnm.value = arrCountMnm;
			    }
			});
			
			document.getElementById("ms-mnm-15").addEventListener('click', function () {
		    	countMnm15 -= 1;
		    	document.getElementById("jml-mnm-15").innerHTML = countMnm15;
		    	var formJumlahMnm = document.getElementById('jumlahMnm');
		    	for (var i = 0; i <= arrMinuman.length; i++){
		    		if (arrMinuman[i] == ' Mineral Water'){
		    			arrCountMnm[i] = countMnm15;
		    			formJumlahMnm.value = arrCountMnm;
		    		}
		    	}
		    	var formHarga = document.getElementById('harga');
			    formHarga.value = (hargatotal -= 3000);
		    });
			
		</script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>

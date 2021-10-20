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
                <a href=""><img src="images/profil.png" alt="" width="50px" /></a>
                <a class="navbar-brand fw-bold ps-3" href="#">Kedai Kopi Mercury</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.html">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="admin.html">Admin</a>
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
													name="harga" id="harga">
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
                	<img src="/images/img-1.jpg" width="100">
                </div>
                <div class="col-md-4">
                    <div class="align-self-center text-center py-5">
                        <img src="images/profil.png" alt="" width="150px" class="py-3" />
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
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
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
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
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
			var countMkn1 = 0, countMkn2 = 0, countMkn3 = 0;
			var countMnm1 = 0, countMnm2 = 0, countMnm3 = 0;
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
			    formMakanan.value += 'Sapi Lada Hitam; ';
			});
			document.getElementById("ps-mkn-5").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    formMakanan.value += 'Sapi Gongso; ';
			});
			document.getElementById("ps-mkn-6").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    formMakanan.value += 'Sapi Sayur Asem; ';
			});
			document.getElementById("ps-mkn-7").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    formMakanan.value += 'Chicken Katsu; ';
			});
			document.getElementById("ps-mkn-8").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    formMakanan.value += 'Nasi Goreng Ayam; ';
			});
			document.getElementById("ps-mkn-9").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    formMakanan.value += 'Mie Goreng Ayam; ';
			});
			document.getElementById("ps-mkn-10").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    formMakanan.value += 'Steak Iga Sapi; ';
			});
			document.getElementById("ps-mkn-11").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    formMakanan.value += 'Siomay; ';
			});
			document.getElementById("ps-mkn-12").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    formMakanan.value += 'Batagor; ';
			});
			document.getElementById("ps-mkn-13").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    formMakanan.value += 'Roti Bakar Keju; ';
			});
			document.getElementById("ps-mkn-14").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    formMakanan.value += 'Kentang Goreng; ';
			});
			document.getElementById("ps-mkn-15").addEventListener('click', function () {
			    var formMakanan = document.getElementById('makanan');
			    formMakanan.value += 'Singkong Goreng; ';
			});

		// MINUMAN
			// MINUMAN 1
			document.getElementById("ps-mnm-1").addEventListener('click', function () {
			    var formMinuman = document.getElementById('minuman');
			    var formHarga = document.getElementById('harga');
			    var formJumlahMnm = document.getElementById('jumlahMnm');
			    formHarga.value = (hargatotal += 15000);
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
			
			document.getElementById("ms-mkn-1").addEventListener('click', function () {
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
			    formHarga.value = (hargatotal -= 15000);
		    });

			// MINUMAN 2
			document.getElementById("minuman-2").addEventListener('click', function () {
			    var formMakanan = document.getElementById('minuman');
			    formMakanan.value += 'Kopi Susu Mercury; ';
			});
			document.getElementById("minuman-3").addEventListener('click', function () {
			    var formMakanan = document.getElementById('minuman');
			    formMakanan.value += 'Expresso; ';
			});
			document.getElementById("minuman-4").addEventListener('click', function () {
			    var formMakanan = document.getElementById('minuman');
			    formMakanan.value += 'Americano; ';
			});
			document.getElementById("minuman-5").addEventListener('click', function () {
			    var formMakanan = document.getElementById('minuman');
			    formMakanan.value += 'Cafe Latte; ';
			});
			document.getElementById("minuman-6").addEventListener('click', function () {
			    var formMakanan = document.getElementById('minuman');
			    formMakanan.value += 'Cappuccino; ';
			});
			document.getElementById("minuman-7").addEventListener('click', function () {
			    var formMakanan = document.getElementById('minuman');
			    formMakanan.value += 'Kopi Tubruk; ';
			});
			document.getElementById("minuman-8").addEventListener('click', function () {
			    var formMakanan = document.getElementById('minuman');
			    formMakanan.value += 'Kopi V60; ';
			});
			document.getElementById("minuman-9").addEventListener('click', function () {
			    var formMakanan = document.getElementById('minuman');
			    formMakanan.value += 'Blue Late; ';
			});
			document.getElementById("minuman-10").addEventListener('click', function () {
			    var formMakanan = document.getElementById('minuman');
			    formMakanan.value += 'Coconut Latte; ';
			});
			document.getElementById("minuman-11").addEventListener('click', function () {
			    var formMakanan = document.getElementById('minuman');
			    formMakanan.value += 'Matcha Late; ';
			});
			document.getElementById("minuman-12").addEventListener('click', function () {
			    var formMakanan = document.getElementById('minuman');
			    formMakanan.value += 'Chocolate; ';
			});
			document.getElementById("minuman-13").addEventListener('click', function () {
			    var formMakanan = document.getElementById('minuman');
			    formMakanan.value += 'Lemon Tea; ';
			});
			document.getElementById("minuman-14").addEventListener('click', function () {
			    var formMakanan = document.getElementById('minuman');
			    formMakanan.value += 'Orange Juice; ';
			});
			document.getElementById("minuman-15").addEventListener('click', function () {
			    var formMakanan = document.getElementById('minuman');
			    formMakanan.value += 'Mineral Water; ';
			});
			
		</script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>

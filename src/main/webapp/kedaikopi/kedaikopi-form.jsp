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
													name="harga" id="harga" required="required">
											</fieldset>
											
											<fieldset class="form-group">
												<label>Makanan</label> <input type="text"
													value="<c:out value='${kedaikopi.makanan}' />" class="form-control"
													name="makanan" id="makanan" required="required">
											</fieldset>
											
											<fieldset class="form-group">
												<label>Jumlah Makanan</label> <input type="text"
													value="<c:out value='${kedaikopi.jumlahMkn}' />" class="form-control"
													name="jumlahMkn" id="jumlahMkn">
											</fieldset>
							
											<fieldset class="form-group">
												<label>Minuman</label> <input type="text"
													value="<c:out value='${kedaikopi.minuman}' />" class="form-control"
													name="minuman" id="minuman" required="required">
											</fieldset>
							
											<fieldset class="form-group">
												<label>Jumlah Minuman</label> <input type="number"
													value="<c:out value='${kedaikopi.jumlahMnm}' />" class="form-control"
													name="jumlahMnm">
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
            <div class="py-5">
                <h3 class="py-3">Menu Makanan</h3>
                <div class="row row-cols-1 row-cols-md-5 g-4">
                    <div class="col">
                        <div class="card">
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Ayam Kampung Goreng</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <p>Jumlah : <a id="jumlahmakanan1">0</a></p>
                                <a href="#" class="btn btn-danger" id="makanan-1" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="minjumlahmakanan1" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Ayam Kampung Bakar</h5>
                                <a>Rp 17.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <p>Jumlah : <a id="jumlahmakanan2">0</a></p>
                                <a href="#" class="btn btn-danger" id="makanan-2" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="minjumlahmakanan2" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Ayam Mentega</h5>
                                <a>Rp 12.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <p>Jumlah : <a id="jumlahmakanan3">0</a></p>
                                <a href="#" class="btn btn-danger" id="makanan-3" onclick="return false;">Keranjang +</a>
                                <a href="#" class="btn btn-dark" id="minjumlahmakanan3" onclick="return false;">-</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Sapi Lada Hitam</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="makanan-4">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Sapi Gongso</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="makanan-5">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Sapi Sayur Asem</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="makanan-6">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Chicken Katsu</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="makanan-7">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Nasi Goreng Ayam</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="makanan-8">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Mie Goreng Ayam</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="makanan-9">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Steak Iga Sapi</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="makanan-10">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Siomay</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="makanan-11">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Batagor</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="makanan-12">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Roti Bakar Keju</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="makanan-13">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Kentang Goreng</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="makanan-14">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-2.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Singkong Goreng</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="makanan-15">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="py-5">
                <h3 class="py-3">Menu Minuman</h3>
                <div class="row row-cols-1 row-cols-md-5 g-4">
                    <div class="col">
                        <div class="card">
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Kopi Putih Mercury</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="minuman-1">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Kopi Susu Mercury</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger"  id="minuman-2">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Expresso</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="minuman-3">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Americano</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="minuman-4">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Cafe Latte</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="minuman-5">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Cappuccino</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="minuman-6">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Kopi Tubruk</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="minuman-7">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Kopi V60</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="minuman-8">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Blue Late</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="minuman-9">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Coconut Latte</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="minuman-10">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Matcha Late</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="minuman-11">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Chocolate</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="minuman-12">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Lemon Tea</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="minuman-13">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Orange Juice</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="minuman-14">Keranjang +</a>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="images/img-3.jpg" class="card-img-top" alt="" />
                            <div class="card-body">
                                <h5 class="card-title">Mineral Water</h5>
                                <a>Rp 15.000</a>
                                <p class="card-text">This is a longer card with supporting text below.</p>
                                <a href="#" class="btn btn-danger" id="minuman-15">Keranjang +</a>
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
			var countmakanan1 = 0, countmakanan2 = 0, countmakanan3 = 0;
			var tempo = '';
			const temp = [];
			const arrJumlah = [];
			
			document.getElementById("minjumlahmakanan1").addEventListener('click', function () {
		    	countmakanan1 -= 1;
		    	document.getElementById("jumlahmakanan1").innerHTML = countmakanan1;
		    	var jumlah = document.getElementById('jumlahMkn');
		    	for (var i = 0; i <= temp.length; i++){
		    		if (temp[i] == ' Ayam Kampung Goreng'){
		    			arrJumlah[i] = countmakanan1;
		    			jumlah.value = arrJumlah;
		    		}
		    	}
		    	var harga = document.getElementById('harga');
			    harga.value = (hargatotal -= 15000);
		    });
			
			document.getElementById("makanan-1").addEventListener('click', function () {
			    var text = document.getElementById('makanan');
			    var harga = document.getElementById('harga');
			    var jumlah = document.getElementById('jumlahMkn');
			    harga.value = (hargatotal += 15000);
			    countmakanan1 += 1;
			    document.getElementById("jumlahmakanan1").innerHTML = countmakanan1;
			    
			    tempo = ' Ayam Kampung Goreng';
		    	
			    if (temp.length == 0){
			    	arrJumlah.push(countmakanan1);
			    	jumlah.value = arrJumlah;
			    	temp.push(tempo);
			    	text.value = temp[0];
			    } else {
			    	for (var i = 0; i <= temp.length; i++){
			    		if (temp.includes(tempo)){
			    			for (var j = 0; j <= temp.length; j++){
			    				if (temp[j] == ' Ayam Kampung Goreng'){
					    			arrJumlah[j] = countmakanan1;
					    			jumlah.value = arrJumlah;
					    		}
			    			}
			    			break;
			    		} else {
			    			temp.push(tempo);
			    			arrJumlah.push(countmakanan1);
			    		}
			    	}
			    	text.value = temp;
			    	jumlah.value = arrJumlah;
			    }
			});
			
			document.getElementById("minjumlahmakanan2").addEventListener('click', function () {
		    	countmakanan2 -= 1;
		    	document.getElementById("jumlahmakanan2").innerHTML = countmakanan2;
		    	var jumlah = document.getElementById('jumlahMkn');
		    	for (var i = 0; i <= temp.length; i++){
		    		if (temp[i] == ' Ayam Kampung Goreng'){
		    			arrJumlah[i] = countmakanan2;
		    			jumlah.value = arrJumlah;
		    		}
		    	}
		    	var harga = document.getElementById('harga');
			    harga.value = (hargatotal -= 17000);
		    });
			
			document.getElementById("makanan-2").addEventListener('click', function () {
			    var text = document.getElementById('makanan');
			    var harga = document.getElementById('harga');
			    var jumlah = document.getElementById('jumlahMkn');
			    harga.value = (hargatotal += 17000);
			    countmakanan2 += 1;
			    document.getElementById("jumlahmakanan2").innerHTML = countmakanan2;
			    
			    tempo = ' Ayam Kampung Bakar';
		    	
			    if (temp.length == 0){
			    	arrJumlah.push(countmakanan2);
			    	jumlah.value = arrJumlah;
			    	temp.push(tempo);
			    	text.value = temp[0];
			    } else {
			    	for (var i = 0; i <= temp.length; i++){
			    		if (temp.includes(tempo)){
			    			for (var j = 0; j <= temp.length; j++){
			    				if (temp[j] == ' Ayam Kampung Bakar'){
					    			arrJumlah[j] = countmakanan2;
					    			jumlah.value = arrJumlah;
					    		}
			    			}
			    			break;
			    		} else {
			    			temp.push(tempo);
			    			arrJumlah.push(countmakanan2);
			    		}
			    	}
			    	text.value = temp;
			    	jumlah.value = arrJumlah;
			    }
			});
			
			
			
			
			
			
			document.getElementById("minjumlahmakanan3").addEventListener('click', function () {
		    	countmakanan3 -= 1;
		    	document.getElementById("jumlahmakanan3").innerHTML = countmakanan3;
		    	var jumlah = document.getElementById('jumlahMkn');
		    	for (var i = 0; i <= temp.length; i++){
		    		if (temp[i] == ' Ayam Mentega'){
		    			arrJumlah[i] = countmakanan3;
		    			jumlah.value = arrJumlah;
		    		}
		    	}
		    	var harga = document.getElementById('harga');
			    harga.value = (hargatotal -= 12000);
		    });
			
			document.getElementById("makanan-3").addEventListener('click', function () {
			    var text = document.getElementById('makanan');
			    var harga = document.getElementById('harga');
			    var jumlah = document.getElementById('jumlahMkn');
			    harga.value = (hargatotal += 12000);
			    countmakanan3 += 1;
			    document.getElementById("jumlahmakanan3").innerHTML = countmakanan3;
			    
			    tempo = ' Ayam Mentega';
		    	
			    if (temp.length == 0){
			    	arrJumlah.push(countmakanan3);
			    	jumlah.value = arrJumlah;
			    	temp.push(tempo);
			    	text.value = temp[0];
			    } else {
			    	for (var i = 0; i <= temp.length; i++){
			    		if (temp.includes(tempo)){
			    			for (var j = 0; j <= temp.length; j++){
			    				if (temp[j] == ' Ayam Mentega'){
					    			arrJumlah[j] = countmakanan3;
					    			jumlah.value = arrJumlah;
					    		}
			    			}
			    			break;
			    		} else {
			    			temp.push(tempo);
			    			arrJumlah.push(countmakanan3);
			    		}
			    	}
			    	text.value = temp;
			    	jumlah.value = arrJumlah;
			    }
			});
			
			document.getElementById("makanan-4").addEventListener('click', function () {
			    var text = document.getElementById('makanan');
			    text.value += 'Sapi Lada Hitam; ';
			});
			document.getElementById("makanan-5").addEventListener('click', function () {
			    var text = document.getElementById('makanan');
			    text.value += 'Sapi Gongso; ';
			});
			document.getElementById("makanan-6").addEventListener('click', function () {
			    var text = document.getElementById('makanan');
			    text.value += 'Sapi Sayur Asem; ';
			});
			document.getElementById("makanan-7").addEventListener('click', function () {
			    var text = document.getElementById('makanan');
			    text.value += 'Chicken Katsu; ';
			});
			document.getElementById("makanan-8").addEventListener('click', function () {
			    var text = document.getElementById('makanan');
			    text.value += 'Nasi Goreng Ayam; ';
			});
			document.getElementById("makanan-9").addEventListener('click', function () {
			    var text = document.getElementById('makanan');
			    text.value += 'Mie Goreng Ayam; ';
			});
			document.getElementById("makanan-10").addEventListener('click', function () {
			    var text = document.getElementById('makanan');
			    text.value += 'Steak Iga Sapi; ';
			});
			document.getElementById("makanan-11").addEventListener('click', function () {
			    var text = document.getElementById('makanan');
			    text.value += 'Siomay; ';
			});
			document.getElementById("makanan-12").addEventListener('click', function () {
			    var text = document.getElementById('makanan');
			    text.value += 'Batagor; ';
			});
			document.getElementById("makanan-13").addEventListener('click', function () {
			    var text = document.getElementById('makanan');
			    text.value += 'Roti Bakar Keju; ';
			});
			document.getElementById("makanan-14").addEventListener('click', function () {
			    var text = document.getElementById('makanan');
			    text.value += 'Kentang Goreng; ';
			});
			document.getElementById("makanan-15").addEventListener('click', function () {
			    var text = document.getElementById('makanan');
			    text.value += 'Singkong Goreng; ';
			});

			// Minuman
			document.getElementById("minuman-1").addEventListener('click', function () {
			    var text = document.getElementById('minuman');
			    text.value += 'Kopi Putih Mercury; ';
			});
			document.getElementById("minuman-2").addEventListener('click', function () {
			    var text = document.getElementById('minuman');
			    text.value += 'Kopi Susu Mercury; ';
			});
			document.getElementById("minuman-3").addEventListener('click', function () {
			    var text = document.getElementById('minuman');
			    text.value += 'Expresso; ';
			});
			document.getElementById("minuman-4").addEventListener('click', function () {
			    var text = document.getElementById('minuman');
			    text.value += 'Americano; ';
			});
			document.getElementById("minuman-5").addEventListener('click', function () {
			    var text = document.getElementById('minuman');
			    text.value += 'Cafe Latte; ';
			});
			document.getElementById("minuman-6").addEventListener('click', function () {
			    var text = document.getElementById('minuman');
			    text.value += 'Cappuccino; ';
			});
			document.getElementById("minuman-7").addEventListener('click', function () {
			    var text = document.getElementById('minuman');
			    text.value += 'Kopi Tubruk; ';
			});
			document.getElementById("minuman-8").addEventListener('click', function () {
			    var text = document.getElementById('minuman');
			    text.value += 'Kopi V60; ';
			});
			document.getElementById("minuman-9").addEventListener('click', function () {
			    var text = document.getElementById('minuman');
			    text.value += 'Blue Late; ';
			});
			document.getElementById("minuman-10").addEventListener('click', function () {
			    var text = document.getElementById('minuman');
			    text.value += 'Coconut Latte; ';
			});
			document.getElementById("minuman-11").addEventListener('click', function () {
			    var text = document.getElementById('minuman');
			    text.value += 'Matcha Late; ';
			});
			document.getElementById("minuman-12").addEventListener('click', function () {
			    var text = document.getElementById('minuman');
			    text.value += 'Chocolate; ';
			});
			document.getElementById("minuman-13").addEventListener('click', function () {
			    var text = document.getElementById('minuman');
			    text.value += 'Lemon Tea; ';
			});
			document.getElementById("minuman-14").addEventListener('click', function () {
			    var text = document.getElementById('minuman');
			    text.value += 'Orange Juice; ';
			});
			document.getElementById("minuman-15").addEventListener('click', function () {
			    var text = document.getElementById('minuman');
			    text.value += 'Mineral Water; ';
			});
			
		</script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>

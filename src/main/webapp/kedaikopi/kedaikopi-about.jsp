<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                <a class="navbar-brand fw-bold ps-3" href="">Kedai Kopi Mercury</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="<%=request.getContextPath()%>/new">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fw-bold text-danger" href="">About</a>
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
            <div class="d-flex">
                <img src="https://www.linkpicture.com/q/profil_3.png" alt="" height="200px" />
                <div class="ps-5">
                    <h3 class="py-3">About Us</h3>
                    <p>
                        Halo, selamat datang di website Kedai Kopi Mercury. Perkenalkan, admin adalah dua mahasiswa UKSW asal Salatiga yaitu Wibisono Adiyoyo (672019005) dan Ivan Andika Surya (672019171). Website ini ditujukan untuk memenuhi
                        tugas mata kuliah Pemrograman Lanjut yang diampu oleh Bapak Radius Tanone, S.Kom., M.Cs. Website ini menerapkan beberapa teknologi yang berkaitan dengan Java yaitu sebagai berikut:
                    </p>
                    <ul>
                        <li>Java Programming Language</li>
                        <li>MVC Design Pattern</li>
                        <li>Hibernate ORM</li>
                        <li>JavaServer Faces (JSF)</li>
                        <li>JavaServer Pages (JSP)</li>
                        <li>JSP Standard Tag Library (JSTL)</li>
                        <li>Bootstrap 5</li>
                        <li>Servlet</li>
                        <li>Java Development Kit (JDK)</li>
                        <li>Apache Tomcat Server</li>
                        <li>MySQL</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- stop tabel -->

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
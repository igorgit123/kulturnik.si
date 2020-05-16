<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>


<!DOCTYPE html>

<html lang="en">
<head>
    <title>Kulturnik</title>
    <meta charset="utf-8">
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
    <link rel="stylesheet" href="${pageContext.request.contextPath}fonts/icomoon/style.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/magnific-popup.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/jquery-ui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/owl.theme.default.min.css">


    <link rel="stylesheet" href="${pageContext.request.contextPath}css/aos.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}css/style.css">

</head>
<body>

<div class="site-wrap">
    <header class="site-navbar" role="banner">
        <div class="site-navbar-top">
            <div class="container">
                <div class="row align-items-center">


                    <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
                        <div class="site-logo">
                            <a href="${pageContext.request.contextPath}home" class="js-logo-clone">Kulturnik</a>
                        </div>
                    </div>

                    <div class="col-6 col-md-4 order-3 order-md-3 text-right">
                        <div class="site-top-icons">
                            <ul>
                                <li><a href="prijava"><span class="icon icon-person" ></span>Administrator</a></li>


                                <li class="d-inline-block d-md-none ml-md-0"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu"></span></a></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <nav class="site-navigation text-right text-md-center" role="navigation">
            <div class="container">
                <ul class="site-menu js-clone-nav d-none d-md-block">
                    <li><a href="home">Domov</a></li>
                    <li><a href="glasba">Glasba</a></li>
                    <li><a href="gledalisce">Gledališče</a></li>
                    <li><a href="razstave">Razstave</a></li>
                    <li><a href="sport">Šport</a></li>
                    <li><a href="kino">Kino</a></li>
                    <li><a href="o_nas">O nas</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <div class="site-blocks-cover" style="background-image: url(images/266779.jpg);" data-aos="fade">
        <div class="container">
            <div class="row align-items-start align-items-md-center justify-content-end">
                <div class="col-md-5 text-center text-md-left pt-5 pt-md-0">
                    <h1 class="mb-2" style="color: white">Vsi dogodki zbrani na enem mestu</h1>
                    <div class="intro-text text-center text-md-left">
                        <p class="mb-4" style="color: white">Razišči dogodke, ki jih ponuja naša spletna stran </p>
                        <p>
                            <a href="vsi_dogodki" class="btn btn-sm btn-primary">Vsi dogodki</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="site-section site-blocks-2">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-7 site-section-heading text-center pt-4">
                    <h2>Kam iti</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0" data-aos="fade" data-aos-delay="">
                    <a class="block-2-item" href="ljubljana">
                        <figure class="image">
                            <img src="images/ljubljana.jpg" alt="" class="img-fluid">
                        </figure>
                        <div class="text">

                            <h3>Ljubljana</h3>
                        </div>
                    </a>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-3 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="100">
                    <a class="block-2-item" href="maribor">
                        <figure class="image">
                            <img src="images/maribor.jpg" alt="" class="img-fluid">
                        </figure>
                        <div class="text">

                            <h3>Maribor</h3>
                        </div>
                    </a>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-3 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="200">
                    <a class="block-2-item" href="celje">
                        <figure class="image">
                            <img src="images/celje.jpg" alt="" class="img-fluid">
                        </figure>
                        <div class="text">
                            <h3>Celje</h3>
                        </div>
                    </a>
                </div>
                <div class="col-sm-6 col-md-6 col-lg-3 mb-5 mb-lg-0" data-aos="fade" data-aos-delay="100">
                    <a class="block-2-item" href="danasnji">
                        <figure class="image">
                            <img src="images/danasnji.jpg" alt="" class="img-fluid">
                        </figure>
                        <div class="text">

                            <h3>Dogodki danes</h3>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>


    <div class="site-section block-3 site-blocks-2 bg-light">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-7 site-section-heading text-center pt-4">
                    <h2>Na novo dodani</h2>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="nonloop-block-3 owl-carousel">

                        <c:forEach items="${indeks}" var="o"> <!-- Izpis seznama oseb -->
                            <div class="item">
                                <div class="block-4 text-center">
                                    <figure class="block-4-image">
                                        <img src="${o.slika}" alt="Image placeholder" class="img-fluid" height="500">
                                    </figure>
                                    <div class="block-4-text p-4">
                                        <h3><a href="#">${o.ime}</a></h3>
                                        <p class="mb-0">Kraj:&nbsp ${o.kraj}</p>
                                        <p class="text-primary font-weight-bold">Cena:&nbsp ${o.cena}€</p>
                                        <p class="text-primary font-weight-bold">Datum:&nbsp ${o.datum}</p>
                                        <p class="text-primary font-weight-bold">Čas:&nbsp ${o.cas}</p>
                                        <p class="mb-0">Izvajalec/nastopajoč-i:&nbsp ${o.izvajalec}</p>
                                        <p class="mb-0">Dvorana:&nbsp ${o.dvorana}</p>
                                        <p class="mb-0" style=" overflow-wrap: break-word;">Opis:&nbsp <a href="${o.opis}"> ${o.opis}</a> </p>
                                    </div>
                                </div>
                            </div>

                        </c:forEach>

                    </div>
                </div>
            </div>
        </div>
    </div>






    <footer class="site-footer border-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 mb-5 mb-lg-0">
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="footer-heading mb-4">Navigacija</h3>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <ul class="list-unstyled">
                                <li><a href="home">Domov</a></li>
                                <li><a href="glasba">Glasba</a></li>
                                <li><a href="gledalisce">Gledališče</a></li>
                            </ul>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <ul class="list-unstyled">
                                <li><a href="razstave">Razstave</a></li>
                                <li><a href="sport">Šport</a></li>
                                <li><a href="o_nas">O nas</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="block-5 mb-5">
                        <h3 class="footer-heading mb-4">Kontakt</h3>
                        <ul class="list-unstyled">
                            <li class="address">Koroška cesta 46, 2000 Maribor, Slovenija</li>
                            <li class="phone"><a href="tel://23923929210">(02) 220 70 00</a></li>
                            <li class="email">kulturnik.si@domena.com</li>
                        </ul>
                    </div>


                </div>
            </div>
            <div class="row pt-5 mt-5 text-center">
                <div class="col-md-12">
                </div>

            </div>
        </div>
    </footer>
</div>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/aos.js"></script>

<script src="js/main.js"></script>

</body>
</html>
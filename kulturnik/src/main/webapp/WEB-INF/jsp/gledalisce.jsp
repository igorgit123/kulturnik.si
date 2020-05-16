<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Kulturnik</title>
    <script type="text/javascript" src="https://www.napovednik.com/script/jquery.js"></script>

    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">


    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">


    <style type="text/css">

        #napovednikbox{width:300px;margin:0;padding:0;font-size:12px!important;line-height:20px!important;font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;font-weight:lighter;background:#EEE}

        #napovednikbox1{margin:0;padding:12px 16px;color:#FFF;background:#777;font-size:20px;font-weight:lighter}

        #napovednikbox2 ul{margin:0!important;padding:0!important;list-style:none none;border-top:1px solid #E6E6E6!important;}

        #napovednikbox2 li{margin:0!important;padding:0 16px 0 0!important;border-bottom:1px solid #E6E6E6!important; font-size:12px!important;line-height:20px!important; background: none!important;}

        #napovednikbox2 a{color:#000;font-weight:700;text-decoration:none!important;display:block;padding:6px 16px;background:url(https://www.napovednik.com/images/icon-more.png) right center/auto 16px no-repeat}

        #napovednikbox3{margin:0 3px 3px;text-align:right;font-size:10px}

        #napovednikbox4{margin:0;background:#AA171C;font-weight:700;text-align:center;font-size:16px}

        #napovednikbox4 a{color:#FFF;padding:12px 16px;display:block;text-decoration:none!important}

    </style>


</head>
<body onload="regijaa()">

<div class="site-wrap">
    <header class="site-navbar" role="banner">
        <div class="site-navbar-top">
            <div class="container">
                <div class="row align-items-center">

                    <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
                        <div class="site-logo">
                            <a href="home" class="js-logo-clone">Kulturnik</a>
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
                    <li class="active"><a href="gledalisce">Gledališče</a></li>
                    <li><a href="razstave">Razstave</a></li>
                    <li><a href="sport">Šport</a></li>
                    <li><a href="kino">Kino</a></li>
                    <li><a href="o_nas">O nas</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <div class="site-blocks-cover" style="background-image: url(images/gledalisce.jpg);" data-aos="fade">
        <div class="container">
            <div class="row align-items-start align-items-md-center justify-content-end">
                <div class="col-md-5 text-center text-md-left pt-5 pt-md-0">
                    <h1 class="mb-2" style="color: white">GLEDALIŠČE</h1>
                    <div class="intro-text text-center text-md-left">
                        <p class="mb-4" style="color: white">Razišči dogodke, ki jih ponuja naša spletna stran </p>
                        <p>
                            <a href="#" class="btn btn-sm btn-primary">Razišči zdaj</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="bg-light py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-0"><a href="index.html">Domov</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Gledališče</strong></div>
            </div>
        </div>
    </div>

    <div class="site-section">
        <div class="container">

            <div class="row mb-5">
                <div class="col-md-12 order-2">

                    <div class="row">
                        <div class="col-md-12 mb-5">
                            <div class="float-md-left mb-4"><h2 class="text-black h5">Gledališče</h2></div>
                            <div class="d-flex">
                                <div class="dropdown mr-1 ml-md-auto">
                                    <button type="button" class="btn btn-secondary btn-sm dropdown-toggle" id="dropdownMenuOffset" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Tip
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuOffset">
                                        <a class="dropdown-item" href="glasba">Glasba</a>
                                        <a class="dropdown-item" href="gledalisce">Gledališče</a>
                                        <a class="dropdown-item" href="razstave">Razstave</a>
                                        <a class="dropdown-item" href="sport">Šport</a>
                                        <a class="dropdown-item" href="kino">Kino</a>
                                    </div>
                                </div>
                                <div class="btn-group mr-1">
                                    <button type="button" class="btn btn-secondary btn-sm dropdown-toggle" id="dropdownMenuReference" data-toggle="dropdown">Cena</button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuReference">
                                        <a class="dropdown-item" href="nizka_cena">Nizka (Do 10€)</a>
                                        <a class="dropdown-item" href="srednja_cena">Srednja (Do 20€)</a>
                                        <a class="dropdown-item" href="visoka_cena">Visoka (Nad 20€)</a>
                                    </div>
                                </div>
                                <div class="btn-group mr-1">
                                    <button type="button" class="btn btn-secondary btn-sm dropdown-toggle" id="dropdownMenuReference" action="/krajglasba" data-toggle="dropdown">Kraj</button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuReference">

                                        <a class="dropdown-item" href="#" onclick="regijaa(2)">Maribor</a>
                                        <a class="dropdown-item" href="#" onclick="regijaa(1)">Ljubljana</a>
                                        <a class="dropdown-item" href="#" onclick="regijaa(3)">Celje</a>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



                    <div id="napovednikbox">

                        <div id="napovednikbox1">Ne spreglejte:</div>

                        <div id="napovednikbox2"></div>



                        <div id="napovednikbox4"><a href="http://localhost:8080/">Kulturnik.si</a></div>

                    </div>

                    <script type="text/javascript">

                        var regija='';
                     function regijaa(a) {
                         switch(a) {
                             case 1:
                                 regija = "LJ";
                                 jQuery( document ).ready(function() { getbox(); });
                                 break;
                             case 2:
                                 regija = "MB";
                                 jQuery( document ).ready(function() { getbox(); });
                                 break;
                             case 3:
                                 regija = "CE";
                                 jQuery( document ).ready(function() { getbox(); });
                                 break;
                             default:
                                 regija = '';
                                 jQuery( document ).ready(function() { getbox(); });
                         }



                     }

                        function getbox() {

                            jQuery.ajax({

                                type: 'GET',

                                url: 'https://www.napovednik.com/box.php?n=10&k=2&r='+regija+'&jsoncallback=?',

                                dataType: 'json',

                                jsonp:'jsoncallback',

                                success: function(data) {

                                    document.getElementById('napovednikbox2').innerHTML = data['data'];

                                }

                            });

                        }




                    </script>





                    <div class="row mb-5">

                        <c:forEach items="${dogodki}" var="o">
                            <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up">
                                <div class="block-4 text-center border">
                                    <figure class="block-4-image">
                                        <img src="${o.slika}" alt="Image placeholder" alt="Image placeholder" class="img-fluid">

                                    </figure>
                                    <div class="block-4-text p-4">
                                        <h3><a href="#">${o.ime}</a></h3>
                                        <p class="mb-0">Kraj:&nbsp ${o.kraj}</p>
                                        <p class="text-primary font-weight-bold">Cena:&nbsp ${o.cena}€</p>
                                        <p class="text-primary font-weight-bold">Datum:&nbsp ${o.datum}</p>
                                        <p class="text-primary font-weight-bold">Čas:&nbsp ${o.cas}</p>
                                        <p class="mb-0">Izvajalec/nastopajoč-i:&nbsp ${o.izvajalec}</p>
                                        <p class="mb-0">Dvorana:&nbsp ${o.dvorana}</p>
                                        <p class="mb-0">Opis:&nbsp ${o.opis}</p>
                                        <p class="mb-0">Tip:&nbsp ${o.tip}</p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
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
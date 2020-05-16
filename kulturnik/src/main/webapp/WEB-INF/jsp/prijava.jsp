<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Kulturnik</title>
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


    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<body>

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
                    <li><a href="gledalisce">Gledališče</a></li>
                    <li><a href="razstave">Razstave</a></li>
                    <li><a href="sport">Šport</a></li>
                    <li><a href="kino">Kino</a></li>
                    <li><a href="o_nas">O nas</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <div class="container login-container mt-4">
        <div class="row">
            <div class="col-md-6 login-form-1">
                <h3>Prijava</h3>
                <form method="get" action="/preveri">
                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="Email *" value="" name="email" required/>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Geslo *" value="" name="geslo" required/>
                    </div>
                    <c:if test="${preveri eq false}">
                        <div class="alert alert-danger">
                            <strong>Email ali geslo nepravilno!</strong>
                        </div>
                    </c:if>
                    <div class="form-group">
                        <input type="submit" class="btnSubmit" value="Prijava" />
                    </div>
                    <div class="form-group">
                        <a href="registracija">Še nisi registriran?</a>
                    </div>

                </form>
            </div>
        </div>
    </div>
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
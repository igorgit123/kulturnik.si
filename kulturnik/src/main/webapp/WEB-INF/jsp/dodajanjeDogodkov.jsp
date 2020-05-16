<!DOCTYPE html>
<html lang="en">
<head>
    <%@ page contentType="text/html; charset=UTF-8" %>
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
                            <a class="js-logo-clone">Kulturnik</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>




        <nav class="site-navigation text-right text-md-center" role="navigation">
            <div class="container">
                <ul class="site-menu js-clone-nav d-none d-md-block">
                    <li class="has-children">
                    <li><a href="index">dodajanje dogodkov</a></li>
                    <li><a href="seznamadmin">Seznam vseh dogodkov</a></li>
                    <li><a href="home">Odjava</a></li>
                </ul>
            </div>
        </nav>


    </header>









    <div class="container">
        <form method="post" action="/addDogodek">
        <!-- -----------------  -->
            <div class="row">
                <div class="col-sm-3">
                    Ime dogodka:
                </div>
                <div class="form-group">
                    <input type="text" name="ime" required/>
                </div>
            </div>
            <!-- -----------------  -->

            <div class="row">
                <div class="col-sm-3">
                    Kraj dogodka:
                </div>
                <div class="form-group">
                    <input type="text" name="kraj" required/>
                </div>
            </div>
            <!-- -----------------  -->
            <div class="row">
                <div class="col-sm-3">
                    Datum dogodka:
                </div>
                <div class="form-group">
                    <input type="date" name="datum" required/>
                </div>

            </div>
            <!-- -----------------  -->
            <div class="row">
                <div class="col-sm-3">
                    Čas dogodka:
                </div>
                <div class="form-group">
                    <input type="time" name="cas" required/>
                </div>

            </div>
            <!-- -----------------  -->

            <div class="row">
                <div class="col-sm-3">
                    Izvajalec/nastopajoči:
                </div>
                <div class="form-group">
                    <input type="text" name="izvajalec" required/>
                </div>
            </div>
            <!-- -----------------  -->
            <div class="row">
                <div class="col-sm-3">
                    Dvorana/prostor:
                </div>
                <div class="form-group">
                    <input type="text" name="dvorana" required/>

                </div>
            </div>
            <!-- -----------------  -->
            <div class="row">
                <div class="col-sm-3">

                    Cena:
                </div>
                <div class="form-group">
                    <input type="text" name="cena" required/>


                </div>
            </div>
            <!-- -----------------  -->
            <div class="row">

                <div class="col-sm-3">

                    Opis:
                </div>
                <div class="form-group">
                    <input type="text" name="opis" required/>
                </div>
            </div>
            <!-- -----------------  -->
            <div class="row">

                <div class="col-sm-3">

                    URL slike:
                </div>
                <div class="form-group">
                    <input type="text" name="slika" value="https://www.mearto.com/assets/no-image-83a2b680abc7af87cfff7777d0756fadb9f9aecd5ebda5d34f8139668e0fc842.png" required/>
                </div>
            </div>

            <div class="row">

                <div class="col-sm-3">
                    Tip dogodka:
                </div>
                <div class="form-group">



                        <input type="radio" name="tip" value="glasba"> Glasba<br>
                        <input type="radio" name="tip" value="kino"> Kino<br>
                        <input type="radio" name="tip" value="razstave"> Razstave<br>
                        <input type="radio" name="tip" value="gledalisce"> Gledališče<br>
                        <input type="radio" name="tip" value="sport"> Šport<br>





                </div>

            </div>
            <!-- -----------------  -->
            <!-- -----------------  -->



            <!-- -----------------  -->
            <div class="row">


                <input type="submit" class="btnSubmit" value="DODAJ DOGODEK"/>

            <!-- -----------------  -->
            </div>
             </form>




        <form action="/dodajRSS">

            <div class="row" style="margin-top: 50px; margin-bottom: 25px">


                <input type="submit" class="btnSubmit" style="color: red" value="Dodaj RSS dogodke" />
            </div>

        </form>


    </div>

    <div class="row">
        <p></p>
    </div>



    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/aos.js"></script>

    <script src="js/main.js"></script>

</div>
</body>
</html>
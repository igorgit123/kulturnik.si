<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <
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


    <form method="get" action="dogodekIzbrisi">
        <h1>Seznam dodanih dogodkov</h1>
        <table>
            <c:forEach items="${dogodki}" var="o">
                <tr>
                    <td>${o.ime}</td>
                    <td>
                        <button type="submit" formaction="urejanje"  name="odstrani" value="${o.id}" class="btn btn-primary">Uredi</button>
                    </td>
                    <td>
                        <button type="submit"  name="odstrani" value="${o.id}" class="btn btn-primary">Izbrisi</button>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </form>
</div>
</body>

</html>
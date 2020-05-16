<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="script" href="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"/>
    <link href="css/main.css" rel="stylesheet"/>
</head>

<body>

<div class="container">

    <h2>Hvala za registracijo, bila je uspešna</h2>
    Spodaj je tabela vseh adminov, stisni gumb ter se prijavi za popoln dostop ;)</br>

    <a href="prijava"><button type="button" onclick="">STISNI ME </button>  </a> </br>
    <table>
        <c:forEach items="${admin}" var="a"> <!-- Izpis seznama oseb -->
            <tr>

                <td>Ime: ${a.ime} |</td>
                <td> Priimek: ${a.priimek} |</td>
                <td> Email: ${a.email}</td>


            </tr>
        </c:forEach>
    </table>
</div>

</body>

</html>
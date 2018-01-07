<%-- 
    Document   : SelectPengiriman
    Created on : Dec 30, 2017, 6:14:15 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Daftar Pengiriman</title>
        <%@taglib  prefix="list" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    </head>
    <body>
        <p style="margin: 20px" type="Button">
            <a href="${pageContext.request.contextPath}/admin/InsertPengiriman" >
            Back
            </a>
        </p>
    <br>
    <div align="center" class="table-responsive" >
        <table class="table">
            <tr style="background-color: gray; color: whitesmoke; font-weight: bold">     
                <td> ID Pengiriman</td>
                <td> Nomor Resi </td>
                <td> Nama Penerima </td>
                <td> Nama Pengirim </td>
                <td> Total Tarif </td>
                <td> Status </td>
            </tr>
            <!--                <th> ID Pengiriman </th>
                            <th> Nomor Resi </th>
                            <th> Nama Penerima </th>
                            <th> Nama Pengirim </th>
                            <th> Total Tarif </th>
                            <th> Status </th>-->

            <list:forEach items="${list}" var="a">
                <tr>
                    <td>
                        ${a.getIdPengiriman()}
                    </td>
                    <td>
                        ${a.getNoResi()}
                    </td>
                    <td>
                        ${a.getNamaPenerima()}    
                    </td>
                    <td>
                        ${a.getNamaPengirim()}   
                    </td>
                    <td>
                        ${a.getTotalTarif()}
                    </td>
                    <td>
                        <a href="StatusPengiriman?status=${a.getStatus().getStatus()}&ID=${a.getIdPengiriman()}">${a.getStatus().getStatus()}</a>
                    </td>
                </tr>
            </list:forEach>

        </table>  
    </div>
</body>
</html>

<%-- 
    Document   : insertPengiriman
    Created on : Dec 29, 2017, 9:27:02 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <title>Input Pengiriman</title>

        <script>
            var cek = '${validator}';
            if (cek.length > 0) {
                alert(cek);
            }
        </script>   

        <style>
            .error {
                color: red; font-weight: bold; font-style: normal;
            }
        </style>
    </head>
    <%--<jsp:include page="menu_staff.jsp"/>--%>
    <body>

        <jsp:include page="menu_staff.jsp"/>


        <a href="SelectPengiriman">Status Pengiriman</a>


        <form:form action="InsertP" modelAttribute="fp" method="Post">
            <table>
                <tr>
                    <td>Nama Penerima </td>
                    <td><form:input path="namaPenerima"></form:input> <form:errors path="namaPenerima" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Alamat Penerima</td>
                    <td><form:input path="alamatPenerima"></form:input><form:errors path="alamatPenerima" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Kota Penerima</td>
                    <td><form:select path="kotaPenerima" items="${kotaAsal}"></form:select></td>
                </tr>
                <tr>
                    <td>Telepon Penerima</td>
                    <td><form:input path="teleponPenerima"></form:input> <form:errors path="teleponPenerima" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Nama Pengirim</td>
                    <td><form:input path="namaPengirim"></form:input> <form:errors path="namaPengirim" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Alamat Pengirim</td>
                    <td><form:input path="alamatPengirim"></form:input> <form:errors path="alamatPengirim" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Kota Pengirim</td>
                    <td><form:select path="kotaPengirim" items="${kotaTujuan}" value= "${kotaTujuan}" onchange="tampil(value)"></form:select></td>
                </tr>
                <tr>
                    <td>Telpon Pengirim</td>
                    <td><form:input path="teleponPengirim"></form:input> <form:errors path="teleponPengirim" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Asuransi</td>
                    <td><form:radiobutton path="asuransi" value="Y"/> Ya <form:radiobutton path="asuransi" value="T"/> Tidak</td>
                </tr>
                <tr>
                    <td>Berat Barang</td>
                    <td><form:input path="beratBarang"></form:input></td>
                </tr>
                <tr>
                    <td>Harga Barang</td>
                    <td><form:input path="hargaBarang"></form:input></td>
                </tr>
                <tr>
                    <td>Jenis Layanan</td>
                    <td><form:select path="jenisLayanan" items="${jenisLayanan}"></form:select><form:errors path="jenisLayanan" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Nama Paket</td>
                    <td><form:input path="namaPaket"></form:input> <form:errors path="namaPaket" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>Tipe Paket</td>
                    <td><form:input path="tipePaket"></form:input> <form:errors path="tipePaket" cssClass="error"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                    <form:button path="buttonInsertP" class="btn bg-primary" style="color:whitesmoke">
                        <i class="fa fa-pencil"></i> Submit
                    </form:button>
                    </td>
                </tr>
            </table>            
        </form:form>
    </body>
</html>

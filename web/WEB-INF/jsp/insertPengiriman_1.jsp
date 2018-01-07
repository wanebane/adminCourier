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
        <title>JSP Page</title>

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
                </table>            
                Nama Penerima : 
                    <form:input path="namaPenerima"></form:input> <form:errors path="namaPenerima" cssClass="error"/><br/>
            Alamat Penerima : 
                    <form:input path="alamatPenerima"></form:input><form:errors path="alamatPenerima" cssClass="error"/> <br/>
            Kota Penerima :  
                    <form:select path="kotaPenerima" items="${kotaAsal}"></form:select><br/>
            Telepon Penerima : 
                    <form:input path="teleponPenerima"></form:input> <form:errors path="teleponPenerima" cssClass="error"/><br/>
            Nama Pengirim : 
                    <form:input path="namaPengirim"></form:input> <form:errors path="namaPengirim" cssClass="error"/><br/>
            Alamat Pengirim : 
                    <form:input path="alamatPengirim"></form:input> <form:errors path="alamatPengirim" cssClass="error"/><br/>
            Kota Pengirim : 
                    <form:select path="kotaPengirim" items="${kotaTujuan}" value= "${kotaTujuan}" onchange="tampil(value)"></form:select><br/>
            Telepon Pengirim : 
                    <form:input path="teleponPengirim"></form:input> <form:errors path="teleponPengirim" cssClass="error"/> <br/>
            Asuransi : 
                    <form:radiobutton path="asuransi" value="Y"/>Iya<form:radiobutton path="asuransi" value="T"/>Tidak <br/>
            Berat Barang :  
            <form:input path="beratBarang"></form:input> <br/>
            Harga Barang :  
            <form:input path="hargaBarang"></form:input> <br/>
            Jenis Layanan : 
            <form:select path="jenisLayanan" items="${jenisLayanan}"></form:select><form:errors path="jenisLayanan" cssClass="error"/><br/>
            Nama Paket : 
            <form:input path="namaPaket"></form:input> <form:errors path="namaPaket" cssClass="error"/><br/>
            Tipe Paket : 
            <form:input path="tipePaket"></form:input> <form:errors path="tipePaket" cssClass="error"/><br/>
            <form:button path="buttonInsertP">Submit</form:button> <br/>
        </form:form>
    </body>
</html>

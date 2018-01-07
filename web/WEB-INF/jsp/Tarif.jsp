<%-- 
    Document   : kota
    Created on : Dec 28, 2017, 2:15:45 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Tarif</title>
        <script>
            var cek = '${validasi}';
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
    <body>
        <jsp:include page="menu_staff.jsp"/>
        <div align="center">
            <h1>Data Kota</h1>
            <form:form action="${pageContext.request.contextPath}/admin/save" commandName="tarifBean" modelAttribute="TarifBean" method="POST">
                <table>
                    <tr> 
                        <td><form:label path="kotaAsal">Kota Asal</form:label></td>
                        <td><form:select path="kotaAsal" style="width: 100%">
                                <c:forEach var="k" items="${kota}">
                                    <form:option path="kotaAsal" value="${k.kodeKota}">${k.namaKota}</form:option>
                                </c:forEach>
                            </form:select></td>
                        <td rowspan="2"><form:errors path="kotaAsal" cssClass="error"/><br/>
                            <form:errors path="kotaTujuan" cssClass="error"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="kotaTujuan">Kota Tujuan</form:label></td>
                        <td><form:select path="kotaTujuan" style="width: 100%">
                                <c:forEach var="k" items="${kota}">
                                    <form:option path="kotaTujuan" value="${k.kodeKota}">${k.namaKota}</form:option>
                                </c:forEach>
                            </form:select></td>
                    </tr>
                    <tr>
                        <td><form:label path="reguler">Harga Reguler</form:label></td>
                        <td><form:input path="reguler"/></td><td><form:errors path="reguler" cssClass="error"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="kilat">Harga Kilat</form:label></td>
                        <td><form:input path="kilat"/></td><td><form:errors path="kilat" cssClass="error"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="ons">Harga ONS</form:label></td>
                        <td><form:input path="ons"/></td><td><form:errors path="ons" cssClass="error"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="sds">Harga SDS</form:label></td>
                        <td><form:input path="sds"/></td><td><form:errors path="sds" cssClass="error"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="hds">Harga HDS</form:label></td>
                        <td><form:input path="hds"/></td><td><form:errors path="hds" cssClass="error"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="createdBy">Create By</form:label></td>
                        <td><form:input path="createdBy"/></td>
                        <td><form:errors path="createdBy" cssClass="error"/></td>
                    </tr>
                    <tr>
                        <td><form:label path="updatedBy">Update By</form:label></td>
                        <td><form:input path="updatedBy"/></td>
                        <td><form:errors path="updatedBy" cssClass="error"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <form:button name="submitButton" value="Submit" class="btn bg-success" style="color:whitesmoke">
                                <i class="fa fa-save"></i>
                                Simpan
                            </form:button>
                            </td>
                        </tr>
                    </table>
            </form:form>
        </div>
        <br/>
        <div align="center">
            <H1>Data Tarif</H1>
            <table border="1px">
                <tr>
                    <th>ID Tarif</th>
                    <th>Kota Asal</th>
                    <th>Kota Tujuan</th>
                    <th>Reguler</th>
                    <th>Kilat</th>
                    <th>ONS</th>
                    <th>SDS</th>
                    <th>HDS</th>
                    <th>Created By</th>
                    <th>Created Time</th>
                    <th>Update By</th>
                    <th>Update Time</th>
                    <th>Status</th>
                    <th>Aksi</th>
                </tr>
                <c:forEach var="x" items="${tarif}">
                    <tr>
                        <td>${x.idTarif}</td>
                        <td>${x.kotaAsal.getNamaKota()}</td>
                        <td>${x.kotaTujuan.getNamaKota()}</td>
                        <td>${x.reguler}</td>
                        <td>${x.kilat}</td>
                        <td>${x.ons}</td>
                        <td>${x.sds}</td>
                        <td>${x.hds}</td>
                        <td>${x.createdBy.getNamaLengkap()}</td>
                        <td>${x.createdTime}</td>
                        <td>${x.updatedBy.getNamaLengkap()}</td>
                        <td>${x.updatedTime}</td>
                        <td><a href="${pageContext.request.contextPath}/admin/updateStatus/${x.idTarif}">${x.status.getStatus()}</a></td>
                        <td><button class="btn bg-warning"><a href="${pageContext.request.contextPath}/admin/Get/${x.idTarif}">Update</a></button></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
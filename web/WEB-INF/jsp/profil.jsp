<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<h1>My Profile</h1>
<table>
    <tr>
        <td>Nama Lengkap</td>
        <td>:</td>
        <td>${admin.getNamaLengkap()}</td>
    </tr>
    <tr>
        <td>Username</td>
        <td>:</td>
        <td>${admin.getUsername()}</td>
    </tr>
<!--    <tr>
        <td>Password</td>
        <td>:</td>
        <td>${admin.getPassword()}</td>
    </tr>-->
</table>
    
    <hr/>
<form:form action="${pageContext.request.contextPath}/admin/profil/update/${admin.getLevel().getLevel()}/${admin.getIdAdmin()}" modelAttribute="profilBean" method="post">
    <table>
        <tr>
            <td><form:label path="nama">Nama Lengkap</form:label></td>
            <td><form:input path="nama" required="true"></form:input></td>
        </tr>
        <tr>
            <td><form:label path="username">Username</form:label></td>
            <td><form:input path="username" required="true"></form:input></td>
        </tr>
        <tr>
            <td><form:label path="password">Password</form:label></td>
            <td><form:password path="password" required="true"></form:password></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <form:button name="Update" value="Update" class="btn" style="background-color: orange">
                    <i class="fa fa-edit" ></i>
                    Update
                </form:button>
            </td>
        </tr>
    </table>
</form:form>
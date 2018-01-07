<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<h1>Register</h1>

<form:form action="${pageContext.request.contextPath}/admin/input/staff/save" method="post" modelAttribute="registerBean" >
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
                <form:button name="submitButton" value="Submit" class="btn bg-success" style="color:whitesmoke">
                    <i class="fa fa-save"></i>
                     Save
                </form:button>
            </td>
        </tr>
    </table>
</form:form>
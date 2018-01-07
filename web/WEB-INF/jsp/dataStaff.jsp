
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>Data Staff</h1>
<table>
    <thead>
        <tr>
            <th>No</th>
            <th>Nama Staff</th>
            <th>Option</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach varStatus="no" var="s" items="${staff}">
            <tr>
                <td>${no.count}</td>
                <td>${s.getNamaLengkap()}</td>
                <td>
                    <button class="btn bg-primary">
                        <a style="color:whitesmoke" href="${pageContext.request.contextPath}/admin/profil/${s.getIdAdmin()}">
                            <i class="fa fa-edit"></i>
                            Edit
                        </a>
                    </button>
                    <button class="btn bg-danger">
                        <a style="color:whitesmoke" href="${pageContext.request.contextPath}/admin/hapus/staff/${s.getIdAdmin()}" onclick="return confirm('Yakin Akan Menghapus Data ?')">
                            <i class="fa fa-trash-o"></i>
                            Hapus
                        </a>
                    </button>     
                </td>
            </tr>

        </c:forEach>

    </tbody>
</table>

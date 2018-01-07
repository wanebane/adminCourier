<!DOCTYPE html>
<html>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://v40.pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css"> 
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

    <body>
        <nav class="navbar navbar-expand-md navbar-dark" style="background: #363b41">
            <div class="container">
                <a class="navbar-brand" href="${pageContext.request.contextPath}/admin" style="margin-right: 20px">
                    <i class="fa fa-home"></i> Home
                </a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" 
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" 
                        aria-expanded="false" aria-label="Toggle navigation"> 
                    <span class="navbar-toggler-icon"></span> </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item " style="margin-right: 20px">
                            <a class="nav-link" href="${pageContext.request.contextPath}/admin/tarif">
                                <i class="fa fa-edit" style="color:whitesmoke"></i> 
                                Update Tarif</a>
                        </li>
                        <li class="nav-item" style="margin-right: 20px">
                            <a class="nav-link" href="${pageContext.request.contextPath}/admin/InsertPengiriman">
                                <i class="fa fa-pencil" style="color:whitesmoke"></i> 
                                Input Pengiriman</a>
                        </li>
                        <li class="nav-item" style="margin-right: 20px">
                            <a class="nav-link"  href="${pageContext.request.contextPath}/admin/profil/${admin.getIdAdmin()}">
                                <i class="fa fa-user-circle" style="color:whitesmoke"></i> 
                                My Profile
                            </a>
                        </li>
                        <li class="nav-item" style="margin-right: 20px">
                            <a class="nav-link" href="${pageContext.request.contextPath}/admin/logout" onclick="return confirm('Yakin Logout ?')">
                                <i class="fa fa-sign-out" style="color:whitesmoke"></i> Logout
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </body>

</html>

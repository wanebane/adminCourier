<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="css/style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    <style>
        @charset "utf-8";
        @import url(http://weloveiconfonts.com/api/?family=fontawesome);

        [class*="fontawesome-"]:before {
            font-family: 'FontAwesome', sans-serif;
        }

        body {
            background: white;
            color: #606468;
            font: 87.5%/1.5em 'Open Sans', sans-serif;
            margin: 0;
        }

        input {
            border: none;
            font-family: 'Open Sans', Arial, sans-serif;
            font-size: 16px;
            line-height: 1.5em;
            padding: 0;
            -webkit-appearance: none;
        }
        button{
            border: none;
            font-family: 'Open Sans', Arial, sans-serif;
            font-size: 16px;
            line-height: 1.5em;
            padding: 0;
            -webkit-appearance: none;
        }
        select{
            border: none;
            font-family: 'Open Sans', Arial, sans-serif;
            font-size: 16px;
            line-height: 1.5em;
            padding: 0;
        }
        p {
            line-height: 1.5em;
        }

        after { clear: both; }

        #login {
            margin: 50px auto;
            width: 350px;
        }

        #login form {
            margin: auto;
            padding: 22px 22px 22px 22px;
            width: 100%;
            border-radius: 5px;
            background: whitesmoke;
            border-top: 3px solid white;
            border-bottom: 3px solid white;
        }

        #login form span {
            background-color: #363b41;
            border-radius: 3px 0px 0px 3px;
            border-right: 3px solid white;
            color: whitesmoke;
            display: block;
            float: left;
            line-height: 50px;
            text-align: center;
            width: 50px;
            height: 50px;
        }

        #login form input[type="text"] {
            background-color: white;
            border-radius: 0px 3px 3px 0px;
            color: black;
            margin-bottom: 1em;
            padding: 0 16px;
            width: 250px;
            height: 50px;
        }
        #login form select[id="sel1"]{
            background-color: white;
            border-radius: 0px 3px 3px 0px;
            color: black;
            margin-bottom: 1em;
            padding: 0 16px;
            /*width: 235px;*/
            /*height: 50px;*/
        }
        #login form input[type="password"] {
            background-color: white;
            border-radius: 0px 3px 3px 0px;
            color: black;
            margin-bottom: 1em;
            padding: 0 16px;
            width: 250px;
            height: 50px;
        }

        #login form button[type="submitButton"]{
            background: gainsboro;
            border: 0;
            width: 100%;
            height: 40px;
            border-radius: 3px;
            color: black;
            cursor: pointer;
            transition: background 0.3s ease-in-out;

        }

        #login form button[type="submitButton"]:hover {
            background: #363b41;
            color: whitesmoke;
        }
    </style>
    <body>
        <!--<h1 style="text-align: center">Form Login</h1>-->
        <div id="login">
            <form:form action="${pageContext.request.contextPath}/admin/check" modelAttribute="loginBean" method="POST" >
               
                <span class="fontawesome-user" style="font-size: large"></span>
                <form:input id="user" path="username" required="true" placeholder="Username"></form:input><br/>
             
                <span class="fontawesome-lock" style="font-size: large"></span>
                <form:password id="pass" path="password" required="true" placeholder="Password"></form:password><br/>
          
                <form:select class="form-control" id="sel1" path="level">
                    <c:forEach var="lvl" items="${level}">
                        <form:option value="${lvl.getIdLevel()}">${lvl.getLevel()}</form:option>
                    </c:forEach>
                </form:select><br/>
                <form:button type="submitButton" name="submitButton" class="btn btn-primary" value="Submit">LOGIN</form:button>
            </form:form>
            <b>${errMsg}</b>
        </div>
    </body>
</html>

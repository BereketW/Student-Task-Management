
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="form.css">
    <title>Login or Sign Up to your account</title>
</head>
<style>
 <%@ include file="css/form.css"%>
</style>

<body>
<header>
        <a href="index.jsp" class="logo">
            <h1>a.Task</h1>
        </a>
    </header>
    <div class="container">
        <div class="forms">
            <div class="intro-form">
                <h1>Welcome to a.Task</h1>
                <p class="account">Already have an account?</p>
                <a href="login.jsp" class="btn btn-small">Login</a>

            </div>
            <div class="login">
                <h1>Sign Up</h1>
                <form action="Userservlet" method="post" class="form">
                    <div class="form-control mb-5">
                        <label for="username">First Name</label>
                        <input type="text" name="firstname" id="username" placeholder="First Name">
                    </div>
                    <div class="form-control mb-5">
                        <label for="username">Last Name</label>
                        <input type="text" name="lastname" id="username" placeholder="Last Name">
                    </div>
                    <div class="form-control mb-5">
                        <label for="username">User name</label>
                        <input type="text" name="username" id="username" placeholder="Username">
                    </div>

                    <div class="form-control mb-5">
                        <label for="firstname">Password</label>
                        <input type="password" name="password" id="password" placeholder="Password">
                    </div>
                    <div class="form-control mb-5">
                        <button class="btn btn-primary">Sign Up</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</body>

</html>
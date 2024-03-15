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
                <p class="account">Don't you have an account?</p>
                <a href="signup.jsp" class="btn btn-small">Sign Up</a>

            </div>
            <div class="login">
                <h1>Login</h1>
                <% if (request.getAttribute("Error") != null && request.getAttribute("Error").equals("error")) { %>
        <span class="login-error">Invalid username or password</span>
    <% } %>
                <form action="login" method="post" class="form">
                    <div class="form-control mb-5">
                        <label for="username ">Username</label>
                        <input class="${Error == 'error' ? 'red' : ''}" type="text" name="username" id="username" placeholder="Username">
                    </div>
                    <div class="form-control mb-5">
                        <label for="firstname ">Password</label>
                        <input class="${Error == 'error' ? 'red' : ''}" type="password" name="password" id="password" placeholder="Password">
                    </div>
                    <div class="form-control mb-5">
                        <button class="btn btn-primary">Login</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
    <script>

    </script>
</body>

</html>
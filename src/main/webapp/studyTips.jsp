<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "taskmanager.dao.BlogList" %>
<%@ page import = "adva.model.Blog" %>
<%@ page import = "java.util.*" %>
<%
List <Blog> blogs = BlogList.selectAllBlogs();
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="blog.css">
    <script src="blog.js" defer></script>
    <title>Study Tips</title>
</head>
<style>
<%@include file="css/blog.css" %>
</style>
<body>
    <header class="header">
        <h1 class="logo"><a href="index.jsp">a.Task</a></h1>
        <nav>
            <ul>
                <li class="links"><a href="index.jsp">Home</a></li>
                <li class="links"><a href="#">Study Tips</a></li>
                <li class="links"><a href="index.jsp#about">About</a></li>
            </ul>
        </nav>
        <div class="button">
            <a class="btn btn-primary" href="login.jsp">Login</a>
            <a class="btn btn-secondary" href="signup.jsp">Sign Up</a>
        </div>
    </header>
    <div class="blog-container">
    	 <% for (Blog blog : blogs) { %>
        <section class="blog none">
            <div class="image">
                <img src="<%=blog.getBlogImg() %>" alt="">
                <div class="title">
                    <h1><%=blog.getTitle() %></h1>
                    <span class="date"><%=blog.getPostDate()%></span>
                </div>
            </div>
            <div class="blog-content">
                <p><%=blog.getBlog()%></p>
            </div>
        </section>
		<%} %>
    </div>
    <div class="links">
        <a class="prev">Prev</a>
        <a class="next">Next</a>

    </div>
    
    <script>
    <%@include file = "blog.js"%>
    </script>
</body>

</html>
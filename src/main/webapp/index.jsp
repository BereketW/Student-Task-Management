<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}style.css"">
    <title>Document</title>
</head>
<style>
     <%@ include file="css/style.css"%>
</style>
<body>
    <header class="header">
        <h1 class="logo">a.Task</h1>
        <nav>
            <ul>
                <li class="links"><a href="#">Home</a></li>
                <li class="links"><a href="studyTips.jsp">Study Tips</a></li>
                <li class="links"><a href="#about">About</a></li>
            </ul>
        </nav>
        <div class="button">
            <a class="btn btn-primary" href="login.jsp">Login</a>
            <a class="btn btn-secondary" href="signup.jsp">Sign Up</a>
        </div>
    </header>
    <section class="main">
        <h1 class="title">Effiecient Task Managemenet Strategies.</h1>
        <p>
            Task management made easy - streamline your student life.
        </p>
        <a class="btn btn-secondary" href="signup.jsp">Get Started</a>
    </section>
    <section class="images">
        <img src="https://i.ibb.co/zH4RDbD/Screenshot-21-2-2024-122847-localhost.jpg" alt="Screenshot-21-2-2024-122847-localhost" border="0 class="left-image">
        <img src="https://i.ibb.co/p3Djhp6/Screenshot-21-2-2024-221633-localhost.jpg" alt="Screenshot-21-2-2024-221633-localhost" border="0" class="right-image" alt="">
    </section>
    <section class="about" id="about">
        <div class="about-contents">
            <div class="left">
                <p>About a.Task</p>
            </div>
            <div class="right">
                <p>Our platform is flexible, customizable, and adaptable to your needs, so you can stay organized and
                    focused no matter what your schedule looks like. Whether you're a high school student juggling
                    multiple classes and extracurricular activities, or a college student managing a busy schedule of
                    coursework, research, and internships, our task manager is here to help you succeed.
                </p>
            </div>
        </div>
    </section>
    <section class="features">
        <h1 class="feature-title">a.Task Features</h1>
        <div class="features-page">

            <div class="description">
                <button class="btn-feature btn-secondary">Featured</button>
                <h3>Enable students to assign a priority level to indicate the importance or urgency of the task.</h3>
                <p>Enable students to assign a priority level (In Progress, Done, New review) to indicate the importance
                    or urgency of the task.</p>
            </div>
            <div class="image">
                <img src="https://i.ibb.co/dtgjzzp/Screenshot-21-2-2024-122937-localhost.jpg" alt="Screenshot-21-2-2024-122937-localhost" border="0">
            </div>
        </div>
        <div class="features-page">
            <div class="description">
                <button class="btn-feature btn-secondary">Featured</button>
                <h3>Creating and managing tasks with due dates and reminders.</h3>
                <p>Creating and managing tasks: Input assignments, projects, and set due dates and reminders.Creating
                    and managing tasks with due dates and reminders: Our task manager allows students to input
                    assignments, projects, and other tasks, and set specific due dates and reminders to ensure they stay
                    on top of their academic responsibilities.
                </p>
            </div>
            <div class="image">
                <img src=https://i.ibb.co/t2M9JNh/Screenshot-21-2-2024-122911-localhost.jpg>
            </div>
        </div>
        <div class="features-page">
            <div class="description">
                <button class="btn-feature btn-secondary">Featured</button>
                <h3>Prioritizing and categorizing tasks by subject or project</h3>
                <p>Students can assign priority levels and categorize tasks based on subjects or projects, enabling them
                    to allocate their time and resources more efficiently and ensuring that they address the most
                    critical and relevant tasks first.</p>
            </div>
            <div class="image">
                <img src="https://i.ibb.co/dtgjzzp/Screenshot-21-2-2024-122937-localhost.jpg" alt="Screenshot-21-2-2024-122937-localhost" border="0" >
            </div>
        </div>
        <div class="features-page">
            <div class="description">
                <button class="btn-feature btn-secondary">Featured</button>
                <h3>Tracking progress with a clear visualization of tasks and their status</h3>
                <p> Our platform offers a visual representation of task completion and status, enabling students to
                    monitor their progress, identify areas that may require additional attention, and celebrate their
                    achievements.</p>
            </div>
            <div class="image">
                <img src="https://i.ibb.co/zH4RDbD/Screenshot-21-2-2024-122847-localhost.jpg" alt="Screenshot-21-2-2024-122847-localhost" border="0" alt="">
            </div>
        </div>
    </section>
    <footer>
        <div class="footer-page">
            <div class="footer-header">
                <h1>Ready to boost your productivity?</h1>
                <div class="btn-footer">
                    <a class="btn btn-primary" href="login.jsp">Login</a>
                    <a class="btn btn-dark" href="signup.jsp">Sign Up</a>
                </div>
            </div>
            <div class="footer-links">
                <div class="webpage">
                    <h2>a.Task</h2>
                    <p>Boosting Your Study productivity and Achieving Goals</p>
                    <a href="" class="email">mail@aTask.com</a>
                </div>
                <div class="home-links">
                    <li class="links"><a href="#">Home</a></li>
                    <li class="links"><a href="#about">About Us</a></li>

                </div>
                <div class="home-features">
                    <li class="links"><a href="signup.jsp">Get Started</a></li>
                    <li class="links"><a href="">Study Tips</a></li>
                </div>
            </div>
            <p class="copyright">All right served by Group Members</p>
        </div>
    </footer>
</body>

</html>
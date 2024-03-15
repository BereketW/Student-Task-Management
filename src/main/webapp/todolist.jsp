<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import = "java.util.*" %>
<%@ page import = "adva.model.todo" %>
<%@ page import = "taskmanager.dao.*" %>
  
 
<!DOCTYPE html>


<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="todos.css">
<link rel="stylesheet" type="text/css" href="form.css">
<script src="main.js" defer></script>

    <%

String username = (String) session.getAttribute("username");
List<todo> userTaskList = new TodoDaoImpl().selectAllTodos(username);
%>
    <title>Document</title>
</head>
<style>
     <%@ include file="css/todos.css"%>
      <%@ include file="css/form.css"%>
</style>
<body>
	<div class="progress">
	<div class="status">
	<div class="in-progress"></div>
	<span>In Progress</span>
	</div>
	<div class="status">
	<div class="completed">
	</div>
	<span>Completed</span>
	</div>
	</div>
	
    <div class="container-blur">
        <header>
            <div class="profile">
                <img src="https://www.svgrepo.com/show/498304/profile-tick.svg" alt="">
                <span>${username}</span>
            </div>
            <div class="header-buttons">
               <a href="#" title="Add New Task" class="btn-action btn-add"><img
                        src="https://www.svgrepo.com/show/497101/folder-add.svg" alt=""></a>
                <a href="logout" title="Logout" class="btn-action btn-logout"><img
                        src="https://www.svgrepo.com/show/454179/logout-multimedia-ui.svg" alt=""></a>

            </div>
        </header>
   <main>
<%if(userTaskList.isEmpty()){ %>
        	<h1 class="no-tasks">No Active Tasks Available</h1>
       <% }%>
        <% for (todo task : userTaskList) { %>
        
        
    <div class="task <%=task.getStatus()%>">
    	<span class="status none"><%=task.getStatus() %></span>
    	<span class="due-date"><%=task.getTargetDate()%></span>
    	<div class="header">
    	<h2 class="todo-title"><%= task.getTitle() %></h2>
    	<p class="description"><%=task.getDescription() %></p>
    	
    	</div>
        
        <div class="actions" data-task-id="<%= task.getId() %>" >
            <a onclick = "editHandle(this)" class="edit"> <img src="https://www.svgrepo.com/show/505369/edit-4.svg" alt=""></a>
            <a href="delete?id=<%=task.getId()%>"class="delete"> <img  src="https://www.svgrepo.com/show/415570/bin-delete-garbage.svg" alt=""></a>
            
        </div>
    </div>
<% } %>

    </div>

    </main>
    

    </div>

    <div class="add-task none">
        <h1 class="action-type">Add Task</h1>
        <form action="insert" class="form">
            <div class="form-control mb-5">
                <label for="title">Todo Title</label>
                <input type="text" class="title" name="title" class="title" placeholder="Todo title" required>
              
            </div>
            <div class="form-control mb-5">
                <label for="description">Todo Description</label>
                <input type="text" name="description" class="description" placeholder="Todo description" required>
            </div>
            <div class="form-control mb-5">
                <label for="username">Todo Status</label>
                <select name="isDone" class = "status" id="">
                    <option value="false">In Progress</option>
                    <option value="true">Completed</option>
                </select>

            </div>
			<input type="text" hidden name="username" id="username" value="<%=username%>">
            <div class="form-control mb-5">
                <label for="firstname">Due Date</label>
                <input type="date" name="targetDate" class = "targetDate" id="password" placeholder="Due date" required>
            </div>
            <div class="form-control">
                <button class="btn btn-primary">Add</button>
            </div>
        </form>
        <p class="close-pop">&times;</p>
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    <div class="edit-task none" id="editForm">
    
        <h1 class="action-type">Edit Task</h1>
        <form action="update" class="form">
            <div class="form-control mb-5">
                <label for="title">Todo Title</label>
                <input type="text" class="title" id="editTitle" name="title" placeholder="Todo title">
            </div>
            <div class="form-control mb-5">
                <label for="description">Todo Description</label>
                <input type="text" name="description" id="editDescription" class="description" placeholder="Todo description">
            </div>
            <div class="form-control mb-5">
                <label for="username">Todo Status</label>
                <select name="isDone" class = "status" id="editStatus">
                    <option value="false"><span class="option">In Progress</span></option>
                    <option value="true">Completed</option>
                </select>

            </div>
            <input type="text" hidden name="id" id="editId">
			<input type="text" hidden name="username" id="editUsername" value="<%=username%>">
            <div class="form-control mb-5">
                <label for="firstname">Due Date</label>
                <input type="date" name="targetDate" class = "targetDate" id="editDuedate" placeholder="Due date">
            </div>
            <div class="form-control mb-5">
                <button class="btn btn-primary" id="editAddd">Edit</button>
            </div>
        </form>
        <p class="close-pop">&times;</p>
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <script>
 <%@ include file="main.js"%>
</script>
</body>

</html>
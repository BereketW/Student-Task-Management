package taskmanager.dao;

import java.sql.SQLException;
import java.util.List;

import adva.model.todo;

public interface tododao {

 void insertTodo(todo todo) throws SQLException;

 List<todo> selectAllTodos(String username);

// List<todo> selectAllTodos();

 boolean deleteTodo(int id) throws SQLException;

 boolean updateTodo(todo todo) throws SQLException;

}

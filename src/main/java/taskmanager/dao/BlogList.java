package taskmanager.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import adva.model.Blog;

import jdbc.utils.JDBCUtils;

public class BlogList {
	public static List<Blog> selectAllBlogs() {
	    List<Blog> blogList = new ArrayList<>();
	    // Step 1: Establishing a Connection
	    try (Connection connection = JDBCUtils.getConnection();
	         // Step 2:Create a statement using connection object
	         PreparedStatement preparedStatement = connection.prepareStatement("select * from posts")){
	        //System.out.println(preparedStatement);
	        // Step 3: Execute the query or update query
	        ResultSet rs = preparedStatement.executeQuery();

	        // Step 4: Process the ResultSet object.
	        while (rs.next()) {
	        	String title = rs.getString("title");
	            String blog = rs.getString("blog");
	            String blogImg = rs.getString("img_url");
	            LocalDate postDate = LocalDate.parse(rs.getString("post_date"));   
	            blogList.add(new Blog(title, blog, blogImg, postDate));
	         
	        }
	    } catch (SQLException exception) {
	        JDBCUtils.printSQLException(exception);
	    }
	    return blogList;
	}

}

package adva.model;
import java.io.Serializable;
import java.time.LocalDate;

	
	
	public class Blog implements Serializable {
	  private static final long serialVersionUID = 1L;
	    private String title;
	    private String blog;
	    private String blogImg;
	    private LocalDate postDate;
	    
	    public String getTitle() {
			return title;
		}

		
		public String getBlog() {
			return blog;
		}

		

		public String getBlogImg() {
			return blogImg;
		}

		
		public Blog(String title, String blog, String blogImg, LocalDate postDate) {
			super();
			this.title = title;
			this.blog = blog;
			this.blogImg = blogImg;
			this.postDate = postDate;
		}

		public LocalDate getPostDate() {
			return postDate;
		}

		
		
	    
	   
	}




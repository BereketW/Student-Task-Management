/**
 * 
 */
const prevBtn = document.querySelector(".prev");
const nextBtn = document.querySelector(".next");
const blogs = document.querySelectorAll(".blog");
let i = localStorage.getItem('i');
i = i ? parseInt(i) : 0;
blogs[i].classList.remove("none");
prevBtn.addEventListener("click", () => {
  blogs.forEach((blog) => {
    blog.classList.add("none");
  });
  i <= 0 ? (i = 0) : (i -= 1);
	localStorage.setItem('i', i);
  blogs[i].classList.remove("none");
  console.log(i);
});
nextBtn.addEventListener("click", () => {
  blogs.forEach((blog) => {
    blog.classList.add("none");
  });
  i > blogs.length - 2 ? (i = 0) : (i = i + 1);
  localStorage.setItem('i', i);
  blogs[i].classList.remove("none");
  console.log(i);
});

/**
 * 
 */
const closePop = document.querySelectorAll(".close-pop");
const pop = document.querySelector(".pop");
const tasks = document.querySelectorAll(".task");
const body = document.querySelector("body");
const addTask = document.querySelector(".add-task");
const editTask = document.querySelector(".edit-task");
const btnAdd = document.querySelector(".btn-add");
const cBlur = document.querySelector(".container-blur");
const edit = document.querySelectorAll(".edit");
const del= document.querySelector(".delete");
const form = document.querySelector("form");
const actionType = document.querySelector(".action-type");
const manageTask = document.querySelector(".manage-task");


const title = document.querySelector(".title");
const description = document.querySelector(".description");
const stats = document.querySelector("select").value;
const date = document.querySelector(".targetDate");
// tasks.forEach((task) => {
//   task.addEventListener("click", () => {
//     pop.classList.remove("none");
//     cBlur.classList.add("blur");
//   });
// });

document.addEventListener("DOMContentLoaded", () => {
  btnAdd.addEventListener("click", () => {
    addTask.classList.remove("none");
    form.reset();
    body.classList.add("transparent");
    cBlur.classList.add("blur");
  });
});
closePop.forEach((btn) => {
  btn.addEventListener("click", (e) => {
    e.target.parentElement.classList.add("none");
    cBlur.classList.remove("blur");
    body.classList.remove("transparent");
  });
});





const editForm2 = document.querySelector("#editForm");
const id = document.querySelector("#editId");
const username = document.querySelector("#username");
const editTitle = document.querySelector("#editTitle");
const editDescription = document.querySelector("#editDescription");
const editStatus = document.querySelector("#editStatus");
const editDuedate = document.querySelector("#editDuedate");

const editBtn = document.querySelector("#editAdd");




let targetId = null;

function editHandle(button){
	id.value = button.parentNode.getAttribute("data-task-id");
	editForm2.classList.remove("none");
	 body.classList.add("transparent");
    cBlur.classList.add("blur");
	editTitle.value = button.parentNode.parentNode.querySelector('h2').textContent;
	editDescription.value = button.parentNode.parentNode.querySelector('p').textContent;
	editStatus.value = button.parentNode.parentNode.querySelector('.status').textContent;;
	editDuedate.value = button.parentNode.parentNode.querySelector(".due-date").textContent;
   	}
    
    
//editBtn.addEventListener("click", (e)=>{
//	e.preventDefault();
//	let title = editTitle.value;
//	let description = editDescription.value;
//	let status = editStatus.value;
//	let duedate = editDuedate.value;
//	let userName = username.value;
//	let xhr = new XMLHttpRequest();
//         xhr.open('POST', '/aTaskWebProject/update?id=' + targetId + '&&title=' + title + '&&description=' + description + '&&isDone=' + status + '&&targetDate=' + duedate + '&&username=' + userName , true);
//		 xhr.send();
 //        xhr.onload = function() {
//			 console.log("good request");
 //         };
//	console.log(title, description, status, duedate, targetId);
//	window.location.href="/aTaskWebProject/todolist.jsp";
//})
















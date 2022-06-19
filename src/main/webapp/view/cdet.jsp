<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib  uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Details</title>
<link rel="stylesheet" href="css/styles2.css" type ="stylesheet/css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- JavaScript Bundle with Popper -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
<style>
    * {
    box-sizing: border-box;
}

body {
    background: rgb(234, 238, 238);
    color: #05245a;
    letter-spacing: 0.2px;
    font-family: 'Roboto', sans-serif;
    padding: 0;
    margin: 0;
}

ul{
    padding: 0;
}

li{
    list-style: none;
    background-color: white;
    margin-top: 15px;
    padding: 10px;
    text-align: center;
    font-weight: 600 !important;
    margin-right: 10px;
    margin-left: 10px;
    cursor: pointer;
    
}
.dashboardBtn {
    text-decoration: none;
    color : black;
}

input {
    border-color: #d8e0e5;
    border-radius: 2px !important;
    box-shadow: none !important;
    font-weight: 300 !important;
}

.form-control:disabled,
.form-control[readonly] {
    background-color: #f6f7fb;
}

#left-menu {
    position: fixed;
    top: 0;
    left: 0;
    width: 280px;
    background: linear-gradient(to bottom, #05245a, #0446bb, #1a4999);
    overflow-y: auto;
    height: 100vh;
    border-right: 1px solid #e6ecf5;
    margin-top: 60px;
    overflow-x: hidden;
    z-index: 2;
}

#logo {
    position: fixed;
    top: 0;
    z-index: 2;
    left: 0;
    background-color: #464e62;
    border-color: #464e62;
    height: 60px;
    width: 280px;
    font-size: 30px;
    line-height: 2em;
    border-right: 1px solid #e6ecf5;
    z-index: 4;
    color: #fff;
    padding-left: 15px;
    overflow: hidden;
    text-align: center;
}
a{
    text-decoration: none;
    color: #05245a;
}
#main-content {
    min-height: calc(100vh - 60px);
    clear: both;
}

#page-container {
    padding-left: 300px;
    padding-top: 80px;
    padding-right: 25px;
}

#page-container.small-left-menu,
#header .header-left.small-left-menu {
    padding-left: 80px;
}

.card {
    border: 1px solid #e6ecf5;
    margin-bottom: 1em;
    padding-bottom: 20px;
    box-shadow: 2px 2px 18px 0px #cbc0c0;
}

.card .title {
    padding: 15px 20px;
    border-bottom: 1px solid #e6ecf5;
    margin-bottom: 10px;
    color: #fff;
    font-size: 18px;
    background: #1a4999;
    text-align: center;
}

.courseDetailsCard {
	border: 1px solid #e6ecf5;
	height : 250px;
    width : 200px;
    display : inline-block;
    position : relative;
    padding : 20px;
}

.courseDetailsCard:hover {
	box-shadow: 1px 1px 10px black;
}
.courseDetailsCard span {
display : block ;
color : black;
}

.courseDetailsCard a {
	position : absolute ;
	bottom : 0px;
	left : 0px;
	display : block;
	width : 100%;
	background : #1a4999;
	text-align : center;
	padding : 10px;
	color : white;
}

.card-header{
    color: white;
    background-color: #103b85;
    text-align: center;
}
.card-header h1{
    font-size: 32px;
}
.btn-primary{
    color: #ffffff;
    background-color: #103b85;
    border: 1px solid #103b85;
    margin-top: 15px;
}
.card-text{
    padding: 15px 0px;
}
.button-style{
    background-color: #103b85;
}
.button-style a{
    color: #ffffff;
}
.row{
    justify-content: space-between;

}
.container-fluid .row .card{
    margin-top: 50px;
}
.fa-check-square{
    color: #103b85;
}
.btn-design{
    color: #103b85;
    margin-top: 10px;
    background-color: #f3f2f2;
    padding: 10px;
    border: none;
    border-radius: 5px;

}
.badge{
    color: #103b85;
}
.fa-download{
    margin-right: 10px;
}
</style>
</head>
<body>
    <%@ include file="partials/menu.jsp" %>  
    <div id="main-content">
       <div id = "page-container">
        <div class="card text-center">
            <div class="card-header">
                <h1 class = "text-center" >${c.courseName}</h1>
            </div>
            <div class="card-body">
              <h5 class="card-title">
                <button type="button" class="btn-design">
                    Start Date <span class="badge badge-light">${c.startDate}</span>
                </button>
                <button type="button" class="btn-design">
                    End Date <span class="badge badge-light">${c.endDate}</span>
                </button>
            </h5>
              <p class="card-text">${c.description}</p>
              <security:authorize access = "hasRole('TEACHER')">
            	<li class="button-style"><a href = "${pageContext.request.contextPath}/addstudent?cid=${c.courseId}" class = "dashboardBtn"><span class="fa fa-add"> </span> Add new Student</a></li>
              </security:authorize>

            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                      <h5 class="card-header">Assigned Teachers</h5>
                      <p class="card-text">
                          <c:forEach var = "t" items = "${c.teachers}">
                            <div>
                                <span class="fa fa-check-square"></span>
                                <span>
                                    ${t.name}
                                </span>
                                <security:authorize access = "hasRole('ADMIN')">
                                	<div style="margin: 20px auto">
                                    		<a href = "/rmvt/tid/${t.id}/cid/${c.courseId}" class="btn-design">Remove</a>
                                    	<a href = "/rmvt/tid/${t.id}/cid/${c.courseId}" class="btn-design">Delete</a>
                                	</div>
                                </security:authorize>
                                
                               
                            </div> 
                          </c:forEach>
                           <c:if test = "${fn:length(c.teachers) eq 0}">
                            	<h5>No Teachers Enrolled for this course yet!</h5>
                            </c:if>
                        </p>
                    </div>
                </div>
        
        <security:authorize access = "hasRole('TEACHER')">
        
		        <!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Upload Study material</h5>
		        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true"></span>
		        </button>
		      </div>
		      <div class="modal-body">
		       <form:form action = "${pageContext.request.contextPath}/uploadassignment" method = "post" enctype = "multipart/form-data" id = "materialUploadForm">
						<input type = "number" name = "courseId" value = "${c.courseId}" hidden readonly>
						<textarea name = "description" placeholder = "enter description of course" class = "form-control"></textarea>
						<input type = "file" name = "file" id = "file">
						<button type = "submit" id = "uploadButton" class = "btn btn-primary">Upload</button>
					</form:form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>

	</security:authorize>
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                      <h5 class="card-header">Upload Documents</h5>
                      <p class="card-text">
                        
                            <h5> <b>Uploaded Materials</b></h5>
                            <security:authorize access = "hasRole('TEACHER')">
							                      			<!-- Button trigger modal -->
							<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
							  Upload study material
							</button>
						</security:authorize>
                      
                             <c:forEach var = "a" items = "${c.assignments}">
                                <div>
                                    <span class="fa fa-download"></span><a href = "${pageContext.request.contextPath}/downloadFile/${a.id}">${a.fileName}</a>
                                    <a target = "_blank" href = "${pageContext.request.contextPath}/view/${a.id}">VIEW</a>
                                </div> 
                            </c:forEach>
                            
                            <c:if test = "${fn:length(c.assignments) eq 0}">
                            	<h5>No Class Materials Uploaded for this Course yet!</h5>
                            </c:if>
                       
                      </p>
                    </div>
                </div>
        
        
                <security:authorize access = "hasRole('ADMIN')">
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                      <h5 class="card-header">Available Teachers</h5>
                      <p class="card-text">
                        <form:form method = "post" action = "/coursedetails/${c.courseId}">
                            <input type = "text" value = "${c.courseId}" name = "courseId" hidden>
                             <c:forEach var = "t" items = "${avlt}">
                                <div>
                                <input type = "checkbox" value = "${t.id}" name = "addTeachersIds[]">
                                 <span>
                                    ${t.name}
                                 </span>
                                 </div>
                            </c:forEach>
                            <div>
                                <button type = "submit" class="btn-design">Add</button>
                            </div>
                        </form:form>
                      </p>
                    </div>
                </div>
                
                </security:authorize>
                
                     
                <div class="card" style="width: 18rem;">
                    <div class="card-body">
                      <h5 class="card-header">Enrolled Students</h5>
                      <p class="card-text">
                        <c:forEach var = "s" items = "${c.enrolledStudents}">
                            <div class = "my-2" >
                            <span class="fa fa-check-square"></span>
                            <span>
                                ${s.name}
                            </span>
                            <div class = "my-3">
                                <a href = "${pageContext.request.contextPath}/rmvs/sid/${s.id}/cid/${c.courseId}" class="btn-design">Remove</a> 
                                <a href = "/studentdetails/${s.id}" class="btn-design">Details</a>
                            </div> 
                            </div>
                        </c:forEach>
                        
                         <c:if test = "${fn:length(c.enrolledStudents) eq 0}">
                            	<h5>No Students Enrolled for this course yet!</h5>
                            </c:if>
                       
                      </p>
                    </div>
                </div>



            </div>
        </div>
        
  		</div>
    </div>
    
</body>
<script>
	var form = document.getElementById('materialUploadForm');
	var uploadBtn = document.getElementById('uploadButton');
	
	uploadBtn.addEventListener('click' , () => {
		form.addEventListener("submit" , (e) => { e.preventDefault() })
		var file = document.getElementById('file');
		console.log(file.value);
		
        var allowedExtensions = /(\.pdf|\.docx)$/i;
        if (!allowedExtensions.exec(file.value)) {
            alert('Invalid file type. Please upload only .pdf format documents.');
            file.value = '';
        }
        else 
        	form.submit();
	})
</script>
</html>
<%@ page import="com.joruri.dao.StudentDAO" %>
<%@ page import="com.joruri.conn.DBConnect" %>
<%@ page import="com.joruri.entity.Student" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Student</title>
    <%@ include file="all_css.jsp"%>
</head>
<body class="bg-light">
<%@ include file="navbar.jsp"%>
<div class="container p-5">
    <div class="row">
        <div class="col-md-6 offset-3">
            <div class="card shadow rounded">
                <div class="card-body">
                    <p class="fs-3 text-center">Edit Student</p>

                    <%
                        int id = Integer.parseInt(request.getParameter("id"));
                        StudentDAO dao = new StudentDAO(DBConnect.getConn());
                        Student s = dao.getStudentByID(id);
                    %>
                    <form class="row g-3 needs-validation" novalidate method="post" action="update">
                        <div class="col-md-12">
                            <label for="validationCustom01" class="form-label">Full name</label>
                            <input type="text" class="form-control" id="validationCustom01" placeholder="full name" value="<%= s.getFullname() %>" required name="fullname">
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="col-md-12">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" value="<%= s.getEmail() %>" required placeholder="email" name="email">
                            <div class="valid-feedback">
                                valid email
                            </div>
                        </div>
                        <div class="col-md-12">
                            <label for="quality" class="form-label">Qualification</label>
                            <input type="text" class="form-control" id="quality" value="<%= s.getQuality() %>" required name="quality">
                            <div class="valid-feedback">
                                valid email
                            </div>
                        </div>
                        <div class="col-md-12">
                            <label for="dob" class="form-label">Date Of Birth</label>
                            <input type="date" class="form-control" id="dob" value="<%= s.getDateofbirth() %>" required name="dateofbirth">
                            <div class="valid-feedback">
                                Date Only
                            </div>
                        </div>
                        <div class="col-md-12">
                            <label for="address" class="form-label">Address</label>
                            <input type="text" class="form-control" id="address" value="<%= s.getAddress() %>" required name="address">
                            <div class="valid-feedback">
                                Address
                            </div>
                        </div>
                        <input type="hidden" value="<%= s.getId()%>" name="id">
                        <div class="col-12">
                            <button class="btn btn-primary col-md-12" type="submit">Update</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
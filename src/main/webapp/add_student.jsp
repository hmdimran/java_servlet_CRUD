<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Student</title>
    <%@ include file="all_css.jsp"%>
</head>
<body class="bg-light">
<%@ include file="navbar.jsp"%>
<div class="container p-5">
    <div class="row">
        <div class="col-md-6 offset-3">
            <div class="card shadow rounded">
                <div class="card-body">
                    <p class="fs-3 text-center">Add Student</p>
                    
                    <c:if test="${not empty success}">
                        <p class="text-center text-success">${success}</p>
                        <c:remove var="success"/>
                    </c:if>
                    <c:if test="${not empty error}">
                        <p class="text-center text-danger">${error}</p>
                        <c:remove var="error"/>
                    </c:if>
                    <form class="row g-3 needs-validation" novalidate method="post" action="register">
                        <div class="col-md-12">
                            <label for="validationCustom01" class="form-label">Full name</label>
                            <input type="text" class="form-control" id="validationCustom01" placeholder="full name" required name="fullname">
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="col-md-12">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" required placeholder="email" name="email">
                            <div class="valid-feedback">
                                valid email
                            </div>
                        </div>
                        <div class="col-md-12">
                            <label for="quality" class="form-label">Qualification</label>
                            <input type="text" class="form-control" id="quality" required name="quality">
                            <div class="valid-feedback">
                                valid email
                            </div>
                        </div>
                        <div class="col-md-12">
                            <label for="dob" class="form-label">Date Of Birth</label>
                            <input type="date" class="form-control" id="dob" required name="dateofbirth">
                            <div class="valid-feedback">
                                Date Only
                            </div>
                        </div>
                        <div class="col-md-12">
                            <label for="address" class="form-label">Address</label>
                            <input type="text" class="form-control" id="address" required name="address">
                            <div class="valid-feedback">
                                Address
                            </div>
                        </div>

                        <div class="col-12">
                            <button class="btn btn-primary col-md-12" type="submit">Add Student</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
<%@ page import="com.joruri.dao.StudentDAO" %>
<%@ page import="com.joruri.conn.DBConnect" %>
<%@ page import="java.util.List" %>
<%@ page import="com.joruri.entity.Student" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student List</title>
    <%@ include file="all_css.jsp"%>
</head>
<body class="bg-light">
<%@ include file="navbar.jsp"%>

    <div class="container p-3 ">
        <div class="card">
            <div class="card-body">
                <p class="text-center fs-1">All Student Details</p>
                <c:if test="${not empty success}">
                    <p class="text-center text-success">${success}</p>
                    <c:remove var="success"/>
                </c:if>
                <c:if test="${not empty error}">
                    <p class="text-center text-success">${error}</p>
                    <c:remove var="error"/>
                </c:if>
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">Full Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Qualification</th>
                        <th scope="col">Date Of Birth</th>
                        <th scope="col">Address</th>
                        <th scope="col">Action</th>
                    </tr>
                    </thead>
                    <tbody>

                    <%
                        StudentDAO dao = new StudentDAO(DBConnect.getConn());
                        List<Student> students = dao.getAllStudent();
                        for(Student s : students){ %>
                    <tr>
                        <td><%= s.getFullname() %></td>
                        <td><%= s.getEmail() %></td>
                        <td><%= s.getQuality() %></td>
                        <td><%= s.getDateofbirth() %></td>
                        <td><%= s.getAddress() %></td>
                        <td>
                            <a href="edit_student.jsp?id=<%= s.getId() %>" class="btn btn-sm btn-primary">Edit</a>
                            <a href="#" class="btn btn-sm btn-danger ms-2">Delete</a>
                        </td>
                    </tr>
                     <%   } %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</body>
</html>
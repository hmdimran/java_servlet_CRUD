package com.joruri.servlet;

import com.joruri.conn.DBConnect;
import com.joruri.dao.StudentDAO;
import com.joruri.entity.Student;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "update student",value = "/update")
public class UpdateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String fullname = req.getParameter("fullname");
        String email = req.getParameter("email");
        String quality = req.getParameter("quality");
        String dateofbirth = req.getParameter("dateofbirth");
        String address = req.getParameter("address");

        Student student = new Student(id,fullname,email,quality,dateofbirth,address);
        StudentDAO studentDAO = new StudentDAO(DBConnect.getConn());
        boolean f = studentDAO.updateStudent(student);
        HttpSession session = req.getSession();
        if(f){
            session.setAttribute("success","Student Update Successfully");
            resp.sendRedirect("index.jsp");
        }else {
            session.setAttribute("error","Error Found On Server");
            resp.sendRedirect("index.jsp");
        }
    }
}

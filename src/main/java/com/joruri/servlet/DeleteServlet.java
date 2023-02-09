package com.joruri.servlet;

import com.joruri.conn.DBConnect;
import com.joruri.dao.StudentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "Delete Student",value = "/delete")
public class DeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));

        StudentDAO dao = new StudentDAO(DBConnect.getConn());

        boolean f =  dao.deleteStudentbyID(id);
        HttpSession session = req.getSession();
        if(f){
            session.setAttribute("deleteed","Student Delete Successfully");
            resp.sendRedirect("index.jsp");
        }else {
            session.setAttribute("error","Error Found On Server");
            resp.sendRedirect("index.jsp");
        }

    }
}

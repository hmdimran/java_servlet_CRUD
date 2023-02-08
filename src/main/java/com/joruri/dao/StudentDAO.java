package com.joruri.dao;

import com.joruri.entity.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class StudentDAO {
    private Connection conn;

    public StudentDAO(Connection conn) {
        this.conn = conn;
    }

    public boolean addStudent(Student student){
        boolean success = false;

        try {
            String sql = "insert into users(fullname,email,quality,dateofbirth,address) values(?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,student.getFullname());
            ps.setString(2,student.getEmail());
            ps.setString(3,student.getQuality());
            ps.setString(4,student.getDateofbirth());
            ps.setString(5,student.getAddress());

            int i = ps.executeUpdate();
            if(i >0){
                success = true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        return success;
    }
}

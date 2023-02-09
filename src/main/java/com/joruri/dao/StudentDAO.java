package com.joruri.dao;

import com.joruri.entity.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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

    public List<Student> getAllStudent(){
        List<Student> list = new ArrayList<>();
        Student s = null;

        try {
            String sql = "select * from users";
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()){
                s = new Student();
                s.setId(rs.getInt(1));
                s.setFullname(rs.getString(2));
                s.setEmail(rs.getString(3));
                s.setQuality(rs.getString(4));
                s.setDateofbirth(rs.getString(5));
                s.setAddress(rs.getString(6));
                list.add(s);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return list;
    }

    public Student getStudentByID(int id){
        Student s = null;
        try {
            String sql = "select * from users where id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()){
                s = new Student();
                s.setId(rs.getInt(1));
                s.setFullname(rs.getString(2));
                s.setEmail(rs.getString(3));
                s.setQuality(rs.getString(4));
                s.setDateofbirth(rs.getString(5));
                s.setAddress(rs.getString(6));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return s;
    }

    public boolean updateStudent(Student student){
        boolean success = false;

        try {
            String sql = "update users set fullname = ? ,email = ? ,quality = ? ,dateofbirth = ? ,address = ? where id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,student.getFullname());
            ps.setString(2,student.getEmail());
            ps.setString(3,student.getQuality());
            ps.setString(4,student.getDateofbirth());
            ps.setString(5,student.getAddress());
            ps.setInt(6,student.getId());

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

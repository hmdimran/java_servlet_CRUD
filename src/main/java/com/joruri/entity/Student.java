package com.joruri.entity;

public class Student {
    private int id;
    private String fullname;
    private String email;
    private String quality;
    private String dateofbirth;
    private String address;

    public Student() {
        super();
    }

    public Student(String fullname, String email, String quality, String dateofbirth, String address) {
        this.fullname = fullname;
        this.email = email;
        this.quality = quality;
        this.dateofbirth = dateofbirth;
        this.address = address;
    }
    public Student(int id, String fullname, String email, String quality, String dateofbirth, String address) {
        this.id = id;
        this.fullname = fullname;
        this.email = email;
        this.quality = quality;
        this.dateofbirth = dateofbirth;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getQuality() {
        return quality;
    }

    public void setQuality(String quality) {
        this.quality = quality;
    }

    public String getDateofbirth() {
        return dateofbirth;
    }

    public void setDateofbirth(String dateofbirth) {
        this.dateofbirth = dateofbirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", fullname='" + fullname + '\'' +
                ", email='" + email + '\'' +
                ", quality='" + quality + '\'' +
                ", dateofbirth='" + dateofbirth + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}

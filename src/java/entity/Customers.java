/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

public class Customers {
    private int id;
    private String fullname;
    private String email;
    private String phone;
    private boolean gender;
    private String DateOfBirth;
    private String address;
    private String username;
    private String password;
    private boolean isSell;
    private boolean isAdmin;

    public Customers() {
    }

    public Customers(int id, String fullname, String email, String phone, boolean gender, String DateOfBirth, String address, String username, String password, boolean isSell, boolean isAdmin) {
        this.id = id;
        this.fullname = fullname;
        this.email = email;
        this.phone = phone;
        this.gender = gender;
        this.DateOfBirth = DateOfBirth;
        this.address = address;
        this.username = username;
        this.password = password;
        this.isSell = isSell;
        this.isAdmin = isAdmin;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getDateOfBirth() {
        return DateOfBirth;
    }

    public void setDateOfBirth(String DateOfBirth) {
        this.DateOfBirth = DateOfBirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isIsSell() {
        return isSell;
    }

    public void setIsSell(boolean isSell) {
        this.isSell = isSell;
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "Customers{" + "id=" + id + ", fullname=" + fullname + ", email=" + email + ", phone=" + phone + ", gender=" + gender + ", DateOfBirth=" + DateOfBirth + ", address=" + address + ", username=" + username + ", password=" + password + ", isSell=" + isSell + ", isAdmin=" + isAdmin + '}';
    }
    
}


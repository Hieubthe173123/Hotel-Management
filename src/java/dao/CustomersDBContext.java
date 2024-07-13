/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Customers;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.*;

public class CustomersDBContext extends DBContext {

    public List<Customers> getAllCustomer() {
        List<Customers> list = new ArrayList<>();
        try {
            String sql = "SELECT TOP (1000) [CustomerID]\n"
                    + "      ,[FullName]\n"
                    + "      ,[Email]\n"
                    + "      ,[Phone]\n"
                    + "      ,[Gender]\n"
                    + "      ,[DateOfBirth]\n"
                    + "      ,[address]\n"
                    + "      ,[username]\n"
                    + "      ,[password]\n"
                    + "      ,[isSell]\n"
                    + "      ,[isAdmin]\n"
                    + "  FROM [villa].[dbo].[Customers]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Customers c = new Customers();
                c.setId(rs.getInt("CustomerID"));
                c.setFullname(rs.getString("Fullname"));
                c.setEmail(rs.getString("Email"));
                c.setPhone(rs.getString("Phone"));
                c.setGender(rs.getBoolean("Gender"));
                c.setDateOfBirth(rs.getString("DateOfBirth"));
                c.setAddress(rs.getString("address"));
                c.setIsSell(rs.getBoolean("isSell"));
                c.setIsAdmin(rs.getBoolean("isAdmin"));
                list.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(VillasDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public Customers login(String username, String password) {
        try {
            String sql = "select * from Customers\n"
                    + "where username = ? and password =?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Customers c = new Customers();
                c.setId(rs.getInt("CustomerID"));
                c.setFullname(rs.getString("Fullname"));
                c.setEmail(rs.getString("Email"));
                c.setPhone(rs.getString("Phone"));
                c.setGender(rs.getBoolean("Gender"));
                c.setDateOfBirth(rs.getString("DateOfBirth"));
                c.setAddress(rs.getString("address"));
                c.setUsername(rs.getString("username"));
                c.setIsSell(rs.getBoolean("isSell"));
                c.setIsAdmin(rs.getBoolean("isAdmin"));
                return c;
            }
        } catch (SQLException ex) {
            Logger.getLogger(VillasDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    public Customers checkAccount(String username) {
        try {
            String sql = "select * from Customers\n"
                    + "where username = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Customers c = new Customers();
                c.setId(rs.getInt("CustomerID"));
                c.setFullname(rs.getString("Fullname"));
                c.setEmail(rs.getString("Email"));
                c.setPhone(rs.getString("Phone"));
                c.setGender(rs.getBoolean("Gender"));
                c.setDateOfBirth(rs.getString("DateOfBirth"));
                c.setAddress(rs.getString("address"));
                c.setUsername(rs.getString("username"));
                c.setPassword(rs.getString("password"));
                c.setIsSell(rs.getBoolean("isSell"));
                c.setIsAdmin(rs.getBoolean("isAdmin"));
                return c;
            }
        } catch (SQLException ex) {
            Logger.getLogger(VillasDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    public void signup(String username, String password) {
        try {
            String sql = "INSERT INTO [dbo].[Customers] ([username], [password])\n"
                    + "VALUES (?, ?);";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(VillasDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    public static void main(String[] args) {
        CustomersDBContext DB = new CustomersDBContext();
        
    }

}

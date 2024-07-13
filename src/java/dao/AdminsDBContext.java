/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Admins;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AdminsDBContext extends DBContext {

    public List<Admins> getAllAdmins() {
        List<Admins> list = new ArrayList<>();
        try {
            String sql = "SELECT TOP (1000) [AdminID]\n"
                    + "      ,[Username]\n"
                    + "      ,[Password]\n"
                    + "      ,[FullName]\n"
                    + "      ,[Email]\n"
                    + "      ,[Role]\n"
                    + "     FROM [villa].[dbo].[Admins]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Admins a = new Admins();
                a.setId(rs.getInt("AdminID"));
                a.setUsername(rs.getString("Username"));
                a.setPassword(rs.getString("Password"));
                a.setFullname(rs.getString("FullName"));
                a.setEmail(rs.getString("Email"));
                a.setRole(rs.getString("Role"));
                list.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(VillasDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public static void main(String[] args) {
        AdminsDBContext ad = new AdminsDBContext();
        List<Admins> list = ad.getAllAdmins();
        for (Admins a : list) {
            System.out.println(a);
        }
    }
}

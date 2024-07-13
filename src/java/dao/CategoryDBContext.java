/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.category;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class CategoryDBContext extends DBContext {

    public List<category> getAllCategory() {
        List<category> list = new ArrayList<>();
        try {
            String sql = "SELECT TOP (1000) [cid]\n"
                    + "      ,[cname]\n"
                    + "  FROM [villa].[dbo].[category]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                category c = new category();
                c.setCid(rs.getInt("cid"));
                c.setCname(rs.getString("cname"));

                list.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(VillasDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public static void main(String[] args) {
        CategoryDBContext ct = new CategoryDBContext();
        List<category> list = ct.getAllCategory();
        for (category c : list) {
            System.out.println(c);
        }
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.category;
import entity.catetienich;
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
public class CatetienichDBContext extends DBContext {

    public List<catetienich> getAllCateTienich() {
        List<catetienich> list = new ArrayList<>();
        try {
            String sql = "SELECT TOP (1000) [catid]\n"
                    + "      ,[catiname]\n"
                    + "  FROM [villa].[dbo].[catetienich]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                catetienich ca = new catetienich();
                ca.setCatid(rs.getInt("catid"));
                ca.setCatiname(rs.getString("catiname"));

                list.add(ca);
            }
        } catch (SQLException ex) {
            Logger.getLogger(VillasDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public static void main(String[] args) {
        CatetienichDBContext ct = new CatetienichDBContext();
        List<catetienich> list = ct.getAllCateTienich();
        for (catetienich c : list) {
            System.out.println(c);
        }
    }

}

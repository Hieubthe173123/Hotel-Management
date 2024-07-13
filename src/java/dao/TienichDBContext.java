/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Villas;
import entity.catetienich;
import entity.tienich;
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
public class TienichDBContext extends DBContext {

    public List<tienich> getAllTienich() {
        List<tienich> list = new ArrayList<>();
        try {
            String sql = "SELECT TOP (1000) [tienichID]\n"
                    + "      ,[tentienich]\n"
                    + "      ,[price]\n"
                    + "      ,[categoriesTi]\n"
                    + "      ,[catid]\n"
                    + "      ,[image]\n"
                    + "  FROM [villa].[dbo].[tienich]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                tienich ti = new tienich();
                ti.setTienichID(rs.getInt("tienichID"));
                ti.setTentienich(rs.getString("tentienich"));
                ti.setPrice(rs.getDouble("price"));
                ti.setCategoriesTi(rs.getString("categoriesTi"));
                ti.setImage(rs.getString("image"));
                list.add(ti);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TienichDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<tienich> getTienichByCID(String catid) {
        List<tienich> list = new ArrayList<>();
        try {
            String sql = "SELECT TOP (1000) [tienichID]\n"
                    + "      ,[tentienich]\n"
                    + "      ,[price]\n"
                    + "      ,[categoriesTi]\n"
                    + "      ,[catid]\n"
                    + "      ,[image]\n"
                    + "  FROM [villa].[dbo].[tienich]\n"
                    + "  where catid =?";

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, catid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                tienich t = new tienich();

                t.setTienichID(rs.getInt("tienichID"));
                t.setTentienich(rs.getString("tentienich"));
                t.setPrice(rs.getDouble("price"));
                t.setCategoriesTi(rs.getString("categoriesTi"));
                t.setCatid(rs.getString("catid"));
                t.setImage(rs.getString("image"));
                list.add(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(TienichDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public static void main(String[] args) {
        TienichDBContext ct = new TienichDBContext();
        List<tienich> list = ct.getAllTienich();
        for (tienich c : list) {
            System.out.println(c);
        }
    }
}

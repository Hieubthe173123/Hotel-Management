/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Admins;
import entity.Villas;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.*;

public class VillasDBContext extends DBContext {

    public List<Villas> getAllVillas() {
        List<Villas> list = new ArrayList<>();
        try {
            String sql = "SELECT TOP (1000) [VillaID]\n"
                    + "      ,[VillaName]\n"
                    + "      ,[Address]\n"
                    + "      ,[Description]\n"
                    + "      ,[MaxOccupancy]\n"
                    + "      ,[Amenities]\n"
                    + "      ,[image]\n"
                    + "      ,[Categories]\n"
                    + "      ,[price]\n"
                    + "  FROM [villa].[dbo].[Villas]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Villas v = new Villas();
                v.setId(rs.getInt("VillaID"));
                v.setName(rs.getString("VillaName"));
                v.setAddress(rs.getString("Address"));
                v.setDescription(rs.getString("Description"));
                v.setMaxOccupancy(rs.getInt("MaxOccupancy"));
                v.setAmenities(rs.getString("Amenities"));
                v.setImage(rs.getString("image"));
                v.setCategories(rs.getString("Categories"));
                v.setPrice(rs.getDouble("price"));
                list.add(v);
            }
        } catch (SQLException ex) {
            Logger.getLogger(VillasDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public List<Villas> getVillasByCID(String cid) {
        List<Villas> list = new ArrayList<>();
        try {
            String sql = "SELECT TOP (1000) [VillaID]\n"
                    + "      ,[VillaName]\n"
                    + "      ,[Address]\n"
                    + "      ,[Description]\n"
                    + "      ,[MaxOccupancy]\n"
                    + "      ,[Amenities]\n"
                    + "      ,[image]\n"
                    + "      ,[Categories]\n"
                    + "      ,[price]\n"
                    + "      ,[cid]\n"
                    + "	  \n"
                    + "  FROM [villa].[dbo].[Villas]\n"
                    + "  where cid = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, cid);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Villas v = new Villas();

                v.setId(rs.getInt("VillaID"));
                v.setName(rs.getString("VillaName"));
                v.setAddress(rs.getString("Address"));
                v.setDescription(rs.getString("Description"));
                v.setMaxOccupancy(rs.getInt("MaxOccupancy"));
                v.setAmenities(rs.getString("Amenities"));
                v.setImage(rs.getString("image"));
                v.setCategories(rs.getString("Categories"));
                v.setPrice(rs.getDouble("price"));
                v.setCid(rs.getString("cid"));
                list.add(v);
            }
        } catch (SQLException ex) {
            Logger.getLogger(VillasDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public Villas getVillasByID(String VillaID) {

        try {
            String sql = "select * from Villas \n"
                    + "where VillaID = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, VillaID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Villas v = new Villas();

                v.setId(rs.getInt("VillaID"));
                v.setName(rs.getString("VillaName"));
                v.setAddress(rs.getString("Address"));
                v.setDescription(rs.getString("Description"));
                v.setMaxOccupancy(rs.getInt("MaxOccupancy"));
                v.setAmenities(rs.getString("Amenities"));
                v.setImage(rs.getString("image"));
                v.setCategories(rs.getString("Categories"));
                v.setPrice(rs.getDouble("price"));
                v.setCid(rs.getString("cid"));
                return v;
            }
        } catch (SQLException ex) {
            Logger.getLogger(VillasDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    public Villas getLast() {

        try {
            String sql = "SELECT TOP (1) [VillaID],\n"
                    + "                  [VillaName],\n"
                    + "                  [Address],\n"
                    + "                  [Description],\n"
                    + "                  [MaxOccupancy],\n"
                    + "                  [Amenities],\n"
                    + "                  [image],\n"
                    + "                  [Categories],\n"
                    + "                  [price],\n"
                    + "                  [cid],\n"
                    + "                  [tienichID]\n"
                    + "FROM [villa].[dbo].[Villas]\n"
                    + "\n"
                    + "ORDER BY [VillaID] DESC;";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Villas v = new Villas();

                v.setId(rs.getInt("VillaID"));
                v.setName(rs.getString("VillaName"));
                v.setAddress(rs.getString("Address"));
                v.setDescription(rs.getString("Description"));
                v.setMaxOccupancy(rs.getInt("MaxOccupancy"));
                v.setAmenities(rs.getString("Amenities"));
                v.setImage(rs.getString("image"));
                v.setCategories(rs.getString("Categories"));
                v.setPrice(rs.getDouble("price"));
                v.setCid(rs.getString("cid"));
                return v;
            }
        } catch (SQLException ex) {
            Logger.getLogger(VillasDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    public List<Villas> getVillasByName(String txtSearch) {
        List<Villas> list = new ArrayList<>();
        try {
            String sql = "select * from Villas\n"
                    + "where VillaName like ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + txtSearch + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Villas v = new Villas();

                v.setId(rs.getInt("VillaID"));
                v.setName(rs.getString("VillaName"));
                v.setAddress(rs.getString("Address"));
                v.setDescription(rs.getString("Description"));
                v.setMaxOccupancy(rs.getInt("MaxOccupancy"));
                v.setAmenities(rs.getString("Amenities"));
                v.setImage(rs.getString("image"));
                v.setCategories(rs.getString("Categories"));
                v.setPrice(rs.getDouble("price"));
                v.setCid(rs.getString("cid"));
                list.add(v);
            }
        } catch (SQLException ex) {
            Logger.getLogger(VillasDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void deleteVillas(String pid) {
        try {
            String sql = "delete from Villas\n"
                    + "where VillaID = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, pid);
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(VillasDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insertVillas(String name, String image, String price, String address,
            String description, String category, String maxOccupancy, String amenities, String cid) {

        try {
            String sql = "INSERT INTO [dbo].[Villas] "
                    + "([VillaName], [image], [price], [Address], [Description], [Categories], [MaxOccupancy], [Amenities],[cid]) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, address);
            ps.setString(5, description);
            ps.setString(6, category);
            ps.setString(7, maxOccupancy);
            ps.setString(8, amenities);
            ps.setString(9, cid);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(VillasDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void editVillas(String name, String image, String price, String address,
            String description, String category, String maxOccupancy, String amenities, String pcid, String pid) {
        try {
            String sql = "UPDATE [dbo].[Villas]"
                    + "   SET [VillaName] = ?"
                    + "      ,[image] = ?"
                    + "      ,[price] = ?"
                    + "      ,[Address] = ?"
                    + "      ,[Description] = ?"
                    + "      ,[Categories] = ?"
                    + "      ,[MaxOccupancy] = ?" // Updated column name
                    + "      ,[Amenities] = ?" // Updated column name
                    + "      ,[cid] = ?"
                    + " WHERE VillaID =?";

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, address);
            ps.setString(5, description);
            ps.setString(6, category);
            ps.setString(7, maxOccupancy); // Updated parameter name
            ps.setString(8, amenities); // Updated parameter name
            ps.setString(9, pcid);
            ps.setString(10, pid);

            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(VillasDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        VillasDBContext v = new VillasDBContext();
//        v.editVillas("Hieu", "", "0", "", "", "Villa House","6","Tien Ich", "2", "1");
        List<Villas> list = v.getAllVillas();
        for (Villas v1 : list) {
            System.out.println(v1);
        }
    }

}

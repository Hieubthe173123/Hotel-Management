/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Bookings;
import entity.Villas;
import entity.catetienich;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class BookingsDBContext extends DBContext {

    public List<Bookings> getAllBookings() {
        List<Bookings> list = new ArrayList<>();
        try {
            String sql = "SELECT TOP (1000) [BookingsID]\n"
                    + "      ,[CustomerID]\n"
                    + "      ,[VillaID]\n"
                    + "      ,[CheckinDate]\n"
                    + "      ,[CheckoutDate]\n"
                    + "      ,[CustomerName]\n"
                    + "      ,[VillaName]\n"
                    + "  FROM [villa].[dbo].[Bookings]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Bookings v = new Bookings();
                v.setId(rs.getInt("VillaID"));
                v.setCustomerID(rs.getInt("CustomerID"));
                v.setVillaID(rs.getInt("VillaID"));
                v.setCheckinDate(rs.getString("CheckinDate"));
                v.setCheckoutDate(rs.getString("CheckoutDate"));
                v.setCustomerName(rs.getString("CustomerName"));
                v.setVillaname(rs.getString("VillaName"));
                list.add(v);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookingsDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public static void main(String[] args) {
        BookingsDBContext ct = new BookingsDBContext();
        List<Bookings> list = ct.getAllBookings();
        for (Bookings c : list) {
            System.out.println(c);
        }
    }

    public void insertBookings(String vcheckinDate, String vcheckoutDate, String vcustomer, String vvillaname) {
        String sql = "INSERT INTO [dbo].[Bookings] (\n"
                + "  [CheckinDate],\n"
                + "  [CheckoutDate],\n"
                + "  [CustomerName],\n"
                + "  [VillaName]\n"
                + ") VALUES (?, ?, ?, ?)";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, vcheckinDate);
            ps.setString(2, vcheckoutDate);
            ps.setString(3, vcustomer);
            ps.setString(4, vvillaname);

            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(BookingsDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

  
}

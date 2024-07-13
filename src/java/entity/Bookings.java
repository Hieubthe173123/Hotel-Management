/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;


/**
 *
 * @author admin
 */
public class Bookings {
    private int id;
    private String CheckinDate;
    private String CheckoutDate;
    private String CustomerName;
    private String Villaname;
    private int VillaID;
    private int CustomerID;

    public Bookings() {
    }

    public Bookings(int id, String CheckinDate, String CheckoutDate, String CustomerName, String Villaname, int VillaID, int CustomerID) {
        this.id = id;
        this.CheckinDate = CheckinDate;
        this.CheckoutDate = CheckoutDate;
        this.CustomerName = CustomerName;
        this.Villaname = Villaname;
        this.VillaID = VillaID;
        this.CustomerID = CustomerID;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCheckinDate() {
        return CheckinDate;
    }

    public void setCheckinDate(String CheckinDate) {
        this.CheckinDate = CheckinDate;
    }

    public String getCheckoutDate() {
        return CheckoutDate;
    }

    public void setCheckoutDate(String CheckoutDate) {
        this.CheckoutDate = CheckoutDate;
    }

    public String getCustomerName() {
        return CustomerName;
    }

    public void setCustomerName(String CustomerName) {
        this.CustomerName = CustomerName;
    }

    public String getVillaname() {
        return Villaname;
    }

    public void setVillaname(String Villaname) {
        this.Villaname = Villaname;
    }

    public int getVillaID() {
        return VillaID;
    }

    public void setVillaID(int VillaID) {
        this.VillaID = VillaID;
    }

    public int getCustomerID() {
        return CustomerID;
    }

    public void setCustomerID(int CustomerID) {
        this.CustomerID = CustomerID;
    }

    @Override
    public String toString() {
        return "Bookings{" + "id=" + id + ", CheckinDate=" + CheckinDate + ", CheckoutDate=" + CheckoutDate + ", CustomerName=" + CustomerName + ", Villaname=" + Villaname + ", VillaID=" + VillaID + ", CustomerID=" + CustomerID + '}';
    }

   


   

    

    
    
}

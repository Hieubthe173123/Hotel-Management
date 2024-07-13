/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author admin
 */
public class tienich {
    private int tienichID;
    private String tentienich;
    private double price;
    private String categoriesTi;
    private String image;
    private String catid;

    public tienich() {
    }

    public tienich(int tienichID, String tentienich, double price, String categoriesTi,String image,String catid) {
        this.tienichID = tienichID;
        this.tentienich = tentienich;
        this.price = price;
        this.categoriesTi = categoriesTi;
        this.image = image;
        this.catid = catid;
    }

    public int getTienichID() {
        return tienichID;
    }

    public void setTienichID(int tienichID) {
        this.tienichID = tienichID;
    }

    public String getTentienich() {
        return tentienich;
    }

    public void setTentienich(String tentienich) {
        this.tentienich = tentienich;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCategoriesTi() {
        return categoriesTi;
    }

    public void setCategoriesTi(String categoriesTi) {
        this.categoriesTi = categoriesTi;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCatid() {
        return catid;
    }

    public void setCatid(String catid) {
        this.catid = catid;
    }

    @Override
    public String toString() {
        return "tienich{" + "tienichID=" + tienichID + ", tentienich=" + tentienich + ", price=" + price + ", categoriesTi=" + categoriesTi + ", image=" + image + ", catid=" + catid + '}';
    }

   
    
    
}

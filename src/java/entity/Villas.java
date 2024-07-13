/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author admin
 */
public class Villas {

    private int id;
    private String name;
    private String address;
    private String description;
    private int maxOccupancy;
    private String amenities;
    private String image; 
    private String categories;
    private double price;
    private String cid;
    public Villas() {
    }
    
    

    public Villas(int id, String name, String address, String description, int maxOccupancy, String amenities, String image,String categories, double price,String cid) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.description = description;
        this.maxOccupancy = maxOccupancy;
        this.amenities = amenities;
        this.image = image;
        this.categories = categories;
        this.price = price;
        this.cid = cid;
               
    }

    
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getMaxOccupancy() {
        return maxOccupancy;
    }

    public void setMaxOccupancy(int maxOccupancy) {
        this.maxOccupancy = maxOccupancy;
    }

    public String getAmenities() {
        return amenities;
    }

    public void setAmenities(String amenities) {
        this.amenities = amenities;
    }

    public String getCategories() {
        return categories;
    }

    public void setCategories(String categories) {
        this.categories = categories;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    @Override
    public String toString() {
        return "Villas{" + "id=" + id + ", name=" + name + ", address=" + address + ", description=" + description + ", maxOccupancy=" + maxOccupancy + ", amenities=" + amenities + ", image=" + image + ", categories=" + categories + ", price=" + price + ", cid=" + cid + '}';
    }

    
    

   

 
    

}

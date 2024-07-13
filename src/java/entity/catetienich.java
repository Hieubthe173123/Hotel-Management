/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author admin
 */
public class catetienich {
    private int catid;
    private String catiname;

    public catetienich() {
    }

    public catetienich(int catid, String catiname) {
        this.catid = catid;
        this.catiname = catiname;
    }

    public int getCatid() {
        return catid;
    }

    public void setCatid(int catid) {
        this.catid = catid;
    }

    public String getCatiname() {
        return catiname;
    }

    public void setCatiname(String catiname) {
        this.catiname = catiname;
    }

    @Override
    public String toString() {
        return "catetienich{" + "catid=" + catid + ", catiname=" + catiname + '}';
    }
    
}

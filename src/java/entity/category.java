/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;


public class category {
    private int cid;
    private String cname;

    public category(int cid, String cname) {
        this.cid = cid;
        this.cname = cname;
    }

    public category() {
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    @Override
    public String toString() {
        return "category{" + "cid=" + cid + ", cname=" + cname + '}';
    }
    
}

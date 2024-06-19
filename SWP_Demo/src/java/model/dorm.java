/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author lenovo
 */
public class dorm {
    int dormID;
    String dormName;

    public dorm(int dormID, String dormName) {
        this.dormID = dormID;
        this.dormName = dormName;
    }

    public dorm() {
    }

    public int getDormID() {
        return dormID;
    }

    public void setDormID(int dormID) {
        this.dormID = dormID;
    }

    public String getDormName() {
        return dormName;
    }

    public void setDormName(String dormName) {
        this.dormName = dormName;
    }

    @Override
    public String toString() {
        return "dorm{" + "dormID=" + dormID + ", dormName=" + dormName + '}';
    }
    
          
}

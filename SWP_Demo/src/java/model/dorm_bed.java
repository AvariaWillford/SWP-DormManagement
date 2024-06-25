/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class dorm_bed {
    private int dormID;
    private String dormName;
    private int totalRoom;
    private int availableBed;

    public dorm_bed() {
    }

    public dorm_bed(int dormID, String dormName, int totalRoom, int availableBed) {
        this.dormID = dormID;
        this.dormName = dormName;
        this.totalRoom = totalRoom;
        this.availableBed = availableBed;
    }

    public int getDormID() {
        return dormID;
    }

    public String getDormName() {
        return dormName;
    }

    public int getTotalRoom() {
        return totalRoom;
    }

    public int getAvailableBed() {
        return availableBed;
    }

    public void setDormID(int dormID) {
        this.dormID = dormID;
    }

    public void setDormName(String dormName) {
        this.dormName = dormName;
    }

    public void setTotalRoom(int totalRoom) {
        this.totalRoom = totalRoom;
    }

    public void setAvailableBed(int availableBed) {
        this.availableBed = availableBed;
    }

    @Override
    public String toString() {
        return "dorm_bed{" + "dormID=" + dormID + ", dormName=" + dormName + ", totalRoom=" + totalRoom + ", availableBed=" + availableBed + '}';
    }
    
    
}

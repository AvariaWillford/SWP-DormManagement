/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class bedByDorm {
     int bedID;
    int status;
    Float price;
    String roomName;
    int emptyBeds,totalBeds;

    public bedByDorm() {
    }

    public bedByDorm(int bedID, int status, Float price, String roomName, int emptyBeds, int totalBeds) {
        this.bedID = bedID;
        this.status = status;
        this.price = price;
        this.roomName = roomName;
        this.emptyBeds = emptyBeds;
        this.totalBeds = totalBeds;
    }

    public int getBedID() {
        return bedID;
    }

    public int getStatus() {
        return status;
    }

    public Float getPrice() {
        return price;
    }

    public String getRoomName() {
        return roomName;
    }

    public int getEmptyBeds() {
        return emptyBeds;
    }

    public int getTotalBeds() {
        return totalBeds;
    }

    public void setBedID(int bedID) {
        this.bedID = bedID;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public void setEmptyBeds(int emptyBeds) {
        this.emptyBeds = emptyBeds;
    }

    public void setTotalBeds(int totalBeds) {
        this.totalBeds = totalBeds;
    }

    @Override
    public String toString() {
        return "bedByDorm{" + "bedID=" + bedID + ", status=" + status + ", price=" + price + ", roomName=" + roomName + ", emptyBeds=" + emptyBeds + ", totalBeds=" + totalBeds + '}';
    }
    
    
}

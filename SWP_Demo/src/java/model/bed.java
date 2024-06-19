/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author lenovo
 */
public class bed {
    int bedID;
    int status;
    Float price;
    int roomID;

    public bed(int bedID, int status, Float price, int roomID) {
        this.bedID = bedID;
        this.status = status;
        this.price = price;
        this.roomID = roomID;
    }

    public bed() {
    }

    public int getBedID() {
        return bedID;
    }

    public void setBedID(int bedID) {
        this.bedID = bedID;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public int getRoomID() {
        return roomID;
    }

    public void setRoomID(int roomID) {
        this.roomID = roomID;
    }

    @Override
    public String toString() {
        return "bed{" + "bedID=" + bedID + ", status=" + status + ", price=" + price + ", roomID=" + roomID + '}';
    }
    
}
